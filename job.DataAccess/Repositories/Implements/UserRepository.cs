using job.DataAccess.DbContexts;
using job.DataAccess.Models;
using job.DataAccess.Repositories.Abstract;
using job.DataAccess.Repositories.Interfaces;

namespace job.DataAccess.Repositories.Implements
{
    public class UserRepository : EfCoreRepository<OADbContext, User>, IUserRepository
    {
        public UserRepository(OADbContext dbContext) : base(dbContext)
        {
        }
    }
}
