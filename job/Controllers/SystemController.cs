using AutoMapper;
using job.Service.Dtos;
using job.Service.Dtos.Users;
using job.Service.Interfaces;
using job.Web.Controllers.Abstract;
using job.Web.Models.System;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.IO;
using System.Threading.Tasks;

namespace job.Web.Controllers
{
    public class SystemController : MvcControllerBase<SystemController>
    {
        private readonly IWebHostEnvironment _environment;
        private readonly IUserAppService _userAppService;
        private readonly IJobInfoListAppService _jobInfoListAppService;

        public SystemController(
            ILogger<SystemController> logger,
            IMapper mapper,
            IWebHostEnvironment environment,
            IUserAppService userAppService,
            IJobInfoListAppService jobInfoListAppService)
            : base(logger, mapper)
        {
            _environment = environment;
            _userAppService = userAppService;
            _jobInfoListAppService = jobInfoListAppService;
        }

        public IActionResult Index()
        {
            return View();
        }

        #region 工作发布

        public async Task<IActionResult> AddJob(int? id)
        {
            if (id.HasValue && id.Value > 0)
            {
                var jobInfoList = await _jobInfoListAppService.GetAsync(id.Value);
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

            var id = await _jobInfoListAppService.AddOrEditAsync(jobInfoListDto);
            if (id <= 0) throw new Exception("工作发布失败");

            return RedirectToAction("Index", "Home");
        }

        public IActionResult JobList()
        {
            return View();
        }

        [HttpGet]
        public IActionResult JobDetail([FromQuery] int id)
        {
            //var dto = await _jobInfoListAppService.GetAsync(id);
            return View(id);
        }

        [HttpGet]
        public async Task<JobInfoListDto> GetDetail([FromQuery] int id)
        {
            var dto = await _jobInfoListAppService.GetAsync(id);
            if (dto is null) throw new Exception("仕事情報が存在しないです。");
            return dto;
        }

        [HttpPost]
        public async Task<bool> DeleteJob([FromBody] int id)
        {
            return await _jobInfoListAppService.DeleteAsync(id);
        }

        #endregion


        #region 会员管理

        public IActionResult Member()
        {
            return View();
        }

        [HttpPost]
        public async Task<PagedResultDto<UserDto>> MemberList([FromBody] MemberPagedQueryDto input)
        {
            input.IsOff = false;
            return await _userAppService.GetListAsync(input);
        }

        public IActionResult MemberOff()
        {
            return View();
        }

        [HttpPost]
        public async Task<PagedResultDto<UserDto>> MemberOffList([FromBody] MemberPagedQueryDto input)
        {
            input.IsOff = true;
            return await _userAppService.GetListAsync(input);
        }

        [HttpPost]
        public async Task<bool> MemberAgree([FromBody] int id)
        {
            return await _userAppService.MemberAgree(id);
        }

        #endregion

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

    }
}
