using AutoMapper;
using job.DataAccess.Models;
using job.DataAccess.Repositories.Interfaces;
using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Dtos.AskList;
using job.Service.Implements.Abstract;
using job.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
namespace job.Service.Implements
{
    public class InterviewListService : AppService, IInterviewListService
    {
        private readonly IInterviewListRepository _interviewListRepository;

        public InterviewListService(IMapper mapper, IInterviewListRepository interviewListRepository) : base(mapper)
        {
            _interviewListRepository = interviewListRepository;
        }

        public async Task<int> AddOrEditAsync(InterviewListDto input)
        {
            var dto = Mapper.Map<InterviewList>(input);
            InterviewList interviewList;
            if (dto.Id > 0)
            {
                interviewList = await _interviewListRepository.UpdateAsync(dto);
            }
            else
            {
                interviewList = await _interviewListRepository.InsertAsync(dto);
            }
            return interviewList.Id;
        }

        public async Task<IEnumerable<InterviewListDto>> GetListAsync()
        {
            var asklists = await _interviewListRepository.GetListAsync(u => true);

            return Mapper.Map<IEnumerable<InterviewListDto>>(asklists);

        }


    }
}
