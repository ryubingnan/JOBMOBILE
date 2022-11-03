using AutoMapper;
using job.Service.Dtos.ResumeList;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using job.Web.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Controllers
{
    public class ResumeController : MvcControllerBase<ResumeController>
    {
        private readonly IResumeListService _resumeListService;
        private readonly IWebHostEnvironment _environment;

        public ResumeController(ILogger<ResumeController> logger,
            IMapper mapper,
            IResumeListService resumeListService,
             IWebHostEnvironment environment) : base(logger, mapper)
        {
            _resumeListService = resumeListService;
            _environment = environment;
        }
        public IActionResult AddResume()
        {
            return View(new ResumeViewModel());
        }
        [HttpGet]
        public async Task<IActionResult> AddResume(string email)
        {
            if (email != null && email.Length > 0)
            {
                var resumeList = await _resumeListService.GetAsync(email);
                if (resumeList != null)
                {
                    var resumeViewModel = Mapper.Map<ResumeViewModel>(resumeList);
                    return View(resumeViewModel);
                }
                return RedirectToAction("Index", "User");

            }
            else if (email == null && email.Length < 0)
            {
                return Content("<script>alert('この会員様が履歴書を登録しておりません。');</script>");
            }
            return View(new ResumeViewModel());
        }

        [HttpPost]
        public async Task<IActionResult> AddResume([FromForm] ResumeViewModel input)
        {
            if (!ModelState.IsValid)
            {
                return View(input);
            }
            var resumeListDto = Mapper.Map<ResumeListDto>(input);

            var id = await _resumeListService.AddOrEditAsync(resumeListDto);
            if (id <= 0) throw new Exception("失敗");

            return RedirectToAction("Index", "Home");
        }
    }
}
