using job.DataAccess.Models.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Models
{
    public class AskList : EntityBase
    {
        public string Title { get; set; }
        public string Content { get; set; }
        public string Other { get; set; }
        public string MemberID { get; set; }
        public DateTime DateTime { get; set; }
    }
}
