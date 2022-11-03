using job.DataAccess.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Microsoft.Extensions.EntityFrameworkCore
{
    class CompanyListEntityTypeConfiguration : IEntityTypeConfiguration<CompanyList>
    {
        public void Configure(EntityTypeBuilder<CompanyList> b)
        {
            b.HasKey(e => e.Id);
            b.Property(e => e.Id).ValueGeneratedOnAdd();
            b.Property(e => e.Surname).HasMaxLength(1000);
            b.Property(e => e.Name).HasMaxLength(1000);
            b.Property(e => e.KatakanaSurname).HasMaxLength(1000);
            b.Property(e => e.KatakanaName).HasMaxLength(1000);
            b.Property(e => e.Email).HasMaxLength(1000);
            b.Property(e => e.Tel).HasMaxLength(1000);
            b.Property(e => e.CompanyName).HasMaxLength(1000);
            b.Property(e => e.CompanyUrl).HasMaxLength(1000);
            b.Property(e => e.DateTime).ValueGeneratedOnAddOrUpdate().HasDefaultValueSql("GETDATE()");
        }
    }
}
