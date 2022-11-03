using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace job.DataAccess.Migrations.JobDb
{
    public partial class addInterviewList : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "InterviewLists",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MemberID = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobID = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    InterviewDateTime1 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    InterviewDateTime2 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    InterviewDateTime3 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Other = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    CreateDateTime = table.Column<DateTime>(type: "datetime", nullable: false, defaultValueSql: "GETDATE()"),
                    UpDateTime = table.Column<DateTime>(type: "datetime", nullable: false, defaultValueSql: "GETDATE()")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_InterviewLists", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "InterviewLists");
        }
    }
}
