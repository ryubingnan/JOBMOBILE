using System;
using System.Collections.Generic;
using System.Text;

namespace job.Service.Dtos
{
    public class InterviewListDto
    {
        public int Id { get; set; }
        public string MemberID { get; set; }
        public string JobID { get; set; }
        public string InterviewDateTime1 { get; set; }
        public string InterviewDateTime2 { get; set; }
        public string InterviewDateTime3 { get; set; }
        public string Other { get; set; }
        public string CreateDateTime { get; set; }
        public string UpDateTime { get; set; }
    }
}
