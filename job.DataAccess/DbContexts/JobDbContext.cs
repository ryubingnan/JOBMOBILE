using job.DataAccess.Microsoft.Extensions.EntityFrameworkCore;
using job.DataAccess.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace job.DataAccess.DbContexts
{
   public class JobDbContext : EfCoreDbContext<JobDbContext>
    {
        public JobDbContext(DbContextOptions<JobDbContext> options) : base(options)
        {

        }

        public virtual DbSet<JobInfoList> JobInfoLists { get; set; }
        public virtual DbSet<AskList> AskLists { get; set; }
        public virtual DbSet<ResumeList> ResumeLists { get; set; }
        public virtual DbSet<NewsList> NewsLists { get; set; }
        public virtual DbSet<CompanyList> CompanyLists { get; set; }
        public virtual DbSet<InterviewList> InterviewLists { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            ApplyConfigurations(modelBuilder);
        }

        private void ApplyConfigurations(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new JobInfoListEntityTypeConfiguration());
            modelBuilder.ApplyConfiguration(new AskListEntityTypeConfiguration());
            modelBuilder.ApplyConfiguration(new ResumeListEntityTypeConfiguration());
            modelBuilder.ApplyConfiguration(new NewsListEntityTypeConfiguration());
            modelBuilder.ApplyConfiguration(new CompanyListEntityTypeConfiguration());
            modelBuilder.ApplyConfiguration(new InterviewListEntityTypeConfiguration());
        }
    }
}
