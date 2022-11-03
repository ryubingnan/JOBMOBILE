using job.DataAccess.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Microsoft.Extensions.EntityFrameworkCore
{
    class JobInfoListEntityTypeConfiguration : IEntityTypeConfiguration<JobInfoList>
    {
        public void Configure(EntityTypeBuilder<JobInfoList> b)
        {
            b.HasKey(e => e.Id);
            b.Property(e => e.Id).ValueGeneratedOnAdd();
            b.Property(e => e.Title).HasMaxLength(1000);
            b.Property(e => e.Category).HasMaxLength(1000);
            b.Property(e => e.Business).HasMaxLength(1000);
            b.Property(e => e.Content).HasMaxLength(1000);
            b.Property(e => e.Seniority).HasMaxLength(1000);
            b.Property(e => e.Hourlypay).HasMaxLength(1000);
            b.Property(e => e.Workplace).HasMaxLength(1000);
            b.Property(e => e.Worktime).HasMaxLength(1000);
            b.Property(e => e.Carfare).HasMaxLength(1000);
            b.Property(e => e.Treatments).HasMaxLength(1000);
            b.Property(e => e.Form).HasMaxLength(1000);
            b.Property(e => e.Period).HasMaxLength(1000);
            b.Property(e => e.Dayoff).HasMaxLength(1000);
            b.Property(e => e.PhoneNumber).HasMaxLength(1000);
            b.Property(e => e.Supplement).HasMaxLength(1000);
            b.Property(e => e.Other).HasMaxLength(1000);
            b.Property(e => e.Salary).HasMaxLength(1000);
            b.Property(e => e.Treatment).HasMaxLength(1000);
            b.Property(e => e.Img1).HasMaxLength(1000);
            b.Property(e => e.Img2).HasMaxLength(1000);
            b.Property(e => e.Img3).HasMaxLength(1000);
            b.Property(e => e.Img4).HasMaxLength(1000);
            b.Property(e => e.Img5).HasMaxLength(1000);
            b.Property(e => e.Img6).HasMaxLength(1000);
            b.Property(e => e.Img7).HasMaxLength(1000);
            b.Property(e => e.Img8).HasMaxLength(1000);
            b.Property(e => e.Img9).HasMaxLength(1000);
            b.Property(e => e.Img10).HasMaxLength(1000);
            b.Property(e => e.Info1).HasMaxLength(1000);
            b.Property(e => e.Info2).HasMaxLength(1000);
            b.Property(e => e.Info3).HasMaxLength(1000);
            b.Property(e => e.Info4).HasMaxLength(1000);
            b.Property(e => e.Info5).HasMaxLength(1000);
            b.Property(e => e.Info6).HasMaxLength(1000);
            b.Property(e => e.Info7).HasMaxLength(1000);
            b.Property(e => e.Info8).HasMaxLength(1000);
            b.Property(e => e.Info9).HasMaxLength(1000);
            b.Property(e => e.Info10).HasMaxLength(1000);
            b.Property(e => e.MemberID).HasMaxLength(1000);
            b.Property(e => e.CreateTime).IsRequired().HasDefaultValueSql("GETDATE()");
            b.Property(e => e.UpdateTime).ValueGeneratedOnAddOrUpdate().HasDefaultValueSql("GETDATE()");
            b.Property(e => e.IsDelete).HasDefaultValue(false);
        }
    }
}
