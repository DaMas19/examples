using Microsoft.EntityFrameworkCore;

namespace ND.iLS.db
{
    /// <summary>
    /// Class SuDbContext.
    /// Implements the <see cref="Microsoft.EntityFrameworkCore.DbContext" />
    /// </summary>
    /// <seealso cref="Microsoft.EntityFrameworkCore.DbContext" />
    public class IlsDbContext : DbContext
    {
        /// <summary>
        /// Элементарные условия
        /// </summary>
        public DbSet<LoyalConditions> LoyalConditions { get; set; }

        /// <exclude />
        public IlsDbContext(DbContextOptions<IlsDbContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
}
