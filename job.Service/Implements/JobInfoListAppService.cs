using AutoMapper;
using job.DataAccess.Models;
using job.DataAccess.Repositories.Interfaces;
using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Implements.Abstract;
using job.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Implements
{
    public class JobInfoListAppService : AppService, IJobInfoListAppService
    {
        private readonly IJobInfoListRepository _jobInfoListRepository;

        public JobInfoListAppService(IMapper mapper, IJobInfoListRepository jobInfoListRepository) : base(mapper)
        {
            _jobInfoListRepository = jobInfoListRepository;
        }

        public async Task<int> AddOrEditAsync(JobInfoListDto input)
        {
            var dto = Mapper.Map<JobInfoList>(input);
            JobInfoList jobInfoList;
            if (dto.Id > 0)
            {
                jobInfoList = await _jobInfoListRepository.UpdateAsync(dto);
            }
            else
            {
                jobInfoList = await _jobInfoListRepository.InsertAsync(dto);
            }
            return jobInfoList.Id;
        }

        public async Task<bool> DeleteAsync(int id)
        {
            var jobInfoList = await _jobInfoListRepository.GetAsync(id);
            if (jobInfoList is null) return false;
            jobInfoList.IsDelete = true;
            await _jobInfoListRepository.UpdateAsync(jobInfoList);
            return true;
        }

        public async Task<JobInfoListDto> GetAsync(int id)
        {
            var jobInfoList = await _jobInfoListRepository.GetAsync(id);

            var dto = Mapper.Map<JobInfoListDto>(jobInfoList);
            return dto;
        }

        public async Task<List<JobInfoListDto>> GetListAsync(string title)
        {
            var jobInfoLists = await _jobInfoListRepository.GetListAsync(t => t.Title == title);

            var dtos = Mapper.Map<List<JobInfoListDto>>(jobInfoLists);
            return dtos;
        }

        public async Task<PagedResultDto<JobInfoListDto>> GetListAsync(JobInfoPagedQueryDto query)
        {
            Expression<Func<JobInfoList, bool>> predicate = e => true;
            if (!string.IsNullOrEmpty(query.Title)) predicate = predicate.And(e => e.Title.Contains(query.Title));
            if (!string.IsNullOrEmpty(query.Category)) predicate = predicate.And(e => e.Category.Contains(query.Category));
            if (!string.IsNullOrEmpty(query.Workplace)) predicate = predicate.And(e => e.Workplace.Contains(query.Workplace));
            if (query.ContentCheck != null && query.ContentCheck.Count > 0)
            {
                for (int i = 0; i < query.ContentCheck.Count; i++)
                {
                    var item = query.ContentCheck[i];
                    if (i == 0)
                        predicate = predicate.And(e => e.Content.Contains(item));
                    else
                        predicate = predicate.Or(e => e.Content.Contains(item));
                }
            }

            predicate = predicate.And(t => !t.IsDelete);
            var dto = await GetListAsync<JobInfoPagedQueryDto, JobInfoList, PagedResultDto<JobInfoListDto>, JobInfoListDto>(query, _jobInfoListRepository, predicate);

            return dto;
        }
    }
}
