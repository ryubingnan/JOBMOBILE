using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace job.DataAccess.Migrations.JobDb
{
    public partial class JobInfoList : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "JobInfoLists",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Category = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Business = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Content = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Seniority = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Hourlypay = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Workplace = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Worktime = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Carfare = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Treatments = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Form = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Period = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Dayoff = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    PhoneNumber = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Supplement = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Other = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Salary = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Treatment = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img1 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info1 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img2 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info2 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img3 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info3 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img4 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info4 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img5 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info5 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img6 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info6 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img7 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info7 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img8 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info8 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img9 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info9 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Img10 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    Info10 = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    CreateTime = table.Column<DateTime>(type: "datetime2", nullable: false, defaultValueSql: "GETDATE()"),
                    UpdateTime = table.Column<DateTime>(type: "datetime2", nullable: false, defaultValueSql: "GETDATE()"),
                    IsDelete = table.Column<bool>(type: "bit", nullable: false, defaultValue: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_JobInfoLists", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "JobInfoLists");
        }
    }
}
