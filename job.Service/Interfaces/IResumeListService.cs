
using job.Service.Dtos.ResumeList;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Interfaces
{
    public interface IResumeListService
    {
        Task<int> AddOrEditAsync(ResumeListDto input);

        Task<ResumeListDto> GetAsync(string email);
    }
}
