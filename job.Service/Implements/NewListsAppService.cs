using AutoMapper;
using job.DataAccess.Models;
using job.DataAccess.Repositories.Interfaces;
using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Dtos.NewsList;
using job.Service.Implements.Abstract;
using job.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace job.Service.Implements
{
   public class NewsListAppService : AppService, INewsListAppService
    {
        private readonly INewsListRepository _newsListRepository;

        public NewsListAppService(IMapper mapper, INewsListRepository newsListRepository) : base(mapper)
        {
            _newsListRepository = newsListRepository;
        }

        public async Task<int> AddOrEditAsync(NewsListDto input)
        {
            var dto = Mapper.Map<NewsList>(input);
            NewsList newsList;
            if (dto.Id > 0)
            {
                newsList = await _newsListRepository.UpdateAsync(dto);
            }
            else
            {
                newsList = await _newsListRepository.InsertAsync(dto);
            }
            return newsList.Id;
        }

        public async Task<bool> DeleteAsync(int id)
        {
            var newsList = await _newsListRepository.GetAsync(id);
            if (newsList is null) return false;
            newsList.IsDelete = true;
            await _newsListRepository.UpdateAsync(newsList);
            return true;
        }

        public async Task<NewsListDto> GetAsync(int id)
        {
            var newsList = await _newsListRepository.GetAsync(id);

            var dto = Mapper.Map<NewsListDto>(newsList);
            return dto;
        }

        public async Task<List<NewsListDto>> GetListAsync(string title)
        {
            var newsLists = await _newsListRepository.GetListAsync(t => t.Title == title);

            var dtos = Mapper.Map<List<NewsListDto>>(newsLists);
            return dtos;
        }

        public async Task<PagedResultDto<NewsListDto>> GetListAsync(NewsListPagedQueryDto query)
        {
            Expression<Func<NewsList, bool>> predicate = e => true;
            if (!string.IsNullOrEmpty(query.Title)) predicate = predicate.And(e => e.Title.Contains(query.Title)).And(e => e.Content.Contains(query.Title));

            predicate = predicate.And(t => !t.IsDelete);
            var dto = await GetListAsync<NewsListPagedQueryDto, NewsList, PagedResultDto<NewsListDto>, NewsListDto>(query, _newsListRepository, predicate);

            return dto;
        }

        public async Task<IEnumerable<NewsListDto>> GetListAsync()
        {
            var asklists = await _newsListRepository.GetListAsync(u => true);

            return Mapper.Map<IEnumerable<NewsListDto>>(asklists);

        }
    }
}
