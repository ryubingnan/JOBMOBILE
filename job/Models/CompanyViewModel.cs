using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Models
{
    public class CompanyViewModel
    {
        public int Id { get; set; }
        [Display(Name = "姓")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Surname { get; set; }

        [Display(Name = "名")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Name { get; set; }

        [Display(Name = "セイ")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string KatakanaSurname { get; set; }

        [Display(Name = "メイ")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string KatakanaName { get; set; }

        [Display(Name = "メール")]
        public string Email { get; set; }

        [Display(Name = "電話")]
        public string Tel { get; set; }

        [Display(Name = "会社名")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string CompanyName { get; set; }

        [Display(Name = "会社のURL")]
        public string CompanyUrl { get; set; }

        [Display(Name = "日付")]
        public string DateTime { get; set; }
    }
}
