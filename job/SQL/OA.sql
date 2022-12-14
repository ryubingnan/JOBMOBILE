USE [OA]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddrBook]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddrBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepartName] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[Tel] [nvarchar](50) NULL,
	[QQ] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_AddrBook] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[TrueName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[GroupID] [int] NULL,
	[FlagID] [int] NULL,
	[IsCheck] [bit] NULL,
	[AddTime] [datetime] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminGroup]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParentID] [int] NULL,
	[Permission] [nvarchar](500) NULL,
 CONSTRAINT [PK_AdminGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppClass]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParentId] [int] NULL,
	[Gorder] [int] NULL,
	[depth] [int] NULL,
	[ParentPath] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_AppClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applications]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[ClassID] [int] NULL,
	[Contents] [ntext] NULL,
	[ctime] [datetime] NULL,
	[checkstate] [int] NULL,
 CONSTRAINT [PK_Applications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataBak]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataBak](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](50) NULL,
	[FileSize] [nvarchar](50) NULL,
	[FilePath] [nvarchar](300) NULL,
	[ctime] [datetime] NULL,
	[userid] [int] NULL,
 CONSTRAINT [PK_DataBak] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserId] [int] NULL,
	[ToUserId] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Contents] [ntext] NULL,
	[IsShow] [int] NULL,
	[IsShowGet] [int] NULL,
	[ctime] [datetime] NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileManage]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileManage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[FileName] [nvarchar](50) NULL,
	[TypeId] [int] NULL,
	[ParentId] [int] NULL,
	[Lan] [nvarchar](50) NULL,
	[FileUrl] [nvarchar](200) NULL,
	[FileSize] [nvarchar](50) NULL,
	[ctime] [datetime] NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_FileManage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuBar]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuBar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParentID] [int] NULL,
	[depth] [int] NULL,
	[ParentPath] [nvarchar](100) NULL,
	[Href] [nvarchar](300) NULL,
	[Target] [nvarchar](50) NULL,
	[OrderList] [int] NULL,
	[Visible] [int] NULL,
 CONSTRAINT [PK_MenuBar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[ParentId] [int] NULL,
	[Author] [nvarchar](50) NULL,
	[Source] [nvarchar](50) NULL,
	[AddTime] [datetime] NULL,
	[Brief] [nvarchar](300) NULL,
	[Details] [ntext] NULL,
	[VisitCounts] [int] NULL,
	[FlagID] [int] NULL,
	[TypeID] [int] NULL,
	[Visble] [int] NULL,
	[ImgUrl] [nvarchar](300) NULL,
	[Html] [nvarchar](1000) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsGroup]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParentId] [int] NULL,
	[Gorder] [int] NULL,
	[depth] [int] NULL,
	[ParentPath] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_NewsGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffDoc]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffDoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserId] [int] NULL,
	[ToUserId] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Contents] [ntext] NULL,
	[ctime] [datetime] NULL,
 CONSTRAINT [PK_OffDoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Contents] [ntext] NULL,
	[ctime] [datetime] NULL,
	[checkstate] [int] NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyManage]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyManage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[parentid] [int] NULL,
	[Description] [ntext] NULL,
	[ctime] [datetime] NULL,
 CONSTRAINT [PK_PropertyManage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Advance]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Advance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
	[contents] [nvarchar](150) NULL,
	[userID] [nvarchar](50) NULL,
	[datein] [nvarchar](50) NULL,
	[money] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_Advance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ChatList]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ChatList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[contents] [nvarchar](max) NULL,
	[from_userID] [nvarchar](50) NULL,
	[to_userID] [nvarchar](50) NULL,
	[datein] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_ChatList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_GuestNeeds]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_GuestNeeds](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[company] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[mail] [nvarchar](150) NULL,
	[name] [nvarchar](50) NULL,
	[info] [nvarchar](max) NULL,
	[datein] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_GuestNeeds] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ShopScore]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ShopScore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[admin] [nvarchar](150) NULL,
	[khmc] [nvarchar](50) NULL,
	[khdh] [nvarchar](50) NULL,
	[khcz] [nvarchar](50) NULL,
	[khyj] [nvarchar](50) NULL,
	[contents] [nvarchar](max) NULL,
	[datein] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[webname] [nvarchar](max) NULL,
 CONSTRAINT [PK_T_ShopScore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_stock]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_stock](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[num] [nvarchar](50) NULL,
	[stockID] [nvarchar](150) NULL,
	[stockName] [nvarchar](150) NULL,
	[bestBuy] [nvarchar](150) NULL,
	[bestSell] [nvarchar](150) NULL,
	[datein] [nvarchar](150) NULL,
	[url] [nvarchar](500) NULL,
	[other] [nvarchar](500) NULL,
 CONSTRAINT [PK_T_stock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_TelScore]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_TelScore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[admin] [nvarchar](150) NULL,
	[khmc] [nvarchar](50) NULL,
	[khdh] [nvarchar](50) NULL,
	[khcz] [nvarchar](50) NULL,
	[khyj] [nvarchar](50) NULL,
	[contents] [nvarchar](max) NULL,
	[datein] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_UserList]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UserList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mail] [nvarchar](150) NULL,
	[password] [nvarchar](150) NULL,
	[userID] [nvarchar](50) NULL,
	[address] [nvarchar](150) NULL,
	[tel] [nvarchar](150) NULL,
	[fax] [nvarchar](150) NULL,
	[sex] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[regdate] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [nvarchar](150) NULL,
	[qq] [nvarchar](150) NULL,
	[wc] [nvarchar](150) NULL,
	[gslb] [nvarchar](150) NULL,
	[gsmc] [nvarchar](150) NULL,
	[gsgj] [nvarchar](150) NULL,
	[gsdz] [nvarchar](150) NULL,
	[gsdh] [nvarchar](150) NULL,
	[gscz] [nvarchar](150) NULL,
	[gsyx] [nvarchar](150) NULL,
	[date] [nvarchar](150) NULL,
	[shop] [nvarchar](150) NULL,
	[userName] [nvarchar](150) NULL,
	[money] [int] NULL,
	[purview] [nvarchar](50) NULL,
	[fromWeb] [nvarchar](50) NULL,
	[regIdentity] [nvarchar](50) NULL,
	[picture1] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_WebScore]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_WebScore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[admin] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[contents] [nvarchar](max) NULL,
	[datein] [nvarchar](50) NULL,
	[webname] [nvarchar](max) NULL,
	[bath] [nvarchar](max) NULL,
	[category] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](128) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[EmailConfirmeToken] [nvarchar](128) NULL,
	[Gender] [int] NULL,
	[Country] [nvarchar](50) NULL,
	[Address] [nvarchar](150) NULL,
	[QQ] [nvarchar](150) NULL,
	[WeChat] [nvarchar](150) NULL,
	[CreateTime] [datetimeoffset](7) NOT NULL,
	[UpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebSiteConfig]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebSiteConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[HomePage] [nvarchar](200) NULL,
	[Address] [nvarchar](100) NULL,
	[CopyRight] [nvarchar](100) NULL,
	[Tel] [nvarchar](100) NULL,
	[Fax] [nvarchar](100) NULL,
	[KeyWords] [nvarchar](300) NULL,
	[Description] [nvarchar](300) NULL,
	[ICPRecord] [nvarchar](50) NULL,
	[ContactMan] [nvarchar](50) NULL,
	[PostCode] [nvarchar](50) NULL,
	[PageTitle] [nvarchar](50) NULL,
	[PageBTitle] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[LogoUrl] [nvarchar](200) NULL,
	[PoweredBy] [nvarchar](50) NULL,
	[QQ] [nvarchar](200) NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkLog]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[contents] [ntext] NULL,
	[ctime] [datetime] NULL,
	[checkstate] [int] NOT NULL,
 CONSTRAINT [PK_WorkLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkPlan]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[typeid] [int] NULL,
	[title] [nvarchar](50) NULL,
	[contents] [ntext] NULL,
	[ctime] [datetime] NULL,
 CONSTRAINT [PK_WorkPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211208023333_UserMoveToOA', N'5.0.11')
GO
SET IDENTITY_INSERT [dbo].[AddrBook] ON 

INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (5, N'技术部', N'张三5', 1, N'1350000XX00', N'1416759661', N'1416759661@qq.com', N'四川成都')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (6, N'人力资源部', N'李四6', 1, N'1351100XX00', N'1416759662', N'1416759662@qq.com', N'四川成都软件园')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (7, N'技术部', N'张三7', 0, N'1350000XX00', N'1416759661', N'1416759661@qq.com', N'四川成都')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (8, N'人力资源部', N'李四8', 1, N'1351100XX00', N'1416759662', N'1416759662@qq.com', N'四川成都软件园')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (9, N'技术部', N'张三9', 1, N'1350000XX00', N'1416759661', N'1416759661@qq.com', N'四川成都22222www.yyjcw.com')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (10, N'人力资源部', N'李四a', 1, N'1351100XX00', N'1416759662', N'1416759662@qq.com', N'四川成都软件园')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (11, N'技术部', N'张三b', 1, N'1350000XX00', N'1416759661', N'1416759661@qq.com', N'四川成都')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (12, N'人力资源部', N'李四c', 0, N'1351100XX00', N'1416759662', N'1416759662@qq.com', N'四川成都软件园')
INSERT [dbo].[AddrBook] ([ID], [DepartName], [Name], [sex], [Tel], [QQ], [Email], [Address]) VALUES (13, N'人力资源部', N'李四', 1, N'1351100XX00', N'1416759662', N'1416759662@qq.com', N'四川成都软件园')
SET IDENTITY_INSERT [dbo].[AddrBook] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [LoginName], [PassWord], [TrueName], [Email], [GroupID], [FlagID], [IsCheck], [AddTime]) VALUES (1, N'yyjcw', N'7a57a5a743894a0e', N'営業部', N'aa@aa.com', 1, 0, 1, CAST(N'2009-11-26T09:14:12.627' AS DateTime))
INSERT [dbo].[Admin] ([ID], [LoginName], [PassWord], [TrueName], [Email], [GroupID], [FlagID], [IsCheck], [AddTime]) VALUES (2, N'user', N'7a57a5a743894a0e', N'マーケティング部', N'aa@aa.com', 2, 0, 1, CAST(N'2009-11-26T09:33:17.327' AS DateTime))
INSERT [dbo].[Admin] ([ID], [LoginName], [PassWord], [TrueName], [Email], [GroupID], [FlagID], [IsCheck], [AddTime]) VALUES (11, N'rlzy', N'965eb72c92a549dd', N'EC部', N'webmaster@163.com', 11, 0, 1, CAST(N'2010-11-05T19:29:19.157' AS DateTime))
INSERT [dbo].[Admin] ([ID], [LoginName], [PassWord], [TrueName], [Email], [GroupID], [FlagID], [IsCheck], [AddTime]) VALUES (12, N'liuyufeng', N'4245f388ddec8c78', N'技術部', N'tohoweb@hotmail.com', 1, 0, 1, CAST(N'2019-11-05T19:29:19.157' AS DateTime))
INSERT [dbo].[Admin] ([ID], [LoginName], [PassWord], [TrueName], [Email], [GroupID], [FlagID], [IsCheck], [AddTime]) VALUES (16, N'test', N'4621d373cade4e83', N'新人', N'test', 9, 0, 1, CAST(N'2021-08-10T06:56:54.423' AS DateTime))
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[AdminGroup] ON 

INSERT [dbo].[AdminGroup] ([ID], [Name], [ParentID], [Permission]) VALUES (1, N'超级管理员', 0, N'1,13,14,69,73,74,77,17,3,11,12,26,27,82,92,93,83,95,96,97,98,84,99,100,101,85,102,103,104,86,105,106,107,108,109,110,87,111,112,113,88,114,115,116,89,117,118,119,90,120,121,91,122,123,124,125,126,127,129,130,131,132,62,78,79,58,59,60,19,20,21,22,23,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148')
INSERT [dbo].[AdminGroup] ([ID], [Name], [ParentID], [Permission]) VALUES (2, N'管理员', 0, N'1,17,3,11,12,26,27,82,92,93,83,95,96,97,98,84,99,100,101,85,102,103,104,86,105,106,107,108,109,110,87,111,112,113,88,114,115,116,89,117,118,119,90,120,121,91,122,123,124,125,62,79,58,59,60,19,20,21,133')
INSERT [dbo].[AdminGroup] ([ID], [Name], [ParentID], [Permission]) VALUES (9, N'技术部', 0, N'4,13,14,24,25,80,81,49,52,133')
INSERT [dbo].[AdminGroup] ([ID], [Name], [ParentID], [Permission]) VALUES (10, N'市场部门', 0, N'1,13,14,117,118,119,3,26,84,85,102,103,104,86,107,87,88,92,19,11,111,112,113,114,115,116,127,89,59,69,73,78,128,130,131,132,62,136,139,138,137,58,60,77,79,134,135,17,129,83,95,20,21,22,23,141,142')
INSERT [dbo].[AdminGroup] ([ID], [Name], [ParentID], [Permission]) VALUES (11, N'人力资源部', 0, N'82,92,93,83,95,96,97,84,99,100,101,85,102,103,86,105,106,107,108,88,114,115,90,120,121,91,122,123,124,133')
SET IDENTITY_INSERT [dbo].[AdminGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[AppClass] ON 

INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (1, N'aaaa', 0, 0, 1, N'1', N'bbbb')
INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (2, N'bbbbfff', 1, 0, 2, N'1,2', N'bbbbffff')
INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (3, N'cccc', 0, 0, 1, N'3', N'cccc')
INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (4, N'dddd', 0, 0, 1, N'4', N'dddd')
INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (5, N'mmmm', 3, 0, 2, N'3,5', N'mmmmm')
INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (7, N'yyyy', 2, 0, 3, N'1,2,7', N'yyyy')
INSERT [dbo].[AppClass] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (8, N'lllll', 1, 0, 2, N'1,8', N'lllll')
SET IDENTITY_INSERT [dbo].[AppClass] OFF
GO
SET IDENTITY_INSERT [dbo].[Applications] ON 

INSERT [dbo].[Applications] ([ID], [userid], [Title], [ClassID], [Contents], [ctime], [checkstate]) VALUES (1, 1, N'6666666www.yyjcw.com', 3, N'<p>内容内容内容内容内容内容内容内容2222</p>', CAST(N'2011-02-15T22:05:07.140' AS DateTime), 1)
INSERT [dbo].[Applications] ([ID], [userid], [Title], [ClassID], [Contents], [ctime], [checkstate]) VALUES (2, 1, N'222222222222223333333333333333', 7, N'222222222222222222', CAST(N'2011-02-15T22:13:48.173' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Applications] OFF
GO
SET IDENTITY_INSERT [dbo].[DataBak] ON 

INSERT [dbo].[DataBak] ([ID], [FileName], [FileSize], [FilePath], [ctime], [userid]) VALUES (1, N'2009828141038.asa', N'1424.5 kb', N'D:\project\YYCMS2000\Web\App_Data\2009828141038.asa', CAST(N'2009-08-28T14:15:52.827' AS DateTime), 1)
INSERT [dbo].[DataBak] ([ID], [FileName], [FileSize], [FilePath], [ctime], [userid]) VALUES (2, N'2009828142121.asa', N'1424.5 kb', N'D:\project\YYCMS2000\Web\App_Data\2009828142121.asa', CAST(N'2009-08-28T14:21:23.923' AS DateTime), 1)
INSERT [dbo].[DataBak] ([ID], [FileName], [FileSize], [FilePath], [ctime], [userid]) VALUES (3, N'200982814242.asa', N'1424.5 kb', N'D:\project\YYCMS2000\Web\App_Data\200982814242.asa', CAST(N'2009-08-28T14:24:05.157' AS DateTime), 1)
INSERT [dbo].[DataBak] ([ID], [FileName], [FileSize], [FilePath], [ctime], [userid]) VALUES (4, N'200982814573.asa', N'1424.5 kb', N'D:\project\YYCMS2000\Web\App_Data\200982814573.asa', CAST(N'2009-08-28T14:57:04.110' AS DateTime), 1)
INSERT [dbo].[DataBak] ([ID], [FileName], [FileSize], [FilePath], [ctime], [userid]) VALUES (5, N'../App_Data/2009828152243.asa', N'1424.5 kb', N'../App_Data/2009828152243.asa', CAST(N'2009-08-28T15:24:24.030' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DataBak] OFF
GO
SET IDENTITY_INSERT [dbo].[Email] ON 

INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (3, 1, 2, N'测试邮件测试邮件测试邮件', N'<font face="Arial">测试邮件测试邮件测试邮件</font>', 0, 0, CAST(N'2010-11-11T10:10:01.280' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (4, 1, 2, N'测试邮件测试邮件测试邮件', N'<font face="Arial">测试邮件测试邮件测试邮件</font>', 0, 0, CAST(N'2010-11-11T10:10:04.937' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (5, 1, 2, N'测试邮件测试邮件测试邮件', N'<font face="Arial">测试邮件测试邮件测试邮件</font>', 0, 0, CAST(N'2010-11-11T10:10:09.297' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (6, 1, 11, N'ccccccccccccccccccc', N'次次次次', 1, 1, CAST(N'2010-11-11T10:42:58.297' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (7, 1, 11, N'111111', N'111111', 1, 1, CAST(N'2010-11-16T20:48:30.937' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (8, 1, 2, N'111111222222', N'11111122222', 0, 0, CAST(N'2010-11-16T20:48:38.000' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (9, 11, 1, N'5555555555555', N'555555555555555555', 0, 0, CAST(N'2010-11-16T21:07:46.000' AS DateTime))
INSERT [dbo].[Email] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [IsShow], [IsShowGet], [ctime]) VALUES (10, 1, 11, N'aaaaaaabbbbbbb', N'aaaabbbbbbbbb', 0, 0, CAST(N'2010-12-14T23:19:05.030' AS DateTime))
SET IDENTITY_INSERT [dbo].[Email] OFF
GO
SET IDENTITY_INSERT [dbo].[FileManage] ON 

INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (8, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.767' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (9, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (10, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (11, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (12, 2, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (13, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'0', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (14, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (15, 2, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (16, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'0', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (17, 2, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (18, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'0', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (19, 1, N'夜鹰教程网视频教程使用说明', 1, 0, N'1', NULL, N'5953', CAST(N'2010-11-07T00:06:23.000' AS DateTime), N'夜鹰教程网视频教程使用说明')
INSERT [dbo].[FileManage] ([ID], [userid], [FileName], [TypeId], [ParentId], [Lan], [FileUrl], [FileSize], [ctime], [Description]) VALUES (22, 11, N'2222222', 1, 0, N'2', N'\UploadFile\FileManage\2010117173745953.txt', N'5953', CAST(N'2010-11-07T17:37:45.970' AS DateTime), N'dfasdfasdfa')
SET IDENTITY_INSERT [dbo].[FileManage] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuBar] ON 

INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (1, N'トップ', 0, 1, N'2', N'', N'main', 1, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (11, N'産品開発部', 0, 1, N'2', N'', N'main', 2, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (12, N'HR', 0, 1, N'4', N'', N'main', 9, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (13, N'工作一览', 1, 2, N'1,11', N'OaTopPageGszz.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (14, N'工作方法', 1, 2, N'133,14', N'OaTopPageGzsc.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (20, N'创建员工', 12, 1, N'19,20', N'AdminAdd.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (21, N'员工列表', 12, 1, N'19,21', N'AdminList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (22, N'创建部门', 12, 1, N'19,22', N'AdminGroupAdd.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (23, N'管理部门', 12, 1, N'19,23', N'AdminGroupList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (27, N'管理类别', 121, 111, N'223,27', N'NewsGroupList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (58, N'実績管理', 0, 1, N'5', NULL, N'main', 8, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (59, N'新規お客様', 89, 2, N'2,59', N'OaAddList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (60, N'客户一览', 58, 2, N'2,60', N'OaGuestList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (69, N'お客様一覧', 89, 2, N'2,69', N'OaList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (82, N'一览表', 12, 1, N'82', N'OaSecret.aspx', N'main', 4, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (89, N'営業部', 0, 1, N'89', N'Blank.aspx', N'main', 3, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (90, N'お客様', 0, 1, N'90', N'Blank.aspx', N'main', 6, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (91, N'申請', 0, 1, N'91', N'Blank.aspx', N'main', 7, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (93, N'文件列表', 82, 2, N'82,93', N'FileManageList.aspx', N'main', 4, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (95, N'接收公文', 83, 2, N'83,95', N'OffDocList.aspx?type=1', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (96, N'撰写公文', 83, 2, N'83,96', N'OffDocEdit.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (97, N'发送记录', 83, 2, N'83,97', N'OffDocList.aspx?type=2', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (98, N'公文管理', 83, 2, N'83,98', N'OffDocList.aspx?type=3', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (99, N'写邮件', 84, 2, N'84,99', N'EmailEdit.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (100, N'发件箱', 84, 2, N'84,100', N'EmailList.aspx?type=1', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (101, N'收件箱', 84, 2, N'84,101', N'EmailList.aspx?type=2', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (102, N'撰写日志', 85, 2, N'85,102', N'WorkLogEdit.aspx?action=add', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (103, N'报销申请', 1, 2, N'133,103', N'OaTopPageAdvance.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (104, N'审核日志', 85, 2, N'85,104', N'WorkLogList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (105, N'撰写日程', 86, 2, N'86,105', N'WorkPlanAdd.aspx?type=1', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (106, N'我的日程', 86, 2, N'86,106', N'WorkPlanList.aspx?type=1', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (107, N'撰写计划', 86, 2, N'86,107', N'WorkPlanAdd.aspx?type=2', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (108, N'我的计划', 86, 2, N'86,108', N'WorkPlanList.aspx?type=2&nbsp;', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (109, N'查看日程', 86, 2, N'86,109', N'WorkPlanList.aspx?type=1&amp;flag=1', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (110, N'查看计划', 86, 2, N'86,110', N'WorkPlanList.aspx?type=1&amp;flag=2&nbsp;', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (111, N'通販サイト', 89, 2, N'2,58', N'OaSite.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (112, N'管理システム', 89, 2, N'2,57', N'OaSystem.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (113, N'アプリケーション', 89, 2, N'2,113', N'http://www.東洋転職.com/admin/all.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (114, N'人材派遣', 11, 1, N'1,114', N'OaGuestNeeds.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (115, N'工作模块', 112, 1, N'1,115', N'http://www.dejobstem.com/admin/jobAdd.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (116, N'贸易模块', 112, 1, N'1,116', N'http://www.dejobstem.com/admin/shopAdd.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (117, N'内部日报', 1, 1, N'1,117', N'OaTopPageNbrb.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (118, N'网站推广', 1, 2, N'89,118', N'OaTopPageWztg.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (119, N'营销教程', 1, 2, N'89,119', N'OaTopPageYxjc.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (120, N'新增记录', 90, 2, N'90,120', N'AddrBookEdit.aspx?action=add', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (121, N'管理记录', 90, 2, N'90,121', N'AddrBookList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (122, N'提交申请', 91, 2, N'91,122', N'ApplicationsAdd.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (123, N'我的申请', 91, 2, N'91,123', N'ApplicationsList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (125, N'审核申请', 91, 2, N'91,125', N'ApplicationsListCheck.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (126, N'添加类别', 12, 1, N'91,126', N'AppClassAdd.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (136, N'マーケティング部', 0, 1, N'87', N'Blank.aspx', N'main', 4, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (137, N'内部文件', 136, 2, N'87,137', N'OaMoneyInfo.aspx', N'main', 3, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (138, N'企业资料', 136, 2, N'87,138', N'OaMoneyAddList.aspx', N'main', 2, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (139, N'平台资料', 136, 2, N'87,139', N'OaMoney.aspx', N'main', 1, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (140, N'全客户', 12, 1, N'82', N'OaGuestsList.aspx', N'main', 4, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (142, N'职搜易线下', 141, 2, N'142', N'OaZsyXxList.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (143, N'受託開発', 11, 1, N'1,143', N'http://www.chineseteacher.work/admin/all.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (144, N'最愛株', 145, 1, N'82', N'OaStock.aspx', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (146, N'虚拟货币', 145, 1, N'82', N'', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (147, N'石油黄金', 145, 1, N'82', N'', N'main', 0, 1)
INSERT [dbo].[MenuBar] ([ID], [Name], [ParentID], [depth], [ParentPath], [Href], [Target], [OrderList], [Visible]) VALUES (148, N'彩票', 145, 1, N'82', N'OaLottery.aspx', N'main', 0, 1)
SET IDENTITY_INSERT [dbo].[MenuBar] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (5, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.267' AS DateTime), N'', N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (8, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:09.843' AS DateTime), N'', N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (9, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (11, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (14, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.453' AS DateTime), N'', N'订单的印刷工期有多长？', 0, 0, 0, 1, N'', N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (15, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (16, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (17, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'发嵡童下廊剴掛妨刚肟叽a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (18, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (19, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (20, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.203' AS DateTime), N'', N'<p>11</p>', 0, 0, 0, 1, N'', N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (21, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (22, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:08.687' AS DateTime), N'', N'巑穡以帋勊捴妛动耚原&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, N'', N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (23, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (24, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.047' AS DateTime), N'', N'订单的印刷工期有多长？', 0, 0, 0, 1, N'', N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (25, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (26, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (27, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (28, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (29, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (30, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (31, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:57.780' AS DateTime), N'', N'订单的印刷工期有多长？', 0, 0, 0, 1, N'', N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (32, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (46, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (47, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (48, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (49, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (50, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (51, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (52, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (53, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (54, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (55, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (56, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (57, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (58, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (59, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (60, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (61, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (62, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (63, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (64, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (65, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (66, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (67, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (68, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (69, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (70, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (71, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (72, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (73, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (74, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (75, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (76, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (77, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (78, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (79, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (80, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (81, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (82, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (83, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (84, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (85, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (86, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (87, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (88, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (89, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (90, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (91, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (92, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (93, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (94, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (95, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (96, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (97, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (98, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (99, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (100, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (101, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (102, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (103, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (104, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (105, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (106, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (107, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (108, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (109, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (110, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (111, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (112, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (113, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (114, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (115, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (116, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (117, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (118, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (119, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (120, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (121, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
GO
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (122, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (123, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (124, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (125, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (126, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (127, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (128, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (129, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (130, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (131, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (132, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (133, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (134, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (135, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (136, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (137, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (138, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (139, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (140, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (141, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (142, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (143, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (144, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (145, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (146, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (147, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (148, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (149, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (150, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (151, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (152, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (153, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (154, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (155, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (156, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (157, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (158, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (159, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (160, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (161, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (162, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (163, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (164, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (165, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (166, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (167, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (168, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (169, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (170, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (171, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (172, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (173, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (174, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (175, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (176, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (177, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (178, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (179, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (180, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (181, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (182, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (183, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (184, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (185, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (186, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (187, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (188, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (189, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (190, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (191, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (192, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (193, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (194, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (195, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (196, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (197, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (198, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (199, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (200, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (201, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (202, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (203, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (204, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (205, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (206, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (207, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (208, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (209, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (210, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (211, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (212, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (213, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (214, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (215, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (216, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (217, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (218, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (219, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (220, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (221, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
GO
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (222, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (223, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (224, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (225, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (226, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (227, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (228, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (229, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (230, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (231, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (232, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (233, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (234, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (235, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (236, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (237, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (238, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (239, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (240, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (241, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (242, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (243, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (244, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (245, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (246, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (247, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (248, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (249, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (250, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (251, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (252, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'巑穡以帋勊捴妛动耚原ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (253, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (254, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (255, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (256, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (257, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (258, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (259, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (260, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (261, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (262, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (263, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (264, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (265, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (266, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (267, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (268, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (269, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (270, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (271, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (272, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (273, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (274, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (275, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (276, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (277, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (278, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (279, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (280, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (281, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (282, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (283, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (284, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (285, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (286, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (287, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (288, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (289, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (290, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (291, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (292, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (293, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (294, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (295, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (296, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (297, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (298, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (299, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (300, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (301, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (302, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (303, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (304, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (305, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (306, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (307, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (308, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (309, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (310, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (311, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (312, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (313, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (314, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (315, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (316, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (317, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (318, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (319, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (320, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (321, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
GO
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (322, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (323, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (324, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (325, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (326, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (327, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (328, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (329, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (330, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (331, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (332, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (333, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (334, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (335, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (336, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (337, N'dfasdfasdfasd', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:23:06.000' AS DateTime), NULL, N'sdfasdfasdf', 0, 0, 0, 1, N'..\UploadFile\news\200972616236.jpg', N'..\..\html\News\2009917164722722-5.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (338, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164722722-8.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (339, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164722722-9.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (340, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-11.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (341, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-28T21:33:56.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-14.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (342, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713207-15.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (343, N'订单的印刷工期有多长金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713207-16.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (344, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'竑乡廥刋揊奴力肨匚ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-17.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (345, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-18.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (346, N'香港印刷,我们的十年感激 ', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-19.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (347, N'金卡工程今年力推多功能卡', 23, N'张三', N'网易科技', CAST(N'2009-09-11T15:03:13.000' AS DateTime), NULL, N'<p>11</p>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-20.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (348, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713191-21.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (349, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-09-11T14:54:09.000' AS DateTime), NULL, N'仑幡勥挋姊剴肛厨&yacute;a <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713191-22.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (350, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713175-23.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (351, N'香港印刷,我们的十年感激 ', 25, N'张三', N'网易科技', CAST(N'2009-09-11T14:52:11.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-24.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (352, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713175-25.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (353, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-26.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (354, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-27.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (355, N'订单的印刷工期有多长金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-28.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (356, N'金卡工程今年力推多功能卡金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'廑剡揥夋勊聴厛¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-29.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (357, N'订单的印刷工期有多长？', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:25:10.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, N'..\UploadFile\news\200972616259.jpg', N'..\..\html\News\2009917164713160-30.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (358, N'香港印刷,我们的十年感激 ', 26, N'张三', N'网易科技', CAST(N'2009-09-11T15:02:58.000' AS DateTime), NULL, N'订单的印刷工期有多长？', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-31.html')
INSERT [dbo].[News] ([ID], [Title], [ParentId], [Author], [Source], [AddTime], [Brief], [Details], [VisitCounts], [FlagID], [TypeID], [Visble], [ImgUrl], [Html]) VALUES (359, N'金卡工程今年力推多功能卡', 21, N'张三', N'网易科技', CAST(N'2009-07-26T16:24:19.000' AS DateTime), NULL, N'勑捡姥刋胊却¨ýa <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 <font face="Arial">金卡工程今年力推多功能卡 </font></font></font>', 0, 0, 0, 1, NULL, N'..\..\html\News\2009917164713160-32.html')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsGroup] ON 

INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (20, N'公司新闻', 0, 2, 1, N'20', N'公司新闻')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (21, N'行业新闻', 0, 0, 1, N'21', N'行业新闻')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (22, N'热点聚焦', 0, 0, 1, N'22', N'热点聚焦')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (23, N'医疗类', 0, 0, 1, N'23', N'医疗类')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (24, N'教育类', 0, 0, 1, N'24', N'教育类')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (25, N'最新活动', 20, 1, 2, N'20,25', N'最新活动')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (26, N'最新资讯', 20, 0, 2, N'20,26', N'最新资讯')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (27, N'体育类', 0, 1, 1, N'27', N'体育类体育类体育类')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (28, N'足球', 27, 0, 2, N'27,28', N'足球足球足球足球')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (29, N'篮球', 27, 0, 2, N'27,29', N'篮球')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (30, N'中国足球', 28, 0, 3, N'27,28,30', N'中国足球')
INSERT [dbo].[NewsGroup] ([ID], [Name], [ParentId], [Gorder], [depth], [ParentPath], [Description]) VALUES (31, N'上海申花', 30, 0, 4, N'27,28,30,31', N'上海申花')
SET IDENTITY_INSERT [dbo].[NewsGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[OffDoc] ON 

INSERT [dbo].[OffDoc] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [ctime]) VALUES (1, 1, 2, N'aaaaaaaaaa', N'<font face="Arial">aaaaaaaaaa</font>', CAST(N'2010-11-07T21:11:10.423' AS DateTime))
INSERT [dbo].[OffDoc] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [ctime]) VALUES (2, 1, 11, N'ccccccccccccccccccc', N'cccccccccccccccc', CAST(N'2010-11-07T21:11:58.233' AS DateTime))
INSERT [dbo].[OffDoc] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [ctime]) VALUES (4, 1, 11, N'ccccccccccccccccccc', N'ccccccccccccccccc', CAST(N'2010-11-07T21:31:02.813' AS DateTime))
INSERT [dbo].[OffDoc] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [ctime]) VALUES (5, 11, 2, N'测试测试测试测试测试', N'<font face="Arial">测试<font face="Arial">测试<font face="Arial">测试<font face="Arial">测试<font face="Arial">测试<font face="Arial">测试</font></font></font></font></font></font>', CAST(N'2010-11-09T14:30:58.093' AS DateTime))
INSERT [dbo].[OffDoc] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [ctime]) VALUES (6, 11, 1, N'66666666666666', N'66666666666666', CAST(N'2010-11-09T14:31:14.720' AS DateTime))
INSERT [dbo].[OffDoc] ([ID], [FromUserId], [ToUserId], [Title], [Contents], [ctime]) VALUES (7, 11, 1, N'555555577777777', N'777777777777', CAST(N'2010-12-14T23:28:56.797' AS DateTime))
SET IDENTITY_INSERT [dbo].[OffDoc] OFF
GO
SET IDENTITY_INSERT [dbo].[T_Advance] ON 

INSERT [dbo].[T_Advance] ([id], [type], [contents], [userID], [datein], [money]) VALUES (1, N'test1', N'test', N'liubingnan', NULL, NULL)
INSERT [dbo].[T_Advance] ([id], [type], [contents], [userID], [datein], [money]) VALUES (2, N'交通费', N'test2', N'liubingnan', N'2020/01/11 土 12:21:17', NULL)
SET IDENTITY_INSERT [dbo].[T_Advance] OFF
GO
SET IDENTITY_INSERT [dbo].[T_ChatList] ON 

INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (14, N'工作报告(网销部)', N'工作报告(网销部)', N'百度贴吧里发三个贴，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/03 火 21:33:27')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (15, N'工作报告(网销部)', N'工作报告(网销部)', N'本人自己也是在日好多年， 一直也没找到什么心仪的工作，前段时间听朋友给介绍一个平台，叫**职搜易*www.東洋転職.com/*是专门向日本各大中小企业提供招聘服务和人才派遣，打开平台看的时候感觉工作还是蛮多选择的，可以仔细看一下自己适合的，对在日的国人还是有很大帮助的，比如求职攻略，如何填写简历，如何自我介绍这些，宗旨就是彻底解决企业公司招聘人才难得问题。价格低，人才多，保质保量,同时免费提供系统使用, 就是平台的特点，在平台上刊登招聘广告，不仅PC电脑版,同时手机浏览器也可以搜索到**职搜易www.東洋転職.com/*哦，并同时提供中日英文的多语言服务，可以来试一试哦。', N'sunxiaoyu', N'全员', N'2019/12/03 火 21:42:42')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (16, N'工作报告(网销部)', N'工作报告(网销部)', N'马来西亚生活论坛，发帖三章，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/03 火 21:48:20')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (17, N'工作报告(网销部)', N'论坛', N'背包客栈发帖7章，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/03 火 22:08:39')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (18, N'工作报告(网销部)', N'搜索引擎', N'谷歌中国搜索引擎目前无法登录，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/03 火 22:15:34')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (19, N'工作报告(网销部)', N'QQ群', N'QQ账号:2696683363           密码：www.東洋転職.com', N'sunxiaoyu', N'全员', N'2019/12/03 火 22:30:22')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (20, N'工作报告(网销部)', N'QQ群', N'QQ账号: 2829456293          密码：www.東洋転職.com', N'sunxiaoyu', N'全员', N'2019/12/03 火 22:35:26')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (21, N'-类别选择-', N'请选择', N'论坛网址：http://www.so3k.com/bbs/forum-57-1.html          论坛名字：日本留学网         用户名：职搜易         ID:2696683363       密码;www.東洋転職.com', N'sunxiaoyu', N'全员', N'2019/12/03 火 22:45:47')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (22, N'工作报告(网销部)', N'论坛', N'日本留学网目前不能发帖，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/03 火 22:53:54')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (23, N'工作报告(网销部)', N'论坛', N'小春网ID：tohodevelop	密码：fengwuhen!123         目前不能发帖，原因：空间已被锁定无法访问和没有权限', N'sunxiaoyu', N'全员', N'2019/12/03 火 23:01:13')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (24, N'工作报告(网销部)', N'论坛', N'网址：http://jcbaihua.com/flowers/forum.php?mod=forumdisplay&fid=199      论坛名字:百花论坛     用户名：搜易网     密码：www.東洋転職.com      ', N'sunxiaoyu', N'全员', N'2019/12/04 水 20:07:56')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (25, N'工作报告(网销部)', N'网文发布', N' 因为刚来日本没多久，人生地不熟的一个地方，语言沟通也有一些障碍，找工作也是连连失败，常常苦恼，直到前段时间，通过朋友介绍一个平台www.東洋転職.com职搜易，刚开始还不是很相信的，直到我找到了现在这个合适的工作，才发现这个平台还是很不错的哦，这个平台特别亲人的地方就是教你如何填写简历 如何做好自我介绍，相信这个是每个平台都没有的吧，这个平台是专门向日本各大中小企业提供招聘服务和人才派遣的一个平台哦，而且这个平台的宗旨就是彻底解决企业公司招聘人才难得问题。不仅有PC电脑版，同时手机浏览器www.東洋転職.com职搜易也是可以打开的哦 ，价格低，人才多，保质保量,同时免费提供系统使用哟，还在为了找不到适合自己的工作而苦恼的小伙伴们可以试一试哦!', N'sunxiaoyu', N'全员', N'2019/12/04 水 20:39:00')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (26, N'工作报告(网销部)', N'论坛', N'网址：https://www.tokyocn.com/thread-293483-1-1.html    论坛名字：东京华人网    用户名：阳峰明宇      微信注册的   ', N'sunxiaoyu', N'全员', N'2019/12/04 水 20:55:29')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (27, N'工作报告(网销部)', N'论坛', N'东京华人网发帖四章，报告完毕、', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:01:22')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (28, N'工作报告(网销部)', N'论坛', N'网址：www.huarenjie.com    论坛名字：华人街    用户名：职搜易    密码：www.東洋転職.com   ', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:17:27')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (29, N'工作报告(网销部)', N'论坛', N'华人街发帖三章，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:18:01')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (30, N'-类别选择-', N'请选择', N'网址：https://amdada.com    论坛名字：大大华人网    用户名:2696683363     密码：www.東洋転職.com', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:25:17')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (31, N'工作报告(网销部)', N'论坛', N'大大华人网发帖两章，这个论坛每天最多发两章，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:28:41')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (32, N'工作指示', N'论坛', N'http://www.wmp169.com/zgltphb.htm 这个是国内最新的论坛排行，手里活结束后，先把这些论坛的账号注册一下吧，谢谢。', N'liubingnan', N'sunxiaoyu', N'2019/12/04 水 21:29:36')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (33, N'工作报告(网销部)', N'网站', N'新浪博客目前系统维护中，不能完成注册,报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:44:09')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (34, N'工作报告(网销部)', N'论坛', N'网址：www.weibo.com      网址名字：新浪微博     用户名：2691691367      密码：sxy010905', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:46:38')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (35, N'-类别选择-', N'请选择', N'新浪微博发帖一章，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:47:19')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (36, N'工作报告(网销部)', N'网站', N'网址：www.sina.com     网址名字：新浪网     用户名：suNyU05046     密码:sxy010905', N'sunxiaoyu', N'全员', N'2019/12/04 水 21:49:52')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (37, N'工作报告(网销部)', N'网站', N'网址：http://www.sohu.com     网址名字：搜狐     用户名：2696683363     密码:www.東洋転職.comwww.東洋転職.com', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:00:56')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (38, N'工作报告(网销部)', N'网站', N'天涯社区不能完成注册，愿因：要从日本往国内发信息，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:05:47')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (39, N'工作报告(网销部)', N'网站', N'网址：www.qq.com     网址名字：腾讯QQ论坛        用户名：2696683363     密码：www.東洋転職.comwww.東洋転職.com', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:07:32')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (40, N'工作报告(网销部)', N'网站', N'网易博客目前无法注册，原因：从日本往国内发信息    报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:16:01')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (41, N'工作报告(网销部)', N'QQ', N'申请加入QQ群五个，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:33:43')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (42, N'工作报告(网销部)', N'网站', N'https://support.google.com/webmasters/answer/9008080#meta_tag_verification      谷歌搜索引擎', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:40:39')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (43, N'工作报告(网销部)', N'网站', N'360搜索引擎登录完毕，正在审核过程中，报告完毕。', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:45:42')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (44, N'工作报告(网销部)', N'搜索引擎', N'百度搜索网站登录成功，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:55:19')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (45, N'工作报告(网销部)', N'搜索引擎', N'搜狗网站收录提交 成功，正在审核中', N'sunxiaoyu', N'全员', N'2019/12/04 水 22:59:30')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (46, N'工作报告(网销部)', N'搜索引擎', N'hao123网址收录成功，报告完毕', N'sunxiaoyu', N'全员', N'2019/12/04 水 23:03:32')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (47, N'工作报告(网销部)', N'网文', N'', N'lijunyu', N'liubingnan', N'2019/12/13 金 19:41:38')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (48, N'工作报告(网销部)', N'网文', N'初来日本，如何找到一个最适合自己的工作。PC电脑版或手机浏览器搜索<职搜易www.東洋転職.com>,兼职/全职一应俱全，', N'lijunyu', N'liubingnan', N'2019/12/13 金 19:50:10')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (49, N'工作报告(网销部)', N'网文', N'初来日本，如何找到一个最适合自己的工作。PC电脑版或手机浏览器搜索<职搜易www.東洋転職.com>,兼职/全职一应俱全，只需登录网站，创建简历，寻找适合自己的工作或公司，一键发送简历。等待HR面试通知即可。', N'lijunyu', N'liubingnan', N'2019/12/13 金 20:00:08')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (50, N'工作指示', N'网文', N'职搜易网文3添加完毕，请确认。', N'liubingnan', N'全员', N'2019/12/13 金 20:11:58')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (51, N'工作报告(网销部)', N'网站', N'百度贴吧发帖2   跟帖回复13', N'lijunyu', N'liubingnan', N'2019/12/13 金 20:33:14')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (52, N'工作报告(网销部)', N'论坛', N'1.百度文书发帖1个，目前审核中。  2.华人街论坛发帖1个，目前审核这是', N'lijunyu', N'liubingnan', N'2019/12/13 金 21:02:26')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (53, N'工作报告(网销部)', N'论坛', N'1.百度文书发帖1个，目前审核中。  2.华人街论坛发帖1个，目前审核中。 汇报完毕', N'lijunyu', N'liubingnan', N'2019/12/13 金 21:02:45')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (54, N'工作报告(开发部)', N'其他', N'办公系统上添加了线下部，请确认。', N'liubingnan', N'全员', N'2019/12/13 金 21:54:20')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (55, N'工作报告(网销部)', N'QQ', N'1.QQ群新增4个。  2.QQ消息发送90条左右。汇报完毕。', N'lijunyu', N'liubingnan', N'2019/12/13 金 22:02:46')
INSERT [dbo].[T_ChatList] ([id], [department], [type], [contents], [from_userID], [to_userID], [datein]) VALUES (56, N'工作报告(电销部)', N'请选择', N'2021年5月份是A推广；目标为最少10个客户。', N'liubingnan', N'全员', N'2020/06/18 木 15:28:06')
SET IDENTITY_INSERT [dbo].[T_ChatList] OFF
GO
SET IDENTITY_INSERT [dbo].[T_GuestNeeds] ON 

INSERT [dbo].[T_GuestNeeds] ([id], [company], [type], [mail], [name], [info], [datein]) VALUES (1, N'test', N'网站制作', N'rewq', N'dafda', N'fasfda', N'2020/05/17 19:14:57')
INSERT [dbo].[T_GuestNeeds] ([id], [company], [type], [mail], [name], [info], [datein]) VALUES (2, N'test1', N'移动开发', N'test2', N'test3', N'test4', N'2020/05/18 5:21:11')
INSERT [dbo].[T_GuestNeeds] ([id], [company], [type], [mail], [name], [info], [datein]) VALUES (3, N'test2', N'网站制作', N'123', N'123', N'123', N'2020/05/18 5:22:38')
SET IDENTITY_INSERT [dbo].[T_GuestNeeds] OFF
GO
SET IDENTITY_INSERT [dbo].[T_ShopScore] ON 

INSERT [dbo].[T_ShopScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [webname]) VALUES (1, N'liubingnan', N'test1', N'test2', N'test3', N'test4', N'test5', N'2019/12/13 21:39:43', N'线下推广', N'职搜易')
INSERT [dbo].[T_ShopScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [webname]) VALUES (2, N'liubingnan', N'test1', N'test2', N'test3', N'test4', N'test5', N'2019/12/13 21:39:46', N'线下推广', N'职搜易')
SET IDENTITY_INSERT [dbo].[T_ShopScore] OFF
GO
SET IDENTITY_INSERT [dbo].[T_stock] ON 

INSERT [dbo].[T_stock] ([id], [country], [type], [category], [num], [stockID], [stockName], [bestBuy], [bestSell], [datein], [url], [other]) VALUES (11, N'日本股', N'长线', N'看多', N'100', N'東証8306', N'三菱UFJフィナンシャル・グループ', N'1200', N'300', N'2020/08/20 9:37:06', N'https://www.k-zone.co.jp/td/quotes/8306T', N'购入价格420円。适合中长期投资。')
SET IDENTITY_INSERT [dbo].[T_stock] OFF
GO
SET IDENTITY_INSERT [dbo].[T_TelScore] ON 

INSERT [dbo].[T_TelScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [name]) VALUES (10, N'liubingnan', N'日本黒龍江同郷総会', N'08034018795', N'', N'icpatokyo＠gmail.com', N'', N'2020/07/19 20:09:07', N'華人団体', N'石 金楷')
INSERT [dbo].[T_TelScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [name]) VALUES (11, N'liubingnan', N'在日華人珠寶交流会', N'08099774017', N'', N'jcja.since2019＠gmail.com', N'', N'2020/07/19 20:11:08', N'', N'于赢')
INSERT [dbo].[T_TelScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [name]) VALUES (12, N'liubingnan', N'日本華僑華人婦女連合会', N'0334455655', N'0334419466', N'jpwomen0606@yahoo.co.jp', N'', N'2020/07/19 20:17:58', N'', N'')
INSERT [dbo].[T_TelScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [name]) VALUES (13, N'liubingnan', N'麒麟不动产', N'08054119691', N'', N'', N'微信号：wangxiaodong0406', N'2020/07/19 20:27:55', N'房地产', N'王')
INSERT [dbo].[T_TelScore] ([id], [admin], [khmc], [khdh], [khcz], [khyj], [contents], [datein], [type], [name]) VALUES (14, N'liubingnan', N'天行国际', N'090-7244-5678', N'', N'hirose@tk-ks.com', N'微信：TokyoWenSir', N'2020/07/19 20:33:05', N'房地产', N'')
SET IDENTITY_INSERT [dbo].[T_TelScore] OFF
GO
SET IDENTITY_INSERT [dbo].[T_UserList] ON 

INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (20, N'269003133@qq.com', N'hubml230', N'okiwoi', N'大阪市西成区岸里', NULL, NULL, N'男生', N'member', N'2019/11/4 23:16:40', N'日本', N'08042329188', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/4 23:16:40', N'NOOPEN', N'朱煦', 1, N'NO', N'职搜易', NULL, N'/UploadFile/LlsZp/LlsZp2019110423163225.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (21, N'269003133@qq.com', N'hubml230', N'okiwoi', N'大阪市西成区岸里', NULL, NULL, N'男生', N'member', N'2019/11/4 23:18:48', N'日本', N'08042329188', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/4 23:18:48', N'NOOPEN', N'朱煦', 1, N'NO', N'职搜易', NULL, N'/UploadFile/LlsZp/LlsZp2019110423163225.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (22, N'zhuxu1991@foxmail.com', N'hubml230', N'okiwoi', N'大阪市西成区岸里', NULL, NULL, N'男生', N'member', N'2019/11/4 23:21:32', N'日本', N'08042329188', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/4 23:21:32', N'NOOPEN', N'朱煦', 1, N'NO', N'职搜易', NULL, N'/UploadFile/LlsZp/LlsZp20191104232125949.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (23, N'slxing513@gmail.com', N'slx5305380', N'飞一飞', N'', NULL, NULL, N'请选择', N'member', N'2019/11/8 22:43:18', N'请选择', N'', N'请选择', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/8 22:43:18', N'NOOPEN', N'盛隆星', 1, N'NO', N'职搜易', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (24, N'uu801@qq.com', N'woaishion', N'yysyy', N'', NULL, NULL, N'女生', N'memberCompany', N'2019/11/9 12:51:31', N'请选择', N'', N'请选择', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/9 12:51:31', N'NOOPEN', N'郑雯', 1, N'NO', N'职搜易', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (25, N'630459732qq.com', N'963852', N'DFG123', N'兵库县明石市', NULL, NULL, N'男生', N'member', N'2019/11/9 17:43:30', N'日本', N'08045457880', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/9 17:43:30', N'NOOPEN', N'郜玉峰', 1, N'NO', N'职搜易', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (61, N'123', N'123456', N'123456', N'', NULL, NULL, N'男生', NULL, N'2020/6/14 14:18:32', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2020/6/14 14:18:32', NULL, N'123', 1, N'NO', N'FSC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (29, N'1064785752@qq.com', N'zwy714', N'miyuki0714', N'大阪府大阪市東淀川區10-20 202室', NULL, NULL, N'', N'member', N'2019/11/10 12:47:52', N'日本', N'09041051479', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/10 12:47:52', N'NOOPEN', N'坂本 美雪', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (30, N'6180215@tgu.ac.jp', N'zhang123456', N'zyl1351568683', N'大阪府门真市', NULL, NULL, N'男生', N'member', N'2019/11/10 16:47:37', N'日本', N'080-7750-7850', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/10 16:47:37', N'NOOPEN', N'张宇禄', 1, N'NO', N'职搜易PC', NULL, N'/UploadFile/LlsZp/LlsZp2019111016477818.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (31, N'6180215@tgu.ac.jp', N'zhang123456', N'zyl1351568683', N'大阪府门真市', NULL, NULL, N'男生', N'member', N'2019/11/10 16:49:31', N'日本', N'080-7750-7850', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/10 16:49:31', N'NOOPEN', N'张宇禄', 1, N'NO', N'职搜易PC', NULL, N'/UploadFile/LlsZp/LlsZp2019111016477818.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (17, N'supervarian@gmail.com', N'8705647zxz', N'akatsuki', N'大阪市新今里', NULL, NULL, N'男生', N'member', N'2019/11/2 21:12:21', N'日本', N'08042332312', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/2 21:12:21', N'NOOPEN', N'周晓', 1, N'NO', N'职搜易', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (18, N'401365927@qq.com', N'c401365', N'安逸', N'大阪市東淀川区大桐3-16-14', NULL, NULL, N'男生', N'member', N'2019/11/4 9:21:30', N'日本', N'', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/4 9:21:30', N'NOOPEN', N'蔡家伟', 1, N'NO', N'职搜易', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (32, N'1351568683@qq.com', N'zhang123456', N'zyl1351568683', N'大阪府门真市', NULL, NULL, N'男生', N'member', N'2019/11/10 16:59:23', N'日本', N'080-7750-7850', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/10 16:59:23', N'NOOPEN', N'张宇禄', 1, N'NO', N'职搜易PC', NULL, N'/UploadFile/LlsZp/LlsZp2019111016595554.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (33, N'406657500@qq.com', N'Xbb19900428', N'406657500', N'東京都北区岩淵8番10号', NULL, NULL, N'', N'member', N'2019/11/10 23:28:27', N'中国', N'07074919838', N'QQ', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/10 23:28:27', N'NOOPEN', N'席炜宸', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (34, N'jiashujia123@gmail.com', N'060224', N'jiashujia110', N'京都', NULL, NULL, N'', N'member', N'2019/11/11 2:56:42', N'中国', N'07014102369', N'请选择联络方式', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/11 2:56:42', N'NOOPEN', N'贾樹嘉', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (37, N'995739848@qq.com', N'asd12345', N'Asuna', N'', NULL, NULL, N'', N'member', N'2019/11/15 16:49:55', N'中国', N'', N'请选择联络方式', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/15 16:49:55', N'NOOPEN', N'冯雯昊', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (39, N'525474165@qq.com', N'Lihaifeng', N'525474165', N'大阪市東淀川区豐里3丁目', NULL, NULL, N'', N'member', N'2019/11/16 13:15:42', N'中国', N'09092511488', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/16 13:15:42', N'NOOPEN', N'李海峰', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (28, N'1124084627@qq.com', N'520273', N'1124084627', N'大阪城東区関目2丁目12-28', NULL, NULL, N'', N'member', N'2019/11/10 11:21:04', N'中国', N'08097165203', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/10 11:21:04', N'NOOPEN', N'孔亮', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (35, N'648680611@qq.com', N'LOVEis520', N'Alen', N'大阪市浪速区下寺1-3-6', NULL, NULL, N'', N'member', N'2019/11/11 12:03:57', N'中国', N'08075561778', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/11 12:03:57', N'NOOPEN', N'刘冬铭', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (36, N'1097797205@qq.com', N'yangjingqi', N'1097797205', N'大阪市西成区旭3丁目4番20号寿商会ムンｼｬン207号', NULL, NULL, N'', N'member', N'2019/11/13 19:01:39', N'中国', N'08041285777', N'请选择联络方式', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/13 19:01:39', N'NOOPEN', N'杨景琦', 1, N'NO', N'职搜易mobile', NULL, N'/UploadFile/LlsZp/LlsZp2019111319133732.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (38, N'tianqicoco@icloud.com', N'tianqi123', N'coco', N'堺市北区新金岡町2-4-7-208', NULL, NULL, N'', N'member', N'2019/11/16 11:16:29', N'中国', N'08061276938', N'请选择联络方式', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/16 11:16:29', N'NOOPEN', N'趙鳳', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (13, N'tohoweb@hotmail.com', N'fengwuhen', N'liubingnan', N'大阪府天王寺', NULL, NULL, N'男生', N'member', N'2019/8/25 10:43:16', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/8/25 10:43:16', N'NOOPEN', N'劉氷男', 1, N'NO', N'易途东', NULL, N'/UploadFile/LlsZp/ZHAOPINFABU120200201191031403.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (40, N'15110221372@sina.cn', N'76394853', N'15110221372', N'东京', NULL, NULL, N'男生', N'member', N'2019/11/19 17:24:17', N'日本', N'15110221372', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/19 17:24:17', N'NOOPEN', N'张昊', 1, N'NO', N'职搜易PC', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (41, N'995739848＠qq.com', N'asd12345', N'Asuna', N'城東区鴫野西2-2-8', NULL, NULL, N'女生', N'member', N'2019/11/20 11:23:08', N'日本', N'08032596996', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/20 11:23:08', N'NOOPEN', N'冯雯昊', 1, N'NO', N'职搜易PC', NULL, N'/UploadFile/LlsZp/LlsZp2019112011230548.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (42, N'995739848＠qq.com', N'asd12345', N'Asuna', N'城東区鴫野西2-2-8', NULL, NULL, N'女生', N'member', N'2019/11/20 11:28:11', N'日本', N'08032596996', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/20 11:28:11', N'NOOPEN', N'冯雯昊', 1, N'NO', N'职搜易PC', NULL, N'/UploadFile/LlsZp/LlsZp2019112011230548.jpg')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (43, N'1004701192@qq.com', N'bb582639004', N'c1004701192', N'大阪市中央区高津2丁目1-16', NULL, NULL, N'', N'member', N'2019/11/21 21:17:50', N'中国', N'08091691666', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/21 21:17:50', N'NOOPEN', N'陈赆文', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (44, N'tangenchao@gmail.com', N'123456789.0', N'1123017395', N'大阪市西区靱本町二丁目5-15-404', NULL, NULL, N'', N'member', N'2019/11/24 19:34:34', N'中国', N'08074568999', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/24 19:34:34', N'NOOPEN', N'唐恩超', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (45, N'1015898457@qq.com', N'13995303299', N'kisaki1016', N'門真市', NULL, NULL, N'', N'member', N'2019/11/26 12:01:12', N'中国', N'8099909433', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/26 12:01:12', N'NOOPEN', N'马龙', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (47, N'849533243@qq.com', N'zjysh723', N'zjysh723', N'左京区田中飛鳥井町45－3 ミリオスポツ 206号室', NULL, NULL, N'男生', N'member', N'2019/11/30 14:57:41', N'日本', N'08073622333', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/30 14:57:41', N'NOOPEN', N'张京扬', 1, N'NO', N'职搜易PC', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (48, N'849533243@qq.com', N'zjysh723', N'zjysh723', N'左京区田中飛鳥井町45－3 ミリオスポツ 206号室', NULL, NULL, N'男生', N'member', N'2019/11/30 15:00:51', N'日本', N'08073622333', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/30 15:00:51', N'NOOPEN', N'张京扬', 1, N'NO', N'职搜易PC', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (49, N'1401055326@qq.com', N'dashan666', N'wzs1314', N'杉本町', NULL, NULL, N'', N'会员', N'2019/12/6 19:01:35', N'中国', N'08072771586', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/12/6 19:01:35', N'NOOPEN', N'武宗山', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (50, N'zelei_zhang@163.com', N'123456', N'nuaazzl', N'京都市左京区田中高原町', NULL, NULL, N'', N'member', N'2020/1/4 15:08:12', N'中国', N'080-2596-1982', N'QQ', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2020/1/4 15:08:12', N'NOOPEN', N'张泽磊', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (51, N'435675053@qq.com', N'2008aoyun', N'435675053', N'大阪市西区', NULL, NULL, N'', N'member', N'2020/3/19 17:56:38', N'中国', N'07032976618', N'请选择联络方式', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2020/3/19 17:56:38', N'NOOPEN', N'鞠洪瑜', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (19, N'401365927@qq.com', N'c401365', N'安逸', N'大阪市東淀川区大桐3-16-14', NULL, NULL, N'男生', N'member', N'2019/11/4 11:26:06', N'日本', N'', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/4 11:26:06', N'NOOPEN', N'蔡家伟', 1, N'NO', N'职搜易', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (46, N'1102462768@qq.com', N'vijpYh-1husgu-pewkon', N'11163', N'京都市下京区', NULL, NULL, N'', N'member', N'2019/11/26 12:48:01', N'中国', N'08036900807', N'微信', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2019/11/26 12:48:01', N'NOOPEN', N'付双赫', 1, N'NO', N'职搜易mobile', NULL, N'')
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (55, N'test1@hotmail.com', N'test1', N'test1', N'', NULL, NULL, N'男生', N'个人', N'2020/5/29 13:32:44', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2020/5/29 13:32:44', NULL, N'test1', 1, N'NO', N'JJD_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (62, N'456', N'456', N'456', N'', NULL, NULL, N'女生', N'girl', N'2020/6/3 16:45:36', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2020/6/13 18:50:19', NULL, N'123', 1, N'NO', N'JJC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (57, N'123', N'123', N'123', N'', NULL, NULL, N'男生', N'member', N'2020/6/3 16:45:36', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2021/12/19 11:05:25', NULL, N'123', 1, N'NO', N'JJC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (64, N'', N'girl', N'girl', N'', NULL, NULL, N'女', N'girl', N'2020/6/27 10:48:08', N'岩手県', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2020/6/27 10:48:08', NULL, N'girl', 1, N'NO', N'FSHC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (65, N'fasdf', N'123', N'gfdsg', N'', NULL, NULL, NULL, NULL, N'2020/7/2 11:29:49', NULL, N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2020/7/2 11:29:49', NULL, N'fasfda', 1, N'NO', N'FSC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (66, N'1', N'1', N'1', N'', NULL, NULL, N'男生', N'个人', N'2021/12/4 18:39:41', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2021/12/4 18:39:41', NULL, N'1', 1, N'NO', N'JJC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (67, N'1', N'1', N'2', N'1', NULL, NULL, N'男生', N'个人', N'2021/12/4 18:40:52', N'中国', N'1', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2021/12/4 18:40:52', NULL, N'1', 1, N'NO', N'JJC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (68, N'222', N'222', N'222', N'', NULL, NULL, N'男生', N'个人', N'2021/12/4 21:53:14', N'中国', N'', N'', NULL, NULL, N'', NULL, N'', N'', N'', N'', N'2021/12/4 21:53:14', NULL, N'222', 1, N'NO', N'JJC_Pc_Cn', NULL, NULL)
INSERT [dbo].[T_UserList] ([id], [mail], [password], [userID], [address], [tel], [fax], [sex], [type], [regdate], [country], [phone], [qq], [wc], [gslb], [gsmc], [gsgj], [gsdz], [gsdh], [gscz], [gsyx], [date], [shop], [userName], [money], [purview], [fromWeb], [regIdentity], [picture1]) VALUES (63, N'', N'liuyufeng123', N'liuyufeng123', N'', NULL, NULL, N'女', N'girl', N'2020/6/23 9:56:35', N'富山県', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2020/6/23 9:56:35', NULL, N'test1', 1, N'NO', N'FSHC_Pc_Cn', NULL, NULL)
SET IDENTITY_INSERT [dbo].[T_UserList] OFF
GO
SET IDENTITY_INSERT [dbo].[T_WebScore] ON 

INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (1, NULL, N'网络推广', N'fasfaf', N'2019/09/23 12:11:56', N'职搜易', NULL, N'邮件广告')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (2, NULL, N'网络推广', N'fasfaf', N'2019/09/23 12:12:13', N'职搜易', NULL, N'邮件广告')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (3, N'liubingnan', N'网络推广', N'123', N'2019/09/23 12:23:55', N'职搜易', NULL, N'QQ群发帖')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (4, NULL, N'网络推广', N'fasfa', N'2019/09/23 12:58:02', N'家家盼', NULL, N'微信公众号')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (5, NULL, N'网络推广', N'fasfa', N'2019/09/23 12:58:07', N'家家盼', NULL, N'微信公众号')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (8, N'liubingnan', N'网络推广', N'', N'2019/09/23 15:43:38', N'家家宝', NULL, N'微信群发帖')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (6, NULL, N'网络推广', N'fafa', N'2019/09/23 13:00:38', N'富士山1688', NULL, N'微信公众号')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (7, NULL, N'网络推广', N'fafa', N'2019/09/23 13:00:43', N'富士山1688', NULL, N'微信公众号')
INSERT [dbo].[T_WebScore] ([id], [admin], [type], [contents], [datein], [webname], [bath], [category]) VALUES (9, N'liubingnan', N'网络推广', N'df', N'2019/09/25 6:37:06', N'登峰开发', NULL, N'微信群发帖')
SET IDENTITY_INSERT [dbo].[T_WebScore] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Name], [Phone], [Email], [EmailConfirmed], [EmailConfirmeToken], [Gender], [Country], [Address], [QQ], [WeChat], [CreateTime], [UpdateTime]) VALUES (1, N'Admin', N'123456', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-12-13T22:38:46.5900000+00:00' AS DateTimeOffset), CAST(N'2021-12-13T22:38:46.5900000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WebSiteConfig] ON 

INSERT [dbo].[WebSiteConfig] ([ID], [Name], [HomePage], [Address], [CopyRight], [Tel], [Fax], [KeyWords], [Description], [ICPRecord], [ContactMan], [PostCode], [PageTitle], [PageBTitle], [Email], [LogoUrl], [PoweredBy], [QQ]) VALUES (1, N'登峰开发OA管理系统', N'http://www.yyjcw.com', N'登峰开发OA管理系统', N'CopyRights&nbsp;2009-2010', N'13540293140', N'028-88888888', N'登峰开发OA管理系统', N'登峰开发OA管理系统', N'蜀ICP备xxxx号', N'汤先生', N'610225', N'登峰开发OA管理系统', N'登峰开发OA管理系统', N'308242651@qq.com', N'images\adminlogo.png', N'登峰开发OA管理系统', N'308242651')
SET IDENTITY_INSERT [dbo].[WebSiteConfig] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkLog] ON 

INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (2, 0, N'asdfasdfadsf', N'dsfasdfasdf', CAST(N'2010-11-03T22:25:08.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (3, 0, N'fasdfasdf', N'sdfasdfasd', CAST(N'2010-11-03T22:26:40.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (4, 0, N'asdfasdfasdf', N'asdfasdfasdf', CAST(N'2010-11-03T22:26:48.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (5, 0, N'asdasdasd', N'asdasdasd', CAST(N'2010-11-03T22:36:37.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (6, 0, N'我们刚刚作出了一个非常艰难的决定', N'<p class="box box_1">当您看到这封信的时候，我们刚刚作出了一个非常艰难的决定。在360公司停止对QQ进行外挂侵犯和恶意诋毁之前，我们决定将在装有360软件的电脑上停止运行QQ软件。我们深知这样会给您造成一定的不便，我们诚恳地向您致歉。同时也把作出这一决定的原因写在下面，盼望得到您的理解和支持。</p>', CAST(N'2010-11-03T23:06:26.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (7, 0, N'我们刚刚作出了一个非常艰难的决定', N'<p class="box box_1">近期360强制推广并胁迫用户安装非法外挂&ldquo;扣扣保镖&rdquo;。该软件劫持了QQ的安全模块，导致了QQ失去相关功能。在360软件运行环境下，我们无法保障您的QQ帐户安全。360控制了整个QQ聊天入口，QQ所有数据，包括登录帐户、密码、好友、 聊天信息都得被360搜查完，才送还给QQ用户，相当于每个用户自家门口不请自来的&ldquo;保镖&rdquo;，每次进门都被&ldquo;保镖&rdquo;强制搜身才能进自己家门。我们被逼迫无奈，只能用这样的方式保护您的QQ帐户不被恶意劫持。</p>', CAST(N'2010-11-03T23:06:41.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (9, 222, N'33', N'44', CAST(N'2010-11-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (10, 555, N'1', N'1', CAST(N'2010-02-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (11, 2, N'2', N'2', CAST(N'2010-02-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (12, 2, N'2', N'2', CAST(N'2010-02-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (13, 2, N'2', N'2', CAST(N'2010-02-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (14, 1, N'aaaaaaa', N'aaaaaaaa', CAST(N'2010-11-20T14:00:16.577' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (15, 1, N'aaaaaaaccccccc', N'aaaaaaaacccccc', CAST(N'2010-11-20T14:02:39.030' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (16, 1, N'aaaaaaaccccccc111', N'aaaaaaaacccccc1111', CAST(N'2010-11-20T14:05:42.640' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (17, 1, N'11111', N'111111', CAST(N'2010-11-20T14:43:49.483' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (18, 1, N'11111', N'111111', CAST(N'2010-11-20T14:44:04.610' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (19, 1, N'11111', N'111111', CAST(N'2010-11-20T14:49:08.577' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (20, 1, N'11111', N'111111', CAST(N'2010-11-20T14:50:34.877' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (21, 1, N'11111', N'111111', CAST(N'2010-11-20T14:50:38.827' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (22, 1, N'11111', N'111111', CAST(N'2010-11-20T15:22:46.407' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (23, 1, N'11111', N'111111', CAST(N'2010-11-20T15:22:55.657' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (25, 1, N'11111', N'111111', CAST(N'2010-11-20T15:30:16.453' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (26, 1, N'11111', N'111111', CAST(N'2010-11-20T15:30:19.390' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (27, 1, N'11111', N'111111', CAST(N'2010-11-20T15:35:29.110' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (28, 1, N'11111', N'111111', CAST(N'2010-11-20T15:35:31.203' AS DateTime), 1)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (35, 11, N'ccccccccccccccccc', N'cccccccccccccc', CAST(N'2010-11-27T16:23:40.483' AS DateTime), 0)
INSERT [dbo].[WorkLog] ([ID], [userid], [Title], [contents], [ctime], [checkstate]) VALUES (36, 11, N'1111111111111', N'<p>111111111111</p>', CAST(N'2010-11-27T16:23:46.610' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[WorkLog] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkPlan] ON 

INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (1, 1, 0, N'22222夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-01-02T09:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (2, 1, 0, N'夜鹰教程网e22222xt基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (3, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (4, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (5, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (6, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (7, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (8, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (9, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (10, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (11, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (12, 1, NULL, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (13, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (14, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (15, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (23, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (27, 1, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (28, 1, NULL, N' 夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2011-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (29, 1, NULL, N'www.cdbaba.cn', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了<A href="http://www.cdbaba.cn">www.cdbaba.cn</A>', CAST(N'2011-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (30, 1, NULL, N'夜鹰教程网ext基础222222', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了11111', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (31, 1, NULL, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (32, 2, 0, N'夜鹰教程网ext基础教程马上录制完毕了', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (33, 1, NULL, N'www.yyjcw.com', N'&nbsp;夜鹰教程网ext基础教程马上录制完毕了', CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (35, 1, NULL, N'aaaa', N'&nbsp;bbb', CAST(N'2011-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (36, 1, NULL, N'www.yyjcw.com祝愿大家新年快乐', N'&nbsp;<A href="http://www.yyjcw.com">www.yyjcw.com</A>祝愿大家新年快乐，学习进步！！！', CAST(N'2011-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (37, 1, 0, N'111111', N'&nbsp;11111111', CAST(N'2011-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[WorkPlan] ([ID], [userid], [typeid], [title], [contents], [ctime]) VALUES (38, 1, NULL, N'122222', N'&nbsp;11111', CAST(N'2011-01-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[WorkPlan] OFF
GO
ALTER TABLE [dbo].[Email] ADD  CONSTRAINT [DF_Email_IsShow]  DEFAULT ((0)) FOR [IsShow]
GO
ALTER TABLE [dbo].[MenuBar] ADD  CONSTRAINT [DF_MenuBar_Target]  DEFAULT (N'main') FOR [Target]
GO
ALTER TABLE [dbo].[MenuBar] ADD  CONSTRAINT [DF_MenuBar_OrderList]  DEFAULT (0) FOR [OrderList]
GO
ALTER TABLE [dbo].[MenuBar] ADD  CONSTRAINT [DF_MenuBar_Visible]  DEFAULT (1) FOR [Visible]
GO
ALTER TABLE [dbo].[NewsGroup] ADD  CONSTRAINT [DF_NewsGroup_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[NewsGroup] ADD  CONSTRAINT [DF_NewsGroup_Gorder]  DEFAULT ((0)) FOR [Gorder]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([bit],(0),0)) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  StoredProcedure [dbo].[BatchDelete]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BatchDelete]
@TableName nvarchar(50),
@idstr nvarchar(200)
AS
BEGIN
	DECLARE @strSql nvarchar(1000)
	SET @strSql=
	N'DELETE FROM '+@TableName+' WHERE id IN ('+@idstr+')'
	EXEC sp_executesql @strSql
END
GO
/****** Object:  StoredProcedure [dbo].[GetPageList]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPageList]
@TableName nvarchar(50),
@PageIndex int,
@PageSize int,
@strWhere nvarchar(500),
@Recordcount int out
AS 
BEGIN
	DECLARE @strSql1 nvarchar(1000),
			@strSql2 nvarchar(1000)
	SET @strSql1=
	N'select top '+str(@PageSize)+' * from '+@TableName+' where id not in (select top '+str(@PageSize*(@PageIndex-1))+' id from '+@TableName+' where '+@strWhere+ ' order by id desc) and '+@strWhere+' order by id desc '
	SET @strSql2=
	N'select @Recordcount=count(*) from '+@TableName+' where '+@strWhere 
	EXEC sp_executesql @strSql1
	EXEC sp_executesql @strSql2,N'@Recordcount int out',@Recordcount out
END

GO
/****** Object:  StoredProcedure [dbo].[VirtualBatchDelete]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VirtualBatchDelete]
@TableName nvarchar(50),
@strId nvarchar(200),
@type int
AS
BEGIN
DECLARE @strSql nvarchar(1000)
IF @type=1
SET @strSql=N' update '+@TableName+' set IsShow=1 where id in ('+@strId+')'
ELSE
SET @strSql=N' update '+@TableName+' set IsShowGet=1 where id in ('+@strId+')'
EXEC sp_executesql @strSql
END 
GO
/****** Object:  StoredProcedure [dbo].[WorkLogAdd]    Script Date: 2021/12/19 11:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[WorkLogAdd]
@userid int,
@Title nvarchar(50),
@contents ntext,
@ctime datetime,
@checkstate int,
@NewId int output
AS 
BEGIN
INSERT INTO WorkLog (userid,Title,contents,ctime,checkstate) VALUES (@userid,@Title,@contents,@ctime,@checkstate) 
SET @NewId=@@IDENTITY 
END







GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'DepartName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AddrBook', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自动编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'Gorder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'ParentPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppClass', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Applications', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Applications', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Applications', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Applications', @level2type=N'COLUMN',@level2name=N'ctime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Applications', @level2type=N'COLUMN',@level2name=N'checkstate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Email', @level2type=N'COLUMN',@level2name=N'FromUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Email', @level2type=N'COLUMN',@level2name=N'ToUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Email', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Email', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1表示虚拟删除 默认值为0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Email', @level2type=N'COLUMN',@level2name=N'IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Email', @level2type=N'COLUMN',@level2name=N'ctime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传者标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1表示文件管理 2表示文档管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件的语言 1表示简体中文 0表示英语' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'Lan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'ctime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件的描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FileManage', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OffDoc', @level2type=N'COLUMN',@level2name=N'FromUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OffDoc', @level2type=N'COLUMN',@level2name=N'ToUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OffDoc', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OffDoc', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OffDoc', @level2type=N'COLUMN',@level2name=N'ctime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PropertyManage', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PropertyManage', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PropertyManage', @level2type=N'COLUMN',@level2name=N'parentid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PropertyManage', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PropertyManage', @level2type=N'COLUMN',@level2name=N'ctime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作者标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkLog', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkLog', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkLog', @level2type=N'COLUMN',@level2name=N'contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'撰写时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkLog', @level2type=N'COLUMN',@level2name=N'ctime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkLog', @level2type=N'COLUMN',@level2name=N'checkstate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkPlan', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类 1表示日程 2表示计划 3表示工作总结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkPlan', @level2type=N'COLUMN',@level2name=N'typeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkPlan', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkPlan', @level2type=N'COLUMN',@level2name=N'contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'撰写的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WorkPlan', @level2type=N'COLUMN',@level2name=N'ctime'
GO
