using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace job.Web.Models
{
    public class InterviewModel
    {
        public int Id { get; set; }

        public int JobID { get; set; }

        public string MemberID { get; set; }

        public string InterviewDateTime1 { get; set; }

        public string InterviewDateTime2 { get; set; }

        public string InterviewDateTime3 { get; set; }

        public string Other { get; set; }

        public string CreateDateTime { get; set; }

        public string UpDateTime { get; set; }
    }
}
