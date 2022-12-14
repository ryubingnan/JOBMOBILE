using System;
using System.Collections.Generic;
using System.Text;

namespace job.Service.Dtos.Users
{
    public class MemberPagedQueryDto : PagedQueryDto
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public bool IsOff { get; set; }

        public string Type { get; set; }
    }
}
