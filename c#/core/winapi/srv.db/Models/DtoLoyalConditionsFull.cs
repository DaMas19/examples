using System;
using ND.iLS.admin.db.Models.Core;
using ND.iLS.core.Code;
using Newtonsoft.Json;

namespace ND.iLS.admin.db.Models.Loyal
{
    /// <summary>
    /// Элементарные условия
    /// </summary>    
    public class DtoLoyalConditionsFull
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
        /// Тип параметра в элементарном условии
        /// </summary>
        [JsonProperty("loyal_condition_type")]
        public DtoLoyalConditionTypes LoyalConditionType { get; set; }

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
        /// Типа сравнения
        /// </summary>
        [JsonProperty("comparison_type")]
        public DtoComparisonTypes ComparisonType { get; set; }

        /// <summary>
        /// Значение для сравнения
        /// </summary>
        [JsonProperty("comparison_value")]
        [JsonConverter(typeof(DecimalFormatThreeJsonConverter))]
        public decimal ComparisonValue { get; set; }

    }
}