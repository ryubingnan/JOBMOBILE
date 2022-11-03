using AutoMapper;
using job.DataAccess.Models;
using job.DataAccess.Repositories.Interfaces;
using job.Service.Dtos.ResumeList;
using job.Service.Implements.Abstract;
using job.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Implements
{

    public class ResumeListService : AppService, IResumeListService
    {
        private readonly IResumeListRepository _resumeListRepository;

        public ResumeListService(IMapper mapper, IResumeListRepository resumeListRepository) : base(mapper)
        {
            _resumeListRepository = resumeListRepository;
        }
        public async Task<ResumeListDto> GetAsync(string email)
        {
            var jobInfoList = await _resumeListRepository.GetAsync(t => t.MemberID == email);

            var dto = Mapper.Map<ResumeListDto>(jobInfoList);
            return dto;
        }
        public async Task<int> AddOrEditAsync(ResumeListDto input)
        {
            var dto = Mapper.Map<ResumeList>(input);
            ResumeList resumeList;
            if (dto.Id > 0)
            {
                resumeList = await _resumeListRepository.UpdateAsync(dto);
            }
            else
            {
                resumeList = await _resumeListRepository.InsertAsync(dto);
            }
            return resumeList.Id;
        }
    }
}
