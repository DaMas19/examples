using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using Microsoft.EntityFrameworkCore;
using ND.iLS.admin.core.Code;
using ND.iLS.admin.db.Abstracts.Loyal;
using ND.iLS.admin.db.Filters.Loyal;
using ND.iLS.admin.db.Models.Core;
using ND.iLS.admin.db.Models.Loyal;
using ND.iLS.core.Models;
using ND.iLS.db;
using ND.iLS.db.Models.Loyal;

namespace ND.iLS.admin.db.Repository.Loyal
{
    /// <summary>
    /// Class DtoLoyalСonditionsRepository.
    /// Implements the <see cref="ND.iLS.admin.db.Repository.DtoRepositoryBase2{DtoLoyalActions}" />
    /// Implements the <see cref="ND.iLS.admin.db.Abstracts.Loyal.IDtoLoyalConditionsRepository" />
    /// </summary>
    /// <seealso cref="ND.iLS.admin.db.Repository.DtoRepositoryBase2{DtoLoyalActions}" />
    /// <seealso cref="ND.iLS.admin.db.Abstracts.Loyal.IDtoLoyalConditionsRepository" />
    public class DtoLoyalConditionsRepository : DtoRepositoryBase2<DtoLoyalActions>, IDtoLoyalConditionsRepository
    {
        #region Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="DtoLoyalConditionsRepository"/> class.
        /// </summary>
        /// <param name="db">The database.</param>
        /// <param name="mapper">The mapper.</param>
        public DtoLoyalConditionsRepository(IlsDbContext db, IMapper mapper) : base(db, mapper) { }
        #endregion

        /// <summary>
        /// Adds the asynchronous.
        /// </summary>
        /// <param name="item">The item.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>Task&lt;System.ValueTuple&lt;ResultObject, DtoLoyalСonditions&gt;&gt;.</returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public async Task<(ResultObject result, DtoLoyalConditions item)> AddAsync(DtoLoyalConditions item, CancellationToken ct = default)
        {
            try
            {
                if (await Db.LoyalActions.FirstOrDefaultAsync(x => x.LoyalActionId == item.LoyalActionId, cancellationToken: ct) == null)
                {
                    return (new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.LoyalActions), $"'{JsonFieldName(nameof(item.LoyalActionId))}'"), null);
                }

                if (await Db.LoyalConditionTypes.FirstOrDefaultAsync(x => x.LoyalConditionTypeId == item.LoyalConditionTypeId, cancellationToken: ct) == null)
                {
                    return (new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.LoyalConditionTypes), $"'{JsonFieldName(nameof(item.LoyalConditionTypeId))}'"), null);
                }

                if (await Db.ComparisonTypes.FirstOrDefaultAsync(x => x.ComparisonTypeId == item.ComparisonTypeId, cancellationToken: ct) == null)
                {
                    return (new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.ComparisonTypes), $"'{JsonFieldName(nameof(item.ComparisonTypeId))}'"), null);
                }

                item.LoyalConditionId = 0;

                var data = Mapper.Map<LoyalConditions>(item);
                await Db.LoyalConditions.AddAsync(data, ct);
                await Db.SaveChangesAsync(ct);

                return (new ResultObject(ResultCode.Ok), Mapper.Map<DtoLoyalConditions>(data));
            }
            catch (Exception e)
            {
                return (new ResultObject(ResultCode.Exception, e.Message), null);
            }
        }

        /// <summary>
        /// Updates the asynchronous.
        /// </summary>
        /// <param name="item">The item.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>Task&lt;System.ValueTuple&lt;ResultObject, DtoLoyalСonditions&gt;&gt;.</returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public async Task<(ResultObject result, DtoLoyalConditions item)> UpdateAsync(DtoLoyalConditions item, CancellationToken ct = default)
        {
            try
            {
                if (await Db.LoyalConditionTypes.FirstOrDefaultAsync(x => x.LoyalConditionTypeId == item.LoyalConditionTypeId, cancellationToken: ct) == null)
                {
                    return (new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.LoyalConditionTypes), $"'{JsonFieldName(nameof(item.LoyalConditionTypeId))}'"), null);
                }

                if (await Db.ComparisonTypes.FirstOrDefaultAsync(x => x.ComparisonTypeId == item.ComparisonTypeId, cancellationToken: ct) == null)
                {
                    return (new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.ComparisonTypes), $"'{JsonFieldName(nameof(item.ComparisonTypeId))}'"), null);
                }

                var data = await Db.LoyalConditions.FindAsync(item.LoyalConditionId);
                if (data == null)
                {
                    return (new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.LoyalConditions),
                        $"'{JsonFieldName(nameof(item.LoyalConditionId))}'"), null);
                }

                item.LoyalActionId = data.LoyalActionId;
                Mapper.Map(item, data);

                await Db.SaveChangesAsync(ct);

                return (new ResultObject(ResultCode.Ok), Mapper.Map<DtoLoyalConditions>(data));
            }
            catch (Exception e)
            {
                return (new ResultObject(ResultCode.Exception, e.Message), null);
            }
        }

        /// <summary>
        /// Deletes the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>Task&lt;ResultObject&gt;.</returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public async Task<ResultObject> DeleteAsync(int id, CancellationToken ct = default)
        {
            try
            {
                var item = await Db.LoyalConditions.FindAsync(id);

                if (item == null)
                {
                    return new ResultObject(ResultCode.Error, "DataNotFoundDb", nameof(Db.LoyalConditions),
                        $"'{JsonFieldName(nameof(item.LoyalConditionId))}'");
                }

                Db.LoyalConditions.Remove(item);
                await Db.SaveChangesAsync(ct);

                return new ResultObject(ResultCode.Ok);
            }
            catch (Exception e)
            {
                return new ResultObject(ResultCode.Exception, e.Message);
            }
        }

        /// <summary>
        /// get all as an asynchronous operation.
        /// </summary>
        /// <param name="filter">The filter.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>Task&lt;System.ValueTuple&lt;ResultObject, IEnumerable&lt;DtoLoyalСonditionsFull&gt;&gt;&gt;.</returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public async Task<(ResultObject result, IEnumerable<DtoLoyalConditionsFull> item)> GetAllAsync(DtoLoyalConditionsFilter filter, CancellationToken ct = default)
        {
            try
            {
                var statement = Db.LoyalConditions.AsQueryable();

                statement = statement.Where(x => x.LoyalActionId == filter.LoyalActionId);

                var item =
                    from st in statement
                    join lct in Db.LoyalConditionTypes on st.LoyalConditionTypeId equals lct.LoyalConditionTypeId
                    join ctp in Db.ComparisonTypes on st.ComparisonTypeId equals ctp.ComparisonTypeId

                    select new DtoLoyalConditionsFull
                    {
                        LoyalConditionId = st.LoyalConditionId,
                        Name = st.Name,
                        LoyalActionId = st.LoyalActionId,
                        EntityId = st.EntityId,
                        EntityControlId = st.EntityControlId,
                        ComparisonValue = st.ComparisonValue,

                        LoyalConditionType = Mapper.Map<DtoLoyalConditionTypes>(lct),
                        ComparisonType = Mapper.Map<DtoComparisonTypes>(ctp),
                    };

                var data = await item.ToArrayAsync(ct);

                return (new ResultObject(ResultCode.Ok), data);
            }
            catch (Exception e)
            {
                return (new ResultObject(ResultCode.Exception, e.Message), null);
            }
        }
    }
}
