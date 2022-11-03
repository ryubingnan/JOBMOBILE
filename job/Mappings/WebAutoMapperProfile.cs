using AutoMapper;

using job.Service.Dtos;
using job.Service.Dtos.AskList;
using job.Service.Dtos.NewsList;
using job.Service.Dtos.ResumeList;
using job.Web.Models;
using job.Web.Models.System;
using job.Web.Models.User;

namespace job.Web.Mappings
{
    public class WebAutoMapperProfile : Profile
    {
        public WebAutoMapperProfile()
        {
            CreateMap<UserDto, UserListItemViewModel>().ReverseMap();
            CreateMap<UserDto, UserViewModel>().ReverseMap();
            CreateMap<UserDto, EditUserViewModel>().ReverseMap();
            CreateMap<UpdateUserDto, EditUserViewModel>().ReverseMap();

            CreateMap<JobInfoListDto, JobViewModel>().ReverseMap();
            CreateMap<AskListDto, AskViewModel>().ReverseMap();
            CreateMap<ResumeListDto, ResumeViewModel>().ReverseMap();
            CreateMap<NewsListDto, NewsListViewModel>().ReverseMap();
            CreateMap<CompanyListDto, CompanyViewModel>().ReverseMap();
            CreateMap<InterviewListDto, InterviewModel>().ReverseMap();
            //CreateMap<JobInfoListDto, JobViewModel>()
            //    //指定属性相互映射
            //    .ForMember(dest =>dest.AddTitle,opt => { opt.MapFrom(src =>src.Title); })
            //    .ForMember(dest => dest.AddContent, opt => { opt.MapFrom(src => src.Contents); });
        }
    }
}
