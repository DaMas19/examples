using ND.iLS.core.Code;
using ND.iLS.db.Types.Core;
using ND.iLS.db.Types.Loyal;
using Newtonsoft.Json;

namespace ND.iLS.admin.db.Models.Loyal
{
    /// <summary>
    /// Элементарные условия
    /// </summary>    
    public class DtoLoyalConditions
    {
        /// <summary>
        /// Идентификатор
        /// </summary>
        [JsonProperty("id")]
        public int LoyalConditionId { get; set; }

        /// <summary>
        /// Наименование
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// Идентификатор (Акции)
        /// </summary>
        [JsonProperty("loyal_action_id")]
        public int LoyalActionId { get; set; }

        /// <summary>
        /// Идентификатор (Тип параметра в элементарном условии)
        /// </summary>
        [JsonProperty("loyal_condition_type_id")]
        public EnLoyalConditionType LoyalConditionTypeId { get; set; }

        /// <summary>
        /// Идентификатор сущности
        /// </summary>
        [JsonProperty("entity_id")]
        public int? EntityId { get; set; }

        /// <summary>
        /// Идентификатор сущности(контроль)
        /// </summary>
        [JsonProperty("entity_control_id")]
        public int? EntityControlId { get; set; }

        /// <summary>
        /// Идентификатор (Типа сравнения)
        /// </summary>
        [JsonProperty("comparison_type_id")]
        public EnComparisonType ComparisonTypeId { get; set; }

        /// <summary>
        /// Значение для сравнения
        /// </summary>
        [JsonProperty("comparison_value")]
        [JsonConverter(typeof(DecimalFormatThreeJsonConverter))]
        public decimal ComparisonValue { get; set; }

    }
}
