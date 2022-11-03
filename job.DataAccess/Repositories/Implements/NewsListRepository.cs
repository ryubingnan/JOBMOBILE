using job.DataAccess.DbContexts;
using job.DataAccess.Models;
using job.DataAccess.Repositories.Abstract;
using job.DataAccess.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
namespace job.DataAccess.Repositories.Implements
{
    public class NewsListRepository : EfCoreRepository<JobDbContext, NewsList>, INewsListRepository
    {
        public NewsListRepository(JobDbContext dbContext) : base(dbContext)
        {
        }
    }
}
