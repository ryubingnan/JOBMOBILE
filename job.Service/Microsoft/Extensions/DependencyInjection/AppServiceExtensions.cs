using job.Service.Implements;
using job.Service.Interfaces;

using Microsoft.Extensions.DependencyInjection.Extensions;

namespace Microsoft.Extensions.DependencyInjection
{
    public static class AppServiceExtensions
    {
        public static IServiceCollection AddAppServices(this IServiceCollection services)
        {
            services.TryAddScoped<IUserAppService, UserAppService>();



            services.TryAddScoped<IJobInfoListAppService, JobInfoListAppService>();
            services.TryAddScoped<IAskListService, AskListService>();
            services.TryAddScoped<IResumeListService, ResumeListService>();
            services.TryAddScoped<INewsListAppService, NewsListAppService>();
            services.TryAddScoped<ICompanyListService, CompanyListService>();
            services.TryAddScoped<IInterviewListService, InterviewListService>();

            return services;
        }
    }
}
