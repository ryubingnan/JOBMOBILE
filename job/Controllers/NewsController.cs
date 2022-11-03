using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using job.Service.Dtos;
using job.Service.Dtos.NewsList;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using job.Web.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace job.Web.Controllers
{
    public class NewsController : MvcControllerBase<NewsController>
    {
        private readonly INewsListAppService _newslistAppService;
        private readonly IWebHostEnvironment _environment;

        public NewsController(ILogger<NewsController> logger,
                        IMapper mapper,
                        INewsListAppService newslistAppService,
                        IWebHostEnvironment environment) : base(logger, mapper)
        {
            _newslistAppService = newslistAppService;
            _environment = environment;
        }

        public IActionResult AddNews()
        {
            return View(new NewsListViewModel());
        }

        public async Task<IActionResult> NewsList()
        {

            var askLists = (await _newslistAppService.GetListAsync()).ToList();

            var askListModels = Mapper.Map<List<NewsListViewModel>>(askLists);

            return View(askListModels);
        }

        [HttpPost]
        public async Task<IActionResult> AddNews([FromForm] NewsListViewModel input)
        {
            if (!ModelState.IsValid)
            {
                return View(input);
            }
            input.MemberID = UserId;
            var newsListDto = Mapper.Map<NewsListDto>(input);

            var id = await _newslistAppService.AddOrEditAsync(newsListDto);
            if (id <= 0) throw new Exception("发布失败");

            return RedirectToAction("Index", "Home");
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<PagedResultDto<NewsListDto>> GetList([FromBody] NewsListPagedQueryDto query)
        {
            var dtos = await _newslistAppService.GetListAsync(query);
            return dtos;
        }
    }
}
