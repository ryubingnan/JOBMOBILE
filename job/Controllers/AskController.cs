using AutoMapper;
using job.Service.Dtos.AskList;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using job.Web.Models;
using job.Web.Models.System;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Controllers
{
    public class AskController : MvcControllerBase<AskController>
    {
        private readonly IAskListService _AskListService;
        private readonly IWebHostEnvironment _environment;

        public AskController(ILogger<AskController> logger,
            IMapper mapper,
            IAskListService AskListService,
             IWebHostEnvironment environment) : base(logger, mapper)
        {
            _AskListService = AskListService;
            _environment = environment;
        }

        public IActionResult AddAsk()
        {
            return View(new AskViewModel());
        }

        [HttpPost]
        public async Task<IActionResult> AddAsk([FromForm] AskViewModel input)
        {
            if (!ModelState.IsValid)
            {
                return View(input);
            }
            var AskListDto = Mapper.Map<AskListDto>(input);
           
            var id = await _AskListService.AddOrEditAsync(AskListDto);
            if (id <= 0) throw new Exception("发布失败");

            return RedirectToAction("Index", "Home");
        }
        
        public async Task<IActionResult> AskLists()
        {

            var askLists = (await _AskListService.GetListAsync()).ToList();

            var askListModels = Mapper.Map<List<AskViewModel>>(askLists);


            var model = new AskListViewModel()
            {
                AskLists = askListModels
            };

            return View(model);
        }

        public IActionResult CltInquiry()
        {
            return View();
        }
    }
}
