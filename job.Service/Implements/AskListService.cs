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
    public class AskListService : AppService, IAskListService
    {
        private readonly IAskRepository _AskInfoRepository;

        public AskListService(IMapper mapper, IAskRepository AskInfoRepository) : base(mapper)
        {
            _AskInfoRepository = AskInfoRepository;
        }

        public async Task<int> AddOrEditAsync(AskListDto input)
        {
            var dto = Mapper.Map<AskList>(input);
            AskList ask;
            if (dto.Id > 0)
            {
                ask = await _AskInfoRepository.UpdateAsync(dto);
            }
            else
            {
                ask = await _AskInfoRepository.InsertAsync(dto);
            }
            return ask.Id;
        }

        public async Task<IEnumerable<AskListDto>> GetListAsync()
        {
            var asklists = await _AskInfoRepository.GetListAsync(u => true);

            return Mapper.Map<IEnumerable<AskListDto>>(asklists);

        }


    }
}
