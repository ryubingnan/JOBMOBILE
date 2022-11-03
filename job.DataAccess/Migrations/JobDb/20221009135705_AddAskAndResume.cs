using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace job.DataAccess.Migrations.JobDb
{
    public partial class AddAskAndResume : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AskLists",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Content = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Other = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    MemberID = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    DateTime = table.Column<DateTime>(type: "datetime2", nullable: false, defaultValueSql: "GETDATE()")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AskLists", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ResumeLists",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Katakana = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Sex = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    BirthDate = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Age = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    PostCode = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Prefectures = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Address = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Station = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    FixedPhone = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Consort = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Dependents = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    AcademicBackground1 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    AcademicBackground2 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    AcademicBackground3 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Qualification = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Language = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    SelfPR = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobCareer1 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobCareer2 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobCareer3 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobCareer4 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobCareer5 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    JobCareer6 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Experience = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Conditions = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Content = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Other = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    MemberID = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    DateTime = table.Column<DateTime>(type: "datetime2", nullable: false, defaultValueSql: "GETDATE()")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ResumeLists", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AskLists");

            migrationBuilder.DropTable(
                name: "ResumeLists");

            migrationBuilder.DropColumn(
                name: "MemberID",
                table: "JobInfoLists");
        }
    }
}
