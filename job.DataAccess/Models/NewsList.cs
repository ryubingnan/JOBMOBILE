using job.DataAccess.Models.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Models
{
    public class NewsList : EntityBase
    {
        public string MemberID { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public bool IsDelete { get; set; }
        public DateTime DateTime { get; set; }
    }
}
