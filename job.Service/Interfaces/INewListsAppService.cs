using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Dtos.NewsList;
using job.Service.Implements;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Interfaces
{
    public interface INewsListAppService
    {
        Task<PagedResultDto<NewsListDto>> GetListAsync(NewsListPagedQueryDto query);

        Task<NewsListDto> GetAsync(int id);

        Task<int> AddOrEditAsync(NewsListDto input);

        Task<bool> DeleteAsync(int id);

        Task<List<NewsListDto>> GetListAsync(string type);

        Task<IEnumerable<NewsListDto>> GetListAsync();
    }
}