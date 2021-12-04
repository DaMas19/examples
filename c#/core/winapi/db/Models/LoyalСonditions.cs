using ND.iLS.db.Models.Core;
using ND.iLS.db.Types.Core;
using ND.iLS.db.Types.Loyal;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ND.iLS.db.Models.Loyal
{
    /// <summary>
    /// Элементарные условия
    /// </summary>
    [Table("loyal_conditions", Schema = "loyal")]
    public class LoyalConditions
    {
        /// <summary>
        /// Идентификатор
        /// </summary>
        [Key]
        [Column("loyal_condition_id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int LoyalConditionId { get; set; }

        /// <summary>
        /// Наименование
        /// </summary>
        [Column("name")]
        public string Name { get; set; }

        /// <summary>
        /// Идентификатор (Акции)
        /// </summary>
        [Column("loyal_action_id")]
        public int LoyalActionId { get; set; }

        /// <exclude />
        public LoyalActions LoyalAction { get; set; }

        /// <summary>
        /// Идентификатор (Тип параметра в элементарном условии)
        /// </summary>
        [Column("loyal_condition_type_id")]
        public EnLoyalConditionType LoyalConditionTypeId { get; set; }

        /// <exclude />
        public LoyalConditionTypes LoyalConditionType { get; set; }

        /// <summary>
        /// Идентификатор сущности
        /// </summary>
        [Column("entity_id")]
        public int? EntityId { get; set; }

        /// <summary>
        /// Идентификатор сущности(контроль)
        /// </summary>
        [Column("entity_control_id")]
        public int? EntityControlId { get; set; }

        /// <summary>
        /// Идентификатор (Типа сравнения)
        /// </summary>
        [Column("comparison_type_id")]
        public EnComparisonType ComparisonTypeId { get; set; }

        /// <exclude />
        public ComparisonTypes ComparisonType { get; set; }

        /// <summary>
        /// Значение для сравнения
        /// </summary>
        [Column("comparison_value")]
        public decimal ComparisonValue { get; set; }


        /// <exclude />
        public List<LoyalLogicCells> LoyalLogicCellA1 { get; set; }

        /// <exclude />
        public List<LoyalLogicCells> LoyalLogicCellB1 { get; set; }

    }
}
