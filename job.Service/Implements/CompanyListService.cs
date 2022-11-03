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
    public class CompanyListService : AppService, ICompanyListService
    {
        private readonly ICompanyListRepository _companyListRepository;

        public CompanyListService(IMapper mapper, ICompanyListRepository companyListRepository) : base(mapper)
        {
            _companyListRepository = companyListRepository;
        }

        public async Task<int> AddOrEditAsync(CompanyListDto input)
        {
            var dto = Mapper.Map<CompanyList>(input);
            CompanyList companyList;
            if (dto.Id > 0)
            {
                companyList = await _companyListRepository.UpdateAsync(dto);
            }
            else
            {
                companyList = await _companyListRepository.InsertAsync(dto);
            }
            return companyList.Id;
        }

        public async Task<IEnumerable<CompanyListDto>> GetListAsync()
        {
            var companyLists = await _companyListRepository.GetListAsync(u => true);

            return Mapper.Map<IEnumerable<CompanyListDto>>(companyLists);

        }


    }
}
