using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Dtos.AskList;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Interfaces
{
    public interface IAskListService
    {

        Task<int> AddOrEditAsync(AskListDto input);

        Task<IEnumerable<AskListDto>> GetListAsync();

    }
}
