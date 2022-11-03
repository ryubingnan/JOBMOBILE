using job.DataAccess.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Microsoft.Extensions.EntityFrameworkCore
{
    class ResumeListEntityTypeConfiguration : IEntityTypeConfiguration<ResumeList>
    {
        public void Configure(EntityTypeBuilder<ResumeList> b)
        {
            b.HasKey(e => e.Id);
            b.Property(e => e.Id).ValueGeneratedOnAdd();
            b.Property(e => e.Name).HasMaxLength(1000);
            b.Property(e => e.Katakana).HasMaxLength(1000);
            b.Property(e => e.Sex).HasMaxLength(1000);
            b.Property(e => e.BirthDate).HasMaxLength(1000);
            b.Property(e => e.Age).HasMaxLength(1000);
            b.Property(e => e.PostCode).HasMaxLength(1000);
            b.Property(e => e.Prefectures).HasMaxLength(1000);
            b.Property(e => e.Address).HasMaxLength(1000);
            b.Property(e => e.Station).HasMaxLength(1000);
            b.Property(e => e.Phone).HasMaxLength(1000);
            b.Property(e => e.FixedPhone).HasMaxLength(1000);
            b.Property(e => e.Email).HasMaxLength(1000);
            b.Property(e => e.Consort).HasMaxLength(1000);
            b.Property(e => e.Dependents).HasMaxLength(1000);
            b.Property(e => e.AcademicBackground1).HasMaxLength(1000);
            b.Property(e => e.AcademicBackground2).HasMaxLength(1000);
            b.Property(e => e.AcademicBackground3).HasMaxLength(1000);
            b.Property(e => e.Qualification).HasMaxLength(1000);
            b.Property(e => e.Language).HasMaxLength(1000);
            b.Property(e => e.SelfPR).HasMaxLength(1000);
            b.Property(e => e.JobCareer1).HasMaxLength(1000);
            b.Property(e => e.JobCareer2).HasMaxLength(1000);
            b.Property(e => e.JobCareer3).HasMaxLength(1000);
            b.Property(e => e.JobCareer4).HasMaxLength(1000);
            b.Property(e => e.JobCareer5).HasMaxLength(1000);
            b.Property(e => e.JobCareer6).HasMaxLength(1000);
            b.Property(e => e.Experience).HasMaxLength(1000);
            b.Property(e => e.Conditions).HasMaxLength(1000);
            b.Property(e => e.Content).HasMaxLength(1000);
            b.Property(e => e.Other).HasMaxLength(1000);
            b.Property(e => e.Img).HasMaxLength(1000);
            b.Property(e => e.MemberID).HasMaxLength(1000);
            b.Property(e => e.DateTime).ValueGeneratedOnAddOrUpdate().HasDefaultValueSql("GETDATE()");
        }
    }
}
