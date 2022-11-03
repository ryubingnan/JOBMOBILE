using job.DataAccess.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.Microsoft.Extensions.EntityFrameworkCore
{
    class NewsListEntityTypeConfiguration : IEntityTypeConfiguration<NewsList>
    {
        public void Configure(EntityTypeBuilder<NewsList> b)
        {
            b.HasKey(e => e.Id);
            b.Property(e => e.Id).ValueGeneratedOnAdd();
            b.Property(e => e.MemberID).HasMaxLength(1000);
            b.Property(e => e.Title).HasMaxLength(1000);
            b.Property(e => e.Content).HasMaxLength(1000);
            b.Property(e => e.IsDelete).HasMaxLength(1000);
            b.Property(e => e.DateTime).ValueGeneratedOnAddOrUpdate().HasDefaultValueSql("GETDATE()");
        }
    }
}
