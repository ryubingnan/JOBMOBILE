using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Models
{
    public class ResumeViewModel
    {
        public int Id { get; set; }

        [Display(Name = "お名前")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Name { get; set; }

        [Display(Name = "カタカナ")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Katakana { get; set; }

        [Display(Name = "性別")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string Sex { get; set; }

        [Display(Name = "生年月日")]
        [Required(ErrorMessage = "{0}をご入力ください。")]
        public string BirthDate { get; set; }

        [Display(Name = "年齢")]
        public string Age { get; set; }

        [Display(Name = "郵便番号")]
        public string PostCode { get; set; }

        [Display(Name = "都道府県")]
        public string Prefectures { get; set; }

        [Display(Name = "住所")]
        public string Address { get; set; }

        [Display(Name = "最寄駅")]
        public string Station { get; set; }

        [Display(Name = "携帯電話")]
        public string Phone { get; set; }

        [Display(Name = "固定電話")]
        public string FixedPhone { get; set; }

        [Display(Name = "メールアドレス")]
        public string Email { get; set; }

        [Display(Name = "配偶者")]
        public string Consort { get; set; }

        [Display(Name = "扶養家族")]
        public string Dependents { get; set; }


        [Display(Name = "学歴1")]
        public string AcademicBackground1 { get; set; }

        [Display(Name = "学歴2")]
        public string AcademicBackground2 { get; set; }

        [Display(Name = "学歴3")]
        public string AcademicBackground3 { get; set; }

        [Display(Name = "資格")]
        public string Qualification { get; set; }

        [Display(Name = "語学力")]
        public string Language { get; set; }

        [Display(Name = "自己PR")]
        public string SelfPR { get; set; }

        [Display(Name = "職務経歴1")]
        public string JobCareer1 { get; set; }

        [Display(Name = "職務経歴2")]
        public string JobCareer2 { get; set; }

        [Display(Name = "職務経歴3")]
        public string JobCareer3 { get; set; }

        [Display(Name = "職務経歴4")]
        public string JobCareer4 { get; set; }

        [Display(Name = "職務経歴5")]
        public string JobCareer5 { get; set; }

        [Display(Name = "職務経歴6")]
        public string JobCareer6 { get; set; }

        [Display(Name = "経験")]
        public string Experience { get; set; }

        [Display(Name = "希望条件")]
        public string Conditions { get; set; }

        [Display(Name = "補充内容")]
        public string Content { get; set; }

        [Display(Name = "その他")]
        public string Other { get; set; }

        [Display(Name = "写真")]
        public string Img { get; set; }

        [Display(Name = "会員ID")]
        public string MemberID { get; set; }

        [Display(Name = "日付")]
        public string Datetime { get; set; }
    }
}
