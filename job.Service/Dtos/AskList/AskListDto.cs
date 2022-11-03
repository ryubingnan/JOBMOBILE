using System;
using System.Collections.Generic;
using System.Text;

namespace job.Service.Dtos.AskList
{
    public class AskListDto
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string Other { get; set; }
        public string MemberID { get; set; }
        public DateTime DateTime { get; set; }
    }
}
