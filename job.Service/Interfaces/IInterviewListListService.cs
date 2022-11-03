using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Dtos.AskList;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Interfaces
{
    public interface IInterviewListService
    {

        Task<int> AddOrEditAsync(InterviewListDto input);

        Task<IEnumerable<InterviewListDto>> GetListAsync();

    }
}
