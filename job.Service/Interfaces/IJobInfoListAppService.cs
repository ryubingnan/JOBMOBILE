using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Interfaces
{
    public interface IJobInfoListAppService
    {
        Task<PagedResultDto<JobInfoListDto>> GetListAsync(JobInfoPagedQueryDto query);

        Task<JobInfoListDto> GetAsync(int id);

        Task<int> AddOrEditAsync(JobInfoListDto input);

        Task<bool> DeleteAsync(int id);

        Task<List<JobInfoListDto>> GetListAsync(string type);
    }
}
