using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Models
{
    public class NewsListViewModel
    {
        public int Id { get; set; }
        [Display(Name = "会員ID")]
        //[Required(ErrorMessage = "{0}をご入力ください。")]
        public string MemberID { get; set; }

        [Display(Name = "タイトル")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Title { get; set; }

        [Display(Name = "内容")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Content { get; set; }

        [Display(Name = "日付")]
        public string DateTime { get; set; }
    }

}
