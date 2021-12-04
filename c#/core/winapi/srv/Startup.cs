using System;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.Localization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ApiExplorer;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using ND.iLS.admin.db.Mappings;
using ND.iLS.admin.srv.Code;
using ND.iLS.admin.srv.Extensions;
using ND.iLS.admin.srv.Models;
using ND.iLS.cmd.loyal.Mappings;
using ND.iLS.core.Code;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Serialization;

namespace ND.iLS.admin.srv
{
    /// <summary>
    /// Class Startup.
    /// </summary>
    public class Startup
    {
        #region Private-Members

        /// <summary>
        /// Gets the configuration.
        /// </summary>
        /// <value>The configuration.</value>
        private IConfiguration Configuration { get; }

        /// <summary>
        /// Gets the XML comments file path.
        /// </summary>
        /// <value>The XML comments file path.</value>
        private static string XmlCommentsFilePath
        {
            get
            {
                var xmlFile = $"{Assembly.GetEntryAssembly()?.GetName().Name}.xml";
                var xmlPath = Path.Combine(CoreUtils.GetBasePath(), xmlFile);
                return xmlPath;
            }
        }

        #endregion

        /// <summary>
        /// Initializes a new instance of the <see cref="Startup"/> class.
        /// </summary>
        /// <param name="configuration">The configuration.</param>
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddAutoMapper(typeof(AutomapperProfile), typeof(AutomapperProfileLoyal));

            services.AddAppOptions(Configuration);
            services.AddDbContexts(Configuration);
            services.AddCash(Configuration);
            services.AddServices(Configuration);
            services.AddCompression();
            services.AddAntiforgery(options => { options.HeaderName = "X-XSRF-TOKEN"; });
            services.TryAddTransient<IHttpContextAccessor, HttpContextAccessor>();
            services.AddAuth(Configuration);
            services.AddHsts(options =>
            {
                options.Preload = true;
                options.IncludeSubDomains = true;
                options.MaxAge = TimeSpan.FromDays(60);
            });
            services.AddVersioning();
            services.AddSwagger(XmlCommentsFilePath);
            services
                .AddControllers(
                        options =>
                        {
                            options.AllowEmptyInputInBodyModelBinding = true;
                        }
                    )
                .AddNewtonsoftJson(options =>
                {
                    options.SerializerSettings.ContractResolver = new DefaultContractResolver
                    {
                        NamingStrategy = new SnakeCaseNamingStrategy()
                    };
                    options.SerializerSettings.Formatting = Formatting.Indented; // Format JSON
                    options.SerializerSettings.DateTimeZoneHandling = DateTimeZoneHandling.Local;
                    options.SerializerSettings.DateFormatHandling = DateFormatHandling.IsoDateFormat;
                    options.SerializerSettings.Converters.Clear();
                    options.SerializerSettings.Converters.Add(new IsoDateTimeConverter
                    {
                        DateTimeStyles = DateTimeStyles.AdjustToUniversal,
                        DateTimeFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ssK"
                    });
                })
                .ConfigureApiBehaviorOptions(options =>
                {
                    options.SuppressMapClientErrors = true;
                    options.InvalidModelStateResponseFactory = context =>
                    {
                        var message = string.Join(" | ", context.ModelState.Values
                            .SelectMany(v => v.Errors)
                            .Select(e => e.ErrorMessage));

                        return new BadRequestObjectResult(CodeUtils.GetContext(new { },
                            $"ServerError: {message}"
                            , SrvResultCode.ERROR_BAD_PARAMETER))
                        {
                            ContentTypes = { "application/problem+json", "application/problem+xml" }
                        };
                    };

                })
                .SetCompatibilityVersion(CompatibilityVersion.Version_3_0)
                .AddFluentValidation(fv =>
                {
                    fv.DisableDataAnnotationsValidation = true; // for ver. 10
                });
            services.AddLocalization(opts => { opts.ResourcesPath = "Resources"; });
            services.AddHttpsRedirection(options =>
            {
                options.RedirectStatusCode = StatusCodes.Status307TemporaryRedirect;
            });
            services.AddHostedServices();
        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory,
            IApiVersionDescriptionProvider versionProvider, IStringLocalizer<SharedResource> localizer, IOptions<AppOptions> appOptions)
        {
            app.UseStatusCodePages(
                async context =>
                {
                    var content = string.Empty;
                    if (context.HttpContext.Response.Body.CanRead)
                    {
                        using var reader = new StreamReader(context.HttpContext.Response.Body, Encoding.UTF8);
                        content = await reader.ReadToEndAsync();
                    }

                    context.HttpContext.Response.ContentType = "application/json";
                    await context.HttpContext.Response.WriteAsync(
                        JsonConvert.SerializeObject(
                            CodeUtils.GetContext(new { }, content, (uint)context.HttpContext.Response.StatusCode))
                    );
                }
            );
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler(options =>
                {
                    options.Run(async context =>
                    {
                        context.Response.StatusCode = 500;
                        context.Response.ContentType = "application/json";
                        var errorFeature = context.Features.Get<IExceptionHandlerFeature>();
                        if (errorFeature != null)
                        {
                            var logger = loggerFactory.CreateLogger("Global exception logger");
                            logger.LogError(500, errorFeature.Error, errorFeature.Error.Message);
                        }

                        await context.Response.WriteAsync(
                            JsonConvert.SerializeObject(
                                CodeUtils.GetContext(new { }, localizer["ServerError"], SrvResultCode.ERROR))
                        );
                    });
                });
                app.UseHsts();
                app.UseHttpsRedirection();
            }
            app.UseResponseCompression();
            app.UseForwardedHeaders(new ForwardedHeadersOptions
            {
                ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto
            });
            var supportedCultures = new[]
            {
                new CultureInfo("en-US"),
                new CultureInfo("en-GB"),
                new CultureInfo("en"),
                new CultureInfo("ru-RU"),
                new CultureInfo("ru"),
                new CultureInfo("uk-UA"),
                new CultureInfo("uk"),
            };

            app.UseRequestLocalization(new RequestLocalizationOptions
            {
                DefaultRequestCulture = new RequestCulture("en-US"),
                SupportedCultures = supportedCultures,
                SupportedUICultures = supportedCultures
            });
            app.UseStaticFiles();
            app.UseRouting();
            app.UseAuthentication();
            app.UseAuthorization();
            if (appOptions.Value.IsSwagger)
            {
                app.UseSwagger();
                app.UseSwaggerUI(c =>
                {
                    foreach (var description in versionProvider.ApiVersionDescriptions)
                    {
                        c.SwaggerEndpoint($"{description.GroupName}/swagger.json",
                            description.GroupName.ToUpperInvariant());
                    }
                });
            }
            app.MapWhen(x => x.Request.Path.Value != null && x.Request.Path.Value.StartsWith("/api"), builder =>
            {
                app.UseEndpoints(endpoints =>
                {
                    endpoints
                        .MapControllers()
                        ;

                    endpoints
                        .MapFallbackToController("ResourceNotFound", "Home")
                        .RequireAuthorization()
                        ;

                });
            });

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapDefaultControllerRoute();
            });
        }
    }
}
