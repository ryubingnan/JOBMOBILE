using job.DataAccess.Models.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Models
{
    public class InterviewList : EntityBase
    {
        public string MemberID { get; set; }
        public string JobID { get; set; }
        public string InterviewDateTime1 { get; set; }
        public string InterviewDateTime2 { get; set; }
        public string InterviewDateTime3 { get; set; }
        public string Other { get; set; }
        public DateTime CreateDateTime { get; set; }
        public DateTime UpDateTime { get; set; }
    }
}
