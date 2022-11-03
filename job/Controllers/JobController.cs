using AutoMapper;
using job.Service.Dtos;
using job.Service.Dtos.JobInfoList;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;
using job.Web.Models.System;
using Microsoft.AspNetCore.Http;
using System;
using System.IO;
using Microsoft.AspNetCore.Hosting;
using job.Web.Models;

namespace job.Web.Controllers
{
    public class JobController : MvcControllerBase<JobController>
    {
        private readonly IJobInfoListAppService _joblistAppService;
        private readonly IInterviewListService _interviewListService;
        private readonly IWebHostEnvironment _environment;

        public JobController(ILogger<JobController> logger,
            IMapper mapper,
            IJobInfoListAppService joblistAppService,
             IInterviewListService interviewListService,
             IWebHostEnvironment environment) : base(logger, mapper)
        {
            _joblistAppService = joblistAppService;
            _interviewListService = interviewListService;
            _environment = environment;
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<PagedResultDto<JobInfoListDto>> GetList([FromBody] JobInfoPagedQueryDto query)
        {
            var dtos = await _joblistAppService.GetListAsync(query);
            return dtos;
        }

        [HttpGet]
        public async Task<IActionResult> Detail([FromQuery] int id)
        {
            var dto = await _joblistAppService.GetAsync(id);          
            return View(id);
        }

        public async Task<IActionResult> AddJob(int? id)
        {
            if (id.HasValue && id.Value > 0)
            {
                var jobInfoList = await _joblistAppService.GetAsync(id.Value);
                var jobViewModel = Mapper.Map<JobViewModel>(jobInfoList);
                return View(jobViewModel);
            }
            return View(new JobViewModel());
        }

        [HttpPost]
        public async Task<IActionResult> AddJob([FromForm] JobViewModel input)
        {
            if (!ModelState.IsValid)
            {
                return View(input);
            }
            var jobInfoListDto = Mapper.Map<JobInfoListDto>(input);
            if (input.FileImg1 is not null)
                jobInfoListDto.Img1 = await GetFilePath(input.FileImg1, "Job", "Img1");
            if (input.FileImg2 is not null)
                jobInfoListDto.Img2 = await GetFilePath(input.FileImg2, "Job", "Img2");
            if (input.FileImg3 is not null)
                jobInfoListDto.Img3 = await GetFilePath(input.FileImg3, "Job", "Img3");
            if (input.FileImg4 is not null)
                jobInfoListDto.Img4 = await GetFilePath(input.FileImg4, "Job", "Img4");
            if (input.FileImg5 is not null)
                jobInfoListDto.Img5 = await GetFilePath(input.FileImg5, "Job", "Img5");
            if (input.FileImg6 is not null)
                jobInfoListDto.Img6 = await GetFilePath(input.FileImg6, "Job", "Img6");
            if (input.FileImg7 is not null)
                jobInfoListDto.Img7 = await GetFilePath(input.FileImg7, "Job", "Img7");
            if (input.FileImg8 is not null)
                jobInfoListDto.Img8 = await GetFilePath(input.FileImg8, "Job", "Img8");
            if (input.FileImg9 is not null)
                jobInfoListDto.Img9 = await GetFilePath(input.FileImg9, "Job", "Img9");
            if (input.FileImg10 is not null)
                jobInfoListDto.Img10 = await GetFilePath(input.FileImg10, "Job", "Img10");

            var id = await _joblistAppService.AddOrEditAsync(jobInfoListDto);
            if (id <= 0) throw new Exception("工作发布失败");

            return RedirectToAction("Index", "Home");
        }
        private async Task<string> GetFilePath(IFormFile file, string folderName, string symbol = "")
        {
            try
            {
                if (file is null) return "";
                if (!string.IsNullOrEmpty(folderName)) folderName = folderName.ToLower();
                if (!string.IsNullOrEmpty(symbol)) symbol = symbol.ToLower();
                var fileName = folderName + symbol + "_" + DateTime.Now.ToString("yyyyMMddhhmmssfff") + Path.GetExtension(file.FileName);
                var uploadsRootFolder = Path.Combine(_environment.WebRootPath, "uploadfile", folderName);
                if (!Directory.Exists(uploadsRootFolder))
                {
                    Directory.CreateDirectory(uploadsRootFolder);
                }
                var savePath = Path.Combine(uploadsRootFolder, fileName);
                using (var fileStream = new FileStream(savePath, FileMode.Create))
                {
                    await file.CopyToAsync(fileStream);
                }
                return savePath.Replace(_environment.WebRootPath, "").Replace("\\", "/");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message + ex.StackTrace);
                return "";
            }

        }
        public IActionResult JobList()
        {
            return View();
        }

        [HttpGet]
        public IActionResult JobDetail([FromQuery] int id)
        {
            //var dto = await _joblistAppService.GetAsync(id);
            ViewBag.Id = id;
            return View();
        }
        [HttpGet]
        public async Task<JobInfoListDto> GetDetail([FromQuery] int id)
        {
            var dto = await _joblistAppService.GetAsync(id);
            if (dto is null) throw new Exception("仕事情報が存在しないです。");
            return dto;
        }
        public IActionResult JobListMng()
        {
            return View();
        }

        //面談予約
        [HttpPost]
        public async Task<bool> AddInterview([FromBody] InterviewModel input)
        {
            input.MemberID = base.UserId;
            var interviewListDto = Mapper.Map<InterviewListDto>(input);
            var result = await _interviewListService.AddOrEditAsync(interviewListDto);
            return result > 0;
        }
    }
}
