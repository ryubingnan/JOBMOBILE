using job.Web.Core.Extensions;

using Microsoft.AspNetCore.Http;

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Models.System
{
    public class JobViewModel
    {
        public int Id { get; set; }

        [Display(Name = "会員ID")]
        [Required(ErrorMessage = "{0}会員ID。")]
        public string MemberID { get; set; }

        [Display(Name = "掲載タイトル")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Title { get; set; }

        [Display(Name = "職種")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Category { get; set; }

        [Display(Name = "事業内容")]
        [Required(ErrorMessage = "{0}事業内容をご入力ください。")]
        public string Business { get; set; }
        

        [Display(Name = "仕事内容")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Content { get; set; }

        [Display(Name = "対象")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Seniority { get; set; }


        [Display(Name = "給与")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Hourlypay { get; set; }

        [Display(Name = "勤務地")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Workplace { get; set; }

        [Display(Name = "勤務時間")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Worktime { get; set; }

        [Display(Name = "交通費")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Carfare { get; set; }

        [Display(Name = "待遇")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Treatments { get; set; }

        [Display(Name = "雇用形態")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Form { get; set; }

        [Display(Name = "雇用期間")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Period { get; set; }

        [Display(Name = "休日休暇")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Dayoff { get; set; }

        [Display(Name = "お問い合わせ番号")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string PhoneNumber { get; set; }

        [Display(Name = "補充内容")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Supplement { get; set; }

        [Display(Name = "その他")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Other { get; set; }








        public string CompanyUrl { get; set; }
        public string WorkArea { get; set; }
        public string JobPosition { get; set; }
        public string TravelFare { get; set; }

        //[Display(Name = "薪资")]
        //[Required(ErrorMessage = "{0}不可以为空")]
        //[RegularExpression(@"^[1-9]\d*$", ErrorMessage = "{0}请填写数字")]
        //public string Salary { get; set; }

        //[Display(Name = "待遇")]
        //[Required(ErrorMessage = "{0}不可以为空")]
        //[RegularExpression(@"^[1-9]\d*$", ErrorMessage = "{0}请填写数字")]
        //public string Treatment { get; set; }

        public IFormFile FileImg1 { get; set; }
        public IFormFile FileImg2 { get; set; }
        public IFormFile FileImg3 { get; set; }
        public IFormFile FileImg4 { get; set; }
        public IFormFile FileImg5 { get; set; }
        public IFormFile FileImg6 { get; set; }
        public IFormFile FileImg7 { get; set; }
        public IFormFile FileImg8 { get; set; }
        public IFormFile FileImg9 { get; set; }
        public IFormFile FileImg10 { get; set; }
        public string Img1 { get; set; }
        public string Img2 { get; set; }
        public string Img3 { get; set; }
        public string Img4 { get; set; }
        public string Img5 { get; set; }
        public string Img6 { get; set; }
        public string Img7 { get; set; }
        public string Img8 { get; set; }
        public string Img9 { get; set; }
        public string Img10 { get; set; }
        
        public string Info1 { get; set; }
        public string Info2 { get; set; }
        public string Info3 { get; set; }
        public string Info4 { get; set; }
        public string Info5 { get; set; }
        public string Info6 { get; set; }
        public string Info7 { get; set; }
        public string Info8 { get; set; }
        public string Info9 { get; set; }
        public string Info10 { get; set; }
    }
}
