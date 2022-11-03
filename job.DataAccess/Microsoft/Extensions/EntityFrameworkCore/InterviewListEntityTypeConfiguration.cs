using job.DataAccess.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Microsoft.Extensions.EntityFrameworkCore
{
    class InterviewListEntityTypeConfiguration : IEntityTypeConfiguration<InterviewList>
    {
        public void Configure(EntityTypeBuilder<InterviewList> b)
        {
            b.HasKey(e => e.Id);
            b.Property(e => e.Id).ValueGeneratedOnAdd();
            b.Property(e => e.MemberID).HasMaxLength(1000);
            b.Property(e => e.JobID).HasMaxLength(1000);
            b.Property(e => e.InterviewDateTime1).HasMaxLength(1000);
            b.Property(e => e.InterviewDateTime2).HasMaxLength(1000);
            b.Property(e => e.InterviewDateTime3).HasMaxLength(1000);
            b.Property(e => e.Other).HasMaxLength(1000);
            b.Property(e => e.CreateDateTime).ValueGeneratedOnAddOrUpdate().HasDefaultValueSql("GETDATE()");
            b.Property(e => e.UpDateTime).ValueGeneratedOnAddOrUpdate().HasDefaultValueSql("GETDATE()");
        }
    }
}
