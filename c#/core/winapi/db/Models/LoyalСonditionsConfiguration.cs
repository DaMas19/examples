using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ND.iLS.db.Models.Loyal;

namespace ND.iLS.db.Config.Loyal
{
    /// <exclude />
    public class LoyalConditionsConfiguration : IEntityTypeConfiguration<LoyalConditions>
    {
        public void Configure(EntityTypeBuilder<LoyalConditions> cfg)
        {
            cfg.HasComment("Элементарные условия");

            cfg.Property(u => u.LoyalConditionId)
                .HasComment("Идентификатор")
                ;

            cfg.Property(u => u.Name)
                .HasComment("Наименование")
                .HasColumnType("varchar(100)")
                .IsRequired();

            cfg.Property(u => u.LoyalActionId)
                .HasComment("Идентификатор (Акции)")
                ;

            cfg.Property(u => u.LoyalConditionTypeId)
                .HasComment("Идентификатор (Тип параметра в элементарном условии)")
                ;

            cfg.Property(u => u.EntityId)
                .HasComment("Идентификатор сущности")
                ;

            cfg.Property(u => u.EntityControlId)
                .HasComment("Идентификатор сущности(контроль)")
                ;

            cfg.Property(u => u.ComparisonTypeId)
                .HasComment("Идентификатор (Типа сравнения)")
                ;

            cfg.Property(u => u.ComparisonValue)
                .HasComment("Значение для сравнения")
                .HasColumnType("decimal(15,5)")
                .HasDefaultValue(0m)
                ;

            cfg.HasOne(p => p.LoyalAction)
                .WithMany(t => t.LoyalCondition)
                .OnDelete(DeleteBehavior.Cascade);

            cfg.HasOne(p => p.LoyalConditionType)
                .WithMany(t => t.LoyalCondition)
                .OnDelete(DeleteBehavior.Restrict);

            cfg.HasOne(p => p.ComparisonType)
                .WithMany(t => t.LoyalCondition)
                .OnDelete(DeleteBehavior.Restrict);

        }
    }
}
