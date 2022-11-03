using AutoMapper;

using job.DataAccess.Models;
using job.Service.Dtos;
using job.Service.Dtos.AskList;
using job.Service.Dtos.NewsList;
using job.Service.Dtos.ResumeList;

namespace job.Service.Mappings
{
    public class ServiceAutoMapperProfile : Profile
    {
        public ServiceAutoMapperProfile()
        {
            CreateMap<User, UserDto>().ReverseMap();
            CreateMap<User, RegisterUserDto>().ReverseMap();
            CreateMap<User, CreateUserDto>().ReverseMap();
            CreateMap<User, UpdateUserDto>().ReverseMap();

           
            CreateMap<JobInfoList, JobInfoListDto>().ReverseMap();

            CreateMap<AskList, AskListDto>().ReverseMap();
            CreateMap<ResumeList, ResumeListDto>().ReverseMap();
            CreateMap<NewsList, NewsListDto>().ReverseMap();
            CreateMap<CompanyList, CompanyListDto>().ReverseMap();
            CreateMap<InterviewList, InterviewListDto>().ReverseMap();
        }
    }
}
