using System;
using System.Collections.Generic;
using System.Text;

namespace job.Service.Dtos.NewsList
{
    public class NewsListPagedQueryDto : PagedQueryDto
    {
        public string Title { get; set; }

        public string Content { get; set; }
    }
}
