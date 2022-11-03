using System;
using System.Collections.Generic;
using System.Text;

namespace job.Service.Dtos.NewsList
{
    public class NewsListDto
    {
        public int Id { get; set; }
        public string MemberID { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public bool IsDelete { get; set; }
        public DateTime DateTime { get; set; }
    }
}
