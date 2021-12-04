using FluentValidation;
using ND.iLS.admin.db.Models.Loyal;

namespace ND.iLS.admin.srv.Validations.Loyal
{
    /// <summary>
    /// Class DtoLoyalСonditionsValidator.
    /// Implements the <see cref="ND.iLS.admin.srv.Validations.BaseValidator{DtoLoyalСonditions}" />
    /// </summary>
    /// <seealso cref="ND.iLS.admin.srv.Validations.BaseValidator{DtoLoyalСonditions}" />
    public class DtoLoyalConditionsValidator : BaseValidator<DtoLoyalConditions>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DtoLoyalConditionsValidator"/> class.
        /// </summary>
        public DtoLoyalConditionsValidator()
        {
            RuleFor(x => x.LoyalConditionId)
                .NotNull()
                .WithName(x => JsonFieldName(nameof(x.LoyalConditionId)));

            RuleFor(x => x.Name)
                .Cascade(CascadeMode.Stop)
                .NotNull()
                .Length(1, 100)
                .WithName(x => JsonFieldName(nameof(x.Name)));

            RuleFor(x => x.LoyalActionId)
                .Cascade(CascadeMode.Stop)
                .NotNull()
                .GreaterThanOrEqualTo(0)
                .WithName(x => JsonFieldName(nameof(x.LoyalActionId)));

            RuleFor(x => x.LoyalConditionTypeId)
                .Cascade(CascadeMode.Stop)
                .NotNull()
                .IsInEnum()
                .WithName(x => JsonFieldName(nameof(x.LoyalConditionTypeId)));

            RuleFor(x => x.ComparisonTypeId)
                .Cascade(CascadeMode.Stop)
                .NotNull()
                .IsInEnum()
                .WithName(x => JsonFieldName(nameof(x.ComparisonTypeId)));

            RuleFor(x => x.ComparisonValue)
                .Cascade(CascadeMode.Stop)
                .NotNull()
                .GreaterThanOrEqualTo(0)
                .ScalePrecision(2, 15)
                .WithName(x => JsonFieldName(nameof(x.ComparisonValue)));

        }
    }
}
