using System;
using System.Collections.Generic;
using System.Text;

namespace job.Service.Dtos.JobInfoList
{
    public class JobInfoPagedQueryDto : PagedQueryDto
    {
        public string Title { get; set; }

        public string Type { get; set; }

        public string Category { get; set; }
        public string Workplace { get; set; }

        public List<string> ContentCheck { get; set; }
    }
}
