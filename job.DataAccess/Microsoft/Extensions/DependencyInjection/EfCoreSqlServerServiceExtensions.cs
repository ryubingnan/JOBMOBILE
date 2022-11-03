using job.DataAccess.DbContexts;
using job.DataAccess.Repositories.Implements;
using job.DataAccess.Repositories.Interfaces;

using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace Microsoft.Extensions.DependencyInjection
{
    public static class EfCoreSqlServerServiceExtensions
    {
        public static IServiceCollection AddSqlServer(this IServiceCollection services, IConfiguration configuration)
        {
           
            services.AddDbContextPool<OADbContext>(options =>
            {
                var connStr = configuration.GetConnectionString("OA");
                options.UseSqlServer(connStr);
            });
            services.AddDbContextPool<JobDbContext>(options =>
            {
                var connStr = configuration.GetConnectionString("JOB");
                options.UseSqlServer(connStr);
            });

            services.AddTransient<OADbContext>();
            services.AddDefaultRepositories<OADbContext>();
            services.AddTransient<JobDbContext>();
            services.AddDefaultRepositories<JobDbContext>();

            services.AddCustomRepository<IUserRepository, UserRepository>();
            

            services.AddCustomRepository<IJobInfoListRepository, JobInfoListRepository>();
            services.AddCustomRepository<IAskRepository, AskRepository>();
            services.AddCustomRepository<IResumeListRepository, ResumeListRepository>();
            services.AddCustomRepository<INewsListRepository, NewsListRepository>();
            services.AddCustomRepository<ICompanyListRepository, CompanyListRepository>();
            services.AddCustomRepository < IInterviewListRepository, InterviewListRepository>();

            return services;
        }
    }
}