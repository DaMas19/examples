using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Net.Mime;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Localization;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using ND.iLS.admin.db.Abstracts.Loyal;
using ND.iLS.admin.db.Filters.Loyal;
using ND.iLS.admin.db.Models.Loyal;
using ND.iLS.admin.srv.Abstracts;
using ND.iLS.admin.srv.Controllers.Base;
using ND.iLS.admin.srv.Models;
using ND.iLS.admin.srv.Validations.Filter.Loyal;
using ND.iLS.admin.srv.Validations.Loyal;

namespace ND.iLS.admin.srv.Controllers.Loyal
{
    /// <summary>
    /// Class LoyalСonditionsController.
    /// Implements the <see cref="ND.iLS.admin.srv.Controllers.Base.CustomBaseDtoCruidController{DtoLoyalСonditions, DtoLoyalСonditionsFull, DtoLoyalСonditionsFilter}" />
    /// </summary>
    /// <seealso cref="ND.iLS.admin.srv.Controllers.Base.CustomBaseDtoCruidController{DtoLoyalСonditions, DtoLoyalСonditionsFull, DtoLoyalСonditionsFilter}" />
    [ApiController]
    [ApiVersion("1.0")]
    [Route("api/admin/v{version:apiVersion}/loyal/conditions")]
    [Produces(MediaTypeNames.Application.Json)]
    public class LoyalConditionsController : CustomBaseDtoCruidController<DtoLoyalConditions, DtoLoyalConditionsFull, DtoLoyalConditionsFilter>
    {
        #region Private-Members
        /// <summary>
        /// The repository
        /// </summary>
        private readonly IDtoLoyalСonditionsRepository _repository;
        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="LoyalConditionsController" /> class.
        /// </summary>
        /// <param name="logger">The logger.</param>
        /// <param name="options">The options.</param>
        /// <param name="localizer">The localizer.</param>
        /// <param name="cacheApp">The cache application.</param>
        /// <param name="repository">The repository.</param>
        public LoyalConditionsController(ILogger<LoyalConditionsController> logger, IOptions<AppOptions> options,
            IStringLocalizer<SharedResource> localizer, IAppCache cacheApp, IDtoLoyalСonditionsRepository repository)
            : base(logger, options, localizer, cacheApp, repository, repository)
        {
            _repository = repository;
        }
        #endregion

        /// <summary>
        /// Elementary conditions get all
        /// </summary>
        /// <param name="filter">The filter.</param>
        /// <returns>Task&lt;ActionResult&lt;ResponseObject&lt;IEnumerable&lt;DtoLoyalСonditionsFull&gt;&gt;&gt;&gt;.</returns>
        /// <remarks>
        /// Элементарные условия
        /// </remarks>        
        [Authorize(Policy = SrvAuthorizationPolicy.JUNIOR_MANAGERS)]
        [ProducesResponseType(typeof(ResponseObject<IEnumerable<DtoLoyalConditionsFull>>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status401Unauthorized)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status500InternalServerError)]
        [HttpPost("get/all")]
        public async Task<ActionResult<ResponseObject<IEnumerable<DtoLoyalConditionsFull>>>> GetAllAsync([FromBody] RequestFilter<DtoLoyalConditionsFilter> filter)
        {
            return await GetAllDataAsync(filter);
        }

        /// <summary>
        /// Elementary condition add
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>Task&lt;ActionResult&lt;ResponseObject&lt;DtoLoyalСonditions&gt;&gt;&gt;.</returns>
        /// <remarks>
        /// Добавить элементарное условие
        /// </remarks>
        [Authorize(Policy = SrvAuthorizationPolicy.MANAGERS)]
        [ProducesResponseType(typeof(ResponseObject<DtoLoyalConditions>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status401Unauthorized)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status500InternalServerError)]
        [HttpPost, Route("add")]
        public async Task<ActionResult<ResponseObject<DtoLoyalConditions>>> AddAsync([FromBody] RequestObject<DtoLoyalConditions> value)
        {
            return await AddAsync(value, new DtoLoyalConditionsValidator());
        }

        /// <summary>
        /// Elementary condition update
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>Task&lt;ActionResult&lt;ResponseObject&lt;DtoLoyalСonditions&gt;&gt;&gt;.</returns>
        /// <remarks>
        /// Изменить элементарное условие
        /// </remarks>        
        [Authorize(Policy = SrvAuthorizationPolicy.MANAGERS)]
        [ProducesResponseType(typeof(ResponseObject<DtoLoyalConditions>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status401Unauthorized)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status500InternalServerError)]
        [HttpPut, Route("update")]
        public async Task<ActionResult<ResponseObject<DtoLoyalConditions>>> UpdateAsync([FromBody] RequestObject<DtoLoyalConditions> value)
        {
            return await UpdateAsync(value, new DtoLoyalConditionsValidator());
        }

        /// <summary>
        /// Elementary condition delete
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <returns>Task&lt;ActionResult&lt;ResponseObject&lt;System.Object&gt;&gt;&gt;.</returns>
        /// <remarks>
        /// Удалить элементарное условие
        /// </remarks>        
        [Authorize(Policy = SrvAuthorizationPolicy.MANAGERS)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status400BadRequest)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status401Unauthorized)]
        [ProducesResponseType(typeof(ResponseObject<object>), StatusCodes.Status500InternalServerError)]
        [HttpDelete, Route("delete/{id}")]
        public async Task<ActionResult<ResponseObject<object>>> DeleteItemAsync([Required] int id)
        {
            return await DeleteAsync(id);
        }
    }
}
