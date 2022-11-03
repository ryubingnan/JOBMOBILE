using AutoMapper;
using job.Service.Dtos;
using job.Service.Dtos.Users;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using job.Web.Models;
using job.Web.Models.User;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Controllers
{
    public class CompanyController : MvcControllerBase<CompanyController>
    {
        private readonly IUserAppService _userlistAppService;
        private readonly ICompanyListService _companyListService;
        public CompanyController(
                     ILogger<CompanyController> logger,
                     IMapper mapper,
                     IUserAppService userlistAppService,
                     ICompanyListService companyListService)
                    : base(logger, mapper)
        {
            _userlistAppService = userlistAppService;
            _companyListService = companyListService;
        }
        public IActionResult Index()
        {
            //var users = (await _userAppService.GetListAsync()).ToList();

            //var userModels = Mapper.Map<List<UserListItemViewModel>>(users);

            ////foreach (UserListItemViewModel u in userModels)
            ////{
            ////    u.Identity = (u.Identity == "VIP" ? "VIP会员" : "高级会员");
            ////};


            //var model = new UserListViewModel()
            //{
            //    Users = userModels
            //};

            //return View(model);
            //return View(new UserListViewModel { Users = new List<UserListItemViewModel>() }); ;
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        public async Task<PagedResultDto<UserDto>> GetList([FromBody] MemberPagedQueryDto query)
        {
            query.Type = "company";
            var dtos = await _userlistAppService.GetListAsync(query);
            return dtos;
        }

        [HttpPost]
        public async Task<IActionResult> AddCompany([FromForm] CompanyViewModel input)
        {
            if (!ModelState.IsValid)
            {
                return View(input);
            }
            var companyListDto = Mapper.Map<CompanyListDto>(input);

            var id = await _companyListService.AddOrEditAsync(companyListDto);
            if (id <= 0) throw new Exception("发布失败");

            return RedirectToAction("Success", "Company");
        }

        public IActionResult Success()
        {
            return View();
        }
    }
}
