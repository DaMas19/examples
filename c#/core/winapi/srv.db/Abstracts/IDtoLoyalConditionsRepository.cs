using ND.iLS.admin.db.Filters.Loyal;
using ND.iLS.admin.db.Models.Loyal;

namespace ND.iLS.admin.db.Abstracts.Loyal
{
    /// <summary>
    /// Interface IDtoLoyalСonditionsRepository
    /// Implements the <see cref="ND.iLS.admin.db.Abstracts.IDtoBaseCud1Repository{DtoLoyalСonditions}" />
    /// Implements the <see cref="ND.iLS.admin.db.Abstracts.IDtoBaseR1Repository{DtoLoyalСonditionsFull, DtoLoyalСonditionsFilter}" />
    /// </summary>
    /// <seealso cref="ND.iLS.admin.db.Abstracts.IDtoBaseCud1Repository{DtoLoyalСonditions}" />
    /// <seealso cref="ND.iLS.admin.db.Abstracts.IDtoBaseR1Repository{DtoLoyalСonditionsFull, DtoLoyalСonditionsFilter}" />
    public interface IDtoLoyalConditionsRepository : IDtoBaseCud1Repository<DtoLoyalConditions>, 
        IDtoBaseR1Repository<DtoLoyalConditionsFull, DtoLoyalConditionsFilter>
    {
    }
}
