using job.DataAccess.Models.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Models
{
    public class JobInfoList : EntityBase
    {
        public string MemberID { get; set; }
        public string Title { get; set; }
        public string Category { get; set; }
        public string Business { get; set; }
        public string Content { get; set; }
        public string Seniority { get; set; }
        public string Hourlypay { get; set; }
        public string Workplace { get; set; }
        public string Worktime { get; set; }
        public string Carfare { get; set; }
        public string Treatments { get; set; }
        public string Form { get; set; }
        public string Period { get; set; }
        public string Dayoff { get; set; }
        public string PhoneNumber { get; set; }
        public string Supplement { get; set; }
        public string Other { get; set; }
        public string Salary { get; set; }
        public string Treatment { get; set; }
        public string Img1 { get; set; }
        public string Info1 { get; set; }
        public string Img2 { get; set; }
        public string Info2 { get; set; }
        public string Img3 { get; set; }
        public string Info3 { get; set; }
        public string Img4 { get; set; }
        public string Info4 { get; set; }
        public string Img5 { get; set; }
        public string Info5 { get; set; }
        public string Img6 { get; set; }
        public string Info6 { get; set; }
        public string Img7 { get; set; }
        public string Info7 { get; set; }
        public string Img8 { get; set; }
        public string Info8 { get; set; }
        public string Img9 { get; set; }
        public string Info9 { get; set; }
        public string Img10 { get; set; }
        public string Info10 { get; set; }
        public DateTime CreateTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public bool IsDelete { get; set; }
    }
}
