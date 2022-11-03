using job.DataAccess.Models.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Models
{
    public class CompanyList : EntityBase
    {
        public string Surname { get; set; }
        public string Name { get; set; }
        public string KatakanaSurname { get; set; }
        public string KatakanaName { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public string CompanyName { get; set; }
        public string CompanyUrl { get; set; }
        public DateTime DateTime { get; set; }

    }
}
