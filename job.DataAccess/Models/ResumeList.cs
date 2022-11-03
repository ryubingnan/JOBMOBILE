using job.DataAccess.Models.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Models
{
    public class ResumeList : EntityBase
    {
        public string Name { get; set; }

        public string Katakana { get; set; }

        public string Sex { get; set; }

        public string BirthDate { get; set; }

        public string Age { get; set; }

        public string PostCode { get; set; }

        public string Prefectures { get; set; }

        public string Address { get; set; }

        public string Station { get; set; }

        public string Phone { get; set; }

        public string FixedPhone { get; set; }

        public string Email { get; set; }

        public string Consort { get; set; }

        public string Dependents { get; set; }

        public string AcademicBackground1 { get; set; }

        public string AcademicBackground2 { get; set; }

        public string AcademicBackground3 { get; set; }

        public string Qualification { get; set; }

        public string Language { get; set; }

        public string SelfPR { get; set; }
        public string JobCareer1 { get; set; }

        public string JobCareer2 { get; set; }

        public string JobCareer3 { get; set; }

        public string JobCareer4 { get; set; }

        public string JobCareer5 { get; set; }

        public string JobCareer6 { get; set; }

        public string Experience { get; set; }

        public string Conditions { get; set; }

        public string Content { get; set; }

        public string Other { get; set; }

        public string Img { get; set; }

        public string MemberID { get; set; }

        public DateTime DateTime { get; set; }
    }
}
