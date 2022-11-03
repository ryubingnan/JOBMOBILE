using AutoMapper;
using job.Service.Dtos;
using job.Service.Dtos.Users;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using job.Web.Models.User;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Volo.Abp;

namespace job.Web.Controllers
{
    public class UserController : MvcControllerBase<UserController>
    {
        private readonly IUserAppService _userlistAppService;

        public UserController(
            ILogger<UserController> logger,
            IMapper mapper,
            IUserAppService userAppService)
            : base(logger, mapper)
        {
            _userlistAppService = userAppService;
        }

        public IActionResult Index()
        {
            //var users = (await _userAppService.GetListAsync()).ToList();
            //var userModels = Mapper.Map<List<UserListItemViewModel>>(users);
            //foreach (UserListItemViewModel u in userModels)
            //{
            //    u.Identity = (u.Identity == "VIP" ? "VIP会员" : "高级会员");
            //};
            //var model = new UserListViewModel()
            //{
            //    Users = userModels
            //};
            //return View(model);
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<PagedResultDto<UserDto>> GetList([FromBody] MemberPagedQueryDto query)
        {
            query.Type = "member";
            var dtos = await _userlistAppService.GetListAsync(query);
            return dtos;
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var user = await _userlistAppService.GetAsync(id);

            var model = Mapper.Map<EditUserViewModel>(user);

            return PartialView("Edit", model);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(int id, EditUserViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            var dto = Mapper.Map<UpdateUserDto>(model);

            var user = await _userlistAppService.UpdateAsync(id, dto);

            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        public async Task<IActionResult> Remove(int id)
        {
            var currentUserId = int.Parse(User.Claims.First(c => c.Type == ClaimTypes.NameIdentifier).Value);
            if (currentUserId == id) throw new UserFriendlyException("Can't Remove Current User");

            await _userlistAppService.RemoveAsync(id);

            return Ok();
        }
    }
}
