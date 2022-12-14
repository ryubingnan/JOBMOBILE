USE [HQCY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](150) NULL,
	[img1] [nvarchar](150) NULL,
	[country] [nvarchar](50) NULL,
	[title] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [int] NULL,
	[num] [int] NULL,
	[totalPrice] [int] NULL,
	[del] [bit] NULL,
	[datein] [nvarchar](50) NULL,
	[userID] [nvarchar](50) NULL,
	[keyword] [nvarchar](50) NULL,
	[payID] [nvarchar](150) NULL,
	[info] [nvarchar](max) NULL,
	[dateEnd] [nvarchar](50) NULL,
	[dateStart] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFood]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFood](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
	[priceNew] [int] NULL,
	[area] [nvarchar](50) NULL,
	[info] [nvarchar](max) NULL,
	[contents] [nvarchar](max) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[info11] [nvarchar](500) NULL,
	[info12] [nvarchar](500) NULL,
	[info13] [nvarchar](500) NULL,
	[info14] [nvarchar](500) NULL,
	[info15] [nvarchar](500) NULL,
	[info16] [nvarchar](500) NULL,
	[info17] [nvarchar](500) NULL,
	[info18] [nvarchar](500) NULL,
	[info19] [nvarchar](500) NULL,
	[info20] [nvarchar](500) NULL,
	[img1] [nvarchar](max) NULL,
	[img2] [nvarchar](max) NULL,
	[img3] [nvarchar](max) NULL,
	[img4] [nvarchar](max) NULL,
	[img5] [nvarchar](max) NULL,
	[img6] [nvarchar](max) NULL,
	[img7] [nvarchar](max) NULL,
	[img8] [nvarchar](max) NULL,
	[img9] [nvarchar](max) NULL,
	[img10] [nvarchar](max) NULL,
	[img11] [nvarchar](max) NULL,
	[img12] [nvarchar](max) NULL,
	[img13] [nvarchar](max) NULL,
	[img14] [nvarchar](max) NULL,
	[img15] [nvarchar](max) NULL,
	[img16] [nvarchar](max) NULL,
	[img17] [nvarchar](max) NULL,
	[img18] [nvarchar](max) NULL,
	[img19] [nvarchar](max) NULL,
	[img20] [nvarchar](max) NULL,
	[datein] [nvarchar](50) NULL,
	[pid] [nvarchar](150) NULL,
	[map] [nvarchar](max) NULL,
	[video] [nvarchar](max) NULL,
	[supplier] [nvarchar](50) NULL,
	[features] [nvarchar](max) NULL,
	[category] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGuide]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGuide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
	[priceNew] [int] NULL,
	[area] [nvarchar](50) NULL,
	[info] [nvarchar](max) NULL,
	[contents] [nvarchar](max) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[img1] [nvarchar](500) NULL,
	[img2] [nvarchar](500) NULL,
	[img3] [nvarchar](500) NULL,
	[img4] [nvarchar](500) NULL,
	[img5] [nvarchar](500) NULL,
	[img6] [nvarchar](500) NULL,
	[img7] [nvarchar](500) NULL,
	[img8] [nvarchar](500) NULL,
	[img9] [nvarchar](500) NULL,
	[img10] [nvarchar](500) NULL,
	[datein] [nvarchar](50) NULL,
	[pid] [nvarchar](150) NULL,
	[map] [nvarchar](500) NULL,
	[video] [nvarchar](500) NULL,
	[supplier] [nvarchar](500) NULL,
	[features] [nvarchar](max) NULL,
	[category] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblGuide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPickup]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPickup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
	[priceNew] [int] NULL,
	[area] [nvarchar](50) NULL,
	[info] [nvarchar](max) NULL,
	[contents] [nvarchar](max) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[img1] [nvarchar](500) NULL,
	[img2] [nvarchar](500) NULL,
	[img3] [nvarchar](500) NULL,
	[img4] [nvarchar](500) NULL,
	[img5] [nvarchar](500) NULL,
	[img6] [nvarchar](500) NULL,
	[img7] [nvarchar](500) NULL,
	[img8] [nvarchar](500) NULL,
	[img9] [nvarchar](500) NULL,
	[img10] [nvarchar](500) NULL,
	[datein] [nvarchar](50) NULL,
	[pid] [nvarchar](150) NULL,
	[map] [nvarchar](150) NULL,
	[video] [nvarchar](150) NULL,
	[supplier] [nvarchar](150) NULL,
	[featrues] [nvarchar](max) NULL,
	[category] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPickup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlay]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[address] [nvarchar](350) NULL,
	[area] [nvarchar](50) NULL,
	[volumeRate] [nvarchar](50) NULL,
	[traffic] [nvarchar](350) NULL,
	[price] [int] NULL,
	[type] [nvarchar](50) NULL,
	[homeLevel] [nvarchar](50) NULL,
	[contents] [nvarchar](max) NULL,
	[img1] [nvarchar](max) NULL,
	[img2] [nvarchar](max) NULL,
	[img3] [nvarchar](max) NULL,
	[img4] [nvarchar](max) NULL,
	[img5] [nvarchar](max) NULL,
	[img6] [nvarchar](max) NULL,
	[img7] [nvarchar](max) NULL,
	[img8] [nvarchar](max) NULL,
	[img9] [nvarchar](max) NULL,
	[img10] [nvarchar](max) NULL,
	[img11] [nvarchar](max) NULL,
	[img12] [nvarchar](max) NULL,
	[img13] [nvarchar](max) NULL,
	[img14] [nvarchar](max) NULL,
	[img15] [nvarchar](max) NULL,
	[img16] [nvarchar](max) NULL,
	[img17] [nvarchar](max) NULL,
	[img18] [nvarchar](max) NULL,
	[img19] [nvarchar](max) NULL,
	[img20] [nvarchar](max) NULL,
	[map] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[releaseDate] [nvarchar](150) NULL,
	[pid] [nvarchar](250) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[info11] [nvarchar](500) NULL,
	[info12] [nvarchar](500) NULL,
	[info13] [nvarchar](500) NULL,
	[info14] [nvarchar](500) NULL,
	[info15] [nvarchar](500) NULL,
	[info16] [nvarchar](500) NULL,
	[info17] [nvarchar](500) NULL,
	[info18] [nvarchar](500) NULL,
	[info19] [nvarchar](500) NULL,
	[info20] [nvarchar](500) NULL,
	[priceNew] [int] NULL,
	[supplier] [nvarchar](50) NULL,
	[features] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStay]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[features] [nvarchar](max) NULL,
	[contents] [nvarchar](max) NULL,
	[area] [nvarchar](50) NULL,
	[img1] [nvarchar](1000) NULL,
	[img2] [nvarchar](1000) NULL,
	[img3] [nvarchar](1000) NULL,
	[img4] [nvarchar](1000) NULL,
	[img5] [nvarchar](1000) NULL,
	[img6] [nvarchar](1000) NULL,
	[img7] [nvarchar](1000) NULL,
	[img8] [nvarchar](1000) NULL,
	[img9] [nvarchar](1000) NULL,
	[img10] [nvarchar](1000) NULL,
	[img11] [nvarchar](1000) NULL,
	[img12] [nvarchar](1000) NULL,
	[img13] [nvarchar](1000) NULL,
	[img14] [nvarchar](1000) NULL,
	[img15] [nvarchar](1000) NULL,
	[img16] [nvarchar](1000) NULL,
	[img17] [nvarchar](1000) NULL,
	[img18] [nvarchar](1000) NULL,
	[img19] [nvarchar](1000) NULL,
	[img20] [nvarchar](1000) NULL,
	[map] [nvarchar](max) NULL,
	[video] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[pid] [nvarchar](150) NULL,
	[datein] [nvarchar](50) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[info11] [nvarchar](500) NULL,
	[info12] [nvarchar](500) NULL,
	[info13] [nvarchar](500) NULL,
	[info14] [nvarchar](500) NULL,
	[info15] [nvarchar](500) NULL,
	[info16] [nvarchar](500) NULL,
	[info17] [nvarchar](500) NULL,
	[info18] [nvarchar](500) NULL,
	[info19] [nvarchar](500) NULL,
	[info20] [nvarchar](500) NULL,
	[price] [int] NULL,
	[priceNew] [int] NULL,
	[country] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTicket]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTicket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[area] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
	[priceNew] [int] NULL,
	[contents] [nvarchar](max) NULL,
	[notice] [nvarchar](max) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[info11] [nvarchar](500) NULL,
	[info12] [nvarchar](500) NULL,
	[info13] [nvarchar](500) NULL,
	[info14] [nvarchar](500) NULL,
	[info15] [nvarchar](500) NULL,
	[info16] [nvarchar](500) NULL,
	[info17] [nvarchar](500) NULL,
	[info18] [nvarchar](500) NULL,
	[info19] [nvarchar](500) NULL,
	[info20] [nvarchar](500) NULL,
	[img1] [nvarchar](max) NULL,
	[img2] [nvarchar](max) NOT NULL,
	[img3] [nvarchar](max) NULL,
	[img4] [nvarchar](max) NULL,
	[img5] [nvarchar](max) NULL,
	[img6] [nvarchar](max) NULL,
	[img7] [nvarchar](max) NULL,
	[img8] [nvarchar](max) NULL,
	[img9] [nvarchar](max) NULL,
	[img10] [nvarchar](max) NULL,
	[img11] [nvarchar](max) NULL,
	[img12] [nvarchar](max) NULL,
	[img13] [nvarchar](max) NULL,
	[img14] [nvarchar](max) NULL,
	[img15] [nvarchar](max) NULL,
	[img16] [nvarchar](max) NULL,
	[img17] [nvarchar](max) NULL,
	[img18] [nvarchar](max) NULL,
	[img19] [nvarchar](max) NULL,
	[img20] [nvarchar](max) NULL,
	[pid] [nvarchar](150) NULL,
	[datein] [nvarchar](150) NULL,
	[supplier] [nvarchar](50) NULL,
	[features] [nvarchar](max) NULL,
	[modus] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTour]    Script Date: 2021/12/8 22:40:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NULL,
	[type] [nvarchar](50) NULL,
	[area] [nvarchar](50) NULL,
	[days] [nvarchar](50) NULL,
	[contents] [nvarchar](500) NULL,
	[img1] [nvarchar](1000) NULL,
	[img2] [nvarchar](1000) NULL,
	[img3] [nvarchar](1000) NULL,
	[img4] [nvarchar](1000) NULL,
	[img5] [nvarchar](1000) NULL,
	[img6] [nvarchar](1000) NULL,
	[img7] [nvarchar](1000) NULL,
	[img8] [nvarchar](1000) NULL,
	[img9] [nvarchar](1000) NULL,
	[img10] [nvarchar](1000) NULL,
	[img11] [nvarchar](1000) NULL,
	[img12] [nvarchar](1000) NULL,
	[img13] [nvarchar](1000) NULL,
	[img14] [nvarchar](1000) NULL,
	[img15] [nvarchar](1000) NULL,
	[img16] [nvarchar](1000) NULL,
	[img17] [nvarchar](1000) NULL,
	[img18] [nvarchar](1000) NULL,
	[img19] [nvarchar](1000) NULL,
	[img20] [nvarchar](1000) NULL,
	[info1] [nvarchar](500) NULL,
	[info2] [nvarchar](500) NULL,
	[info3] [nvarchar](500) NULL,
	[info4] [nvarchar](500) NULL,
	[info5] [nvarchar](500) NULL,
	[info6] [nvarchar](500) NULL,
	[info7] [nvarchar](500) NULL,
	[info8] [nvarchar](500) NULL,
	[info9] [nvarchar](500) NULL,
	[info10] [nvarchar](500) NULL,
	[info11] [nvarchar](500) NULL,
	[info12] [nvarchar](500) NULL,
	[info13] [nvarchar](500) NULL,
	[info14] [nvarchar](500) NULL,
	[info15] [nvarchar](500) NULL,
	[info16] [nvarchar](500) NULL,
	[info17] [nvarchar](500) NULL,
	[info18] [nvarchar](500) NULL,
	[info19] [nvarchar](500) NULL,
	[info20] [nvarchar](500) NULL,
	[map] [nvarchar](max) NULL,
	[video] [nvarchar](150) NULL,
	[url] [nvarchar](150) NULL,
	[releaseDate] [nvarchar](150) NULL,
	[pid] [nvarchar](150) NULL,
	[startDate] [nvarchar](150) NULL,
	[startPlace] [nvarchar](150) NULL,
	[country] [nvarchar](max) NULL,
	[features] [nvarchar](max) NULL,
	[supplier] [nvarchar](150) NULL,
	[day1] [nvarchar](50) NULL,
	[day2] [nvarchar](50) NULL,
	[day3] [nvarchar](50) NULL,
	[day4] [nvarchar](50) NULL,
	[day5] [nvarchar](50) NULL,
	[day6] [nvarchar](50) NULL,
	[day7] [nvarchar](50) NULL,
	[day8] [nvarchar](50) NULL,
	[day9] [nvarchar](50) NULL,
	[day10] [nvarchar](50) NULL,
	[day11] [nvarchar](50) NULL,
	[day12] [nvarchar](50) NULL,
	[day13] [nvarchar](50) NULL,
	[day14] [nvarchar](50) NULL,
	[day15] [nvarchar](50) NULL,
	[day16] [nvarchar](50) NULL,
	[day17] [nvarchar](50) NULL,
	[day18] [nvarchar](50) NULL,
	[day19] [nvarchar](50) NULL,
	[day20] [nvarchar](50) NULL,
	[price] [int] NULL,
	[priceNew] [int] NULL,
	[category] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblFood] ON 

INSERT [dbo].[tblFood] ([id], [title], [type], [price], [priceNew], [area], [info], [contents], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [datein], [pid], [map], [video], [supplier], [features], [category]) VALUES (2002, N'花心 本店', N'烤肉', 300, 123, N'大阪府', NULL, N'★人们x积累最多600分！
正常三倍！直到2019年1月31日，在线预订和访问
人们x将收集最多600分！除了GourNavi分，乐天积分也积累♪

◆秋冬季无忧无虑的涮涮锅
甜丰富的猪腰肉
“花Yuzen课程”3，758日元⇒2，980日元
·牛肉涮锅 - 涮锅吃比较♪
“花卉图案课程”4，514日元⇒3，500日元
·选择的国产牛，融化了西施的甜味
“日历套餐”5，054日元⇒4，000日元
对于咖喱和炸鸡等菜肴，请在自助餐厅免费享用

◆烧烤和寿喜烧也
肉汁〜！啤酒很好吃♪
由知道肉的花心送来的美味肉类的自助菜单
您可以选择海鲜涮涮锅，寿喜烧，yakiniku两种，包括7人或以上。

◆私人房间可容纳4至100人
有许多私人房间在您的脚下轻松挖掘！
20个人，30个人，50个人...欢迎任何你喜欢的东西♪', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/UploadFile/Food/Food1201810279530528.jpg', N'/UploadFile/Food/Food2201810279530544.jpg', N'/UploadFile/Food/Food3201810279530559.png', N'/UploadFile/Food/Food4201810279530591.png', N'/UploadFile/Food/Food5201810279530591.png', N'/UploadFile/Food/Food6201810279530591.png', N'/UploadFile/Food/Food7201810279530591.png', N'/UploadFile/Food/Food8201810279530606.png', N'/UploadFile/Food/Food9201810279530606.png', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'2018/10/27 9:05:30', N'Food9530', N'', NULL, N'', N'猪舌/梅shios猪舌/猪肉托/猪腰/烤涮/排骨/ W蒜排骨/辣咖喱排骨/排骨蜂蜜蜂蜜胡椒皮/鸡大腿/辣咖喱鸡/番茄辣椒鸡/罗勒 鸡肉/巧克力等...等
有关详细信息，请查看每门课程的详细信息。', NULL)
SET IDENTITY_INSERT [dbo].[tblFood] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPlay] ON 

INSERT [dbo].[tblPlay] ([id], [title], [address], [area], [volumeRate], [traffic], [price], [type], [homeLevel], [contents], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [url], [releaseDate], [pid], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [priceNew], [supplier], [features]) VALUES (1002, N'友梨美容院', NULL, N'群馬県', NULL, NULL, 120, N'按摩店', NULL, N'追求美貌的事业是可能的，因为它是一个了解女性身体的美学所有者！ 可以从深层“Indiva”温暖的局部机器将从根部改善坚硬的皮质在我从未体验过的治疗后感觉清爽！', N'/UploadFile/Play/Play120181027115413381.png', N'/UploadFile/Play/Play220181027115413381.png', N'/UploadFile/Play/Play320181027115413381.png', N'/UploadFile/Play/Play420181027115413381.png', N'/UploadFile/Play/Play520181027115413381.png', N'/UploadFile/Play/Play620181027115413397.png', N'/UploadFile/Play/Play720181027115413397.png', N'/UploadFile/Play/Play820181027115413397.png', N'/UploadFile/Play/Play920181027115413397.png', N'/UploadFile/Play/Play1020181027115413397.png', N'/UploadFile/Play/Play1120181027115413397.png', N'/UploadFile/Play/Play1220181027115413397.png', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'2018/10/27 11:54:13', N'Play115413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, N'', N'追求美貌的事业是可能的，因为它是一个了解女性身体的美学所有者！ 可以从深层“Indiva”温暖的局部机器将从根部改善坚硬的皮质在我从未体验过的治疗后感觉清爽！')
SET IDENTITY_INSERT [dbo].[tblPlay] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStay] ON 

INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (3, N'格蘭蒂亞函館站前路線酒店', N'3星酒店', NULL, N'Route Inn Grantia Ekimae酒店距離JR Hakodate Train Station火車站僅有2分鐘步行路程，提供享有13樓景緻的公共熱溫泉浴池。客房內設有茶具、私人浴室和免費有線網絡連接。

Route Inn Grantia Hakodate Ekimae酒店的客房以柔和的色彩歡迎客人入住，都配有浴缸、冰箱和加濕器。酒店為所有客人提供日式睡衣和拖鞋。

元町天主教教堂（Motomachi Catholic Church）和Hakodate Gokoku-jinja神社距離酒店均約有2.5公里。函館五棱郭堡（Hakodate Goryokaku Fort）距離酒店有10分鐘車程。酒店提供前往函館機場的單程免費班車。

酒店設有1間帶投幣式按摩椅的放鬆室。大堂內設有可免費使用的網絡站，客人可以從前台支付額外費用租借筆記本電腦。酒店還設有專用吸煙區。

Hanachaya Restaurant餐廳供應包括歐式麵包店自助早餐。Hana Hana Tei餐廳提供日式晚餐。 

此住宿也被評選為函館最佳地理位置住宿之一！顧客滿意度比同區域其他住宿高。

情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.8 分

格蘭蒂亞函館站前路線酒店自 2011 年 6 月 15 日開始接待 Booking.com 的旅客入住。', N'北海道', N'/UploadFile/Hotel/Hotel120180503193458719.jpg', N'/UploadFile/Hotel/Hotel220180503193458719.jpg', N'/UploadFile/Hotel/Hotel320180503193458719.png', N'/UploadFile/Hotel/Hotel420180503193458735.jpg', N'/UploadFile/Hotel/Hotel520180503193458735.jpg', N'/UploadFile/Hotel/Hotel620180503193458735.jpg', N'/UploadFile/Hotel/Hotel720180503193458735.jpg', N'/UploadFile/Hotel/Hotel820180503193458735.jpg', N'/UploadFile/Hotel/Hotel920180503193458735.jpg', N'/UploadFile/Hotel/Hotel1020180503193458735.jpg', N'/UploadFile/Hotel/Hotel1120180503193458735.jpg', N'/UploadFile/Hotel/Hotel1220180503193458735.jpg', N'/UploadFile/Hotel/Hotel1320180503193458735.jpg', N'/UploadFile/Hotel/Hotel1420180503193458735.jpg', N'/UploadFile/Hotel/Hotel1520180503193458735.jpg', N'/UploadFile/Hotel/Hotel1620180503193458735.jpg', N'/UploadFile/Hotel/Hotel1720180503193458751.jpg', N'/UploadFile/Hotel/Hotel1820180503193458751.jpg', N'/UploadFile/Hotel/Hotel1920180503193458751.jpg', N'/UploadFile/Hotel/Hotel2020180503193458751.jpg', N'', NULL, N'', N'Hotel193458', N'2018/5/3 19:34:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 560, 510, NULL, N'高档酒店')
INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (4, N'函館微笑酒店', N'3星酒店', NULL, N'Smile Hotel酒店位於JR函館火車站（JR Hakodate Train Station）的街對面，設有帶免費無線網絡連接和私人浴室且裝飾簡約的客房，還提供按摩服務和自助早餐。

Smile Hotel Hakodate酒店的每間客房均配有辦公桌、冰箱和拖鞋。客人可以沏茶，用平面電視觀看節目，或者在浴缸中泡澡放鬆。

酒店距離Asaichi Morning Market早市僅有2分鐘步行路程，距離函館索道（Hakodate Ropeway）有5分鐘車程，距離五棱郭塔（Goryokaku Tower）有10分鐘車程。

酒店提供投幣式洗衣機和上網站。客人可於入住前和退房後在前台免費寄存行李。

此住宿也被評選為函館最佳地理位置住宿之一！顧客滿意度比同區域其他住宿高。

情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.6 分

函館微笑酒店自 2011 年 6 月 24 日開始接待 Booking.com 的旅客入住。
連鎖飯店: Smile Hotel', N'北海道', N'/UploadFile/Hotel/Hotel120180503201518311.jpg', N'/UploadFile/Hotel/Hotel220180503201518343.jpg', N'/UploadFile/Hotel/Hotel320180503201518367.png', N'/UploadFile/Hotel/Hotel420180503201518367.jpg', N'/UploadFile/Hotel/Hotel520180503201518399.jpg', N'/UploadFile/Hotel/Hotel620180503201518430.jpg', N'/UploadFile/Hotel/Hotel720180503201518446.jpg', N'/UploadFile/Hotel/Hotel820180503201518477.jpg', N'/UploadFile/Hotel/Hotel920180503201518508.jpg', N'/UploadFile/Hotel/Hotel1020180503201518524.jpg', N'/UploadFile/Hotel/Hotel1120180503201518555.jpg', N'/UploadFile/Hotel/Hotel1220180503201518586.jpg', N'/UploadFile/Hotel/Hotel1320180503201518603.jpg', N'/UploadFile/Hotel/Hotel1420180503201518619.jpg', N'/UploadFile/Hotel/Hotel1520180503201518650.jpg', N'/UploadFile/Hotel/Hotel1620180503201518666.jpg', N'/UploadFile/Hotel/Hotel1720180503201518682.jpg', N'/UploadFile/Hotel/Hotel1820180503201518697.jpg', N'/UploadFile/Hotel/Hotel1920180503201518713.jpg', N'/UploadFile/Hotel/Hotel2020180503201518732.jpg', N'', NULL, N'', N'Hotel201518', N'2018/5/3 20:15:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 490, 450, NULL, N'高档酒店')
INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (5, N'半蔵門格蘭亞克酒店', N'3星酒店', NULL, N'Hotel Grand Arc Hanzomon 飯店位於東京市中心，座落於皇居（Imperial Palace）對面， 提供配備免費 WiFi 的舒適客房，設有 4 間餐廳。

此飯店入選 2013 年 TripAdvisor 旅行者之選獎的日本前 25 大平價飯店（Top 25 Bargain Hotels in Japan by TripAdvisor''s Travelers'' Choice Award ）。

Hotel Grand Arc Hanzomon 飯店的空調客房配備電視、收音機、迷你吧和電熱水壺。浴室提供淋浴、浴缸和盥洗用品。

客人可以在美容沙龍享受護理療程，或在客房內享受按摩服務。飯店設有自助機台（kiosk），提供行李寄存服務。

Patio Restaurant 餐廳供應西餐，Mon 和 Hagoromo Tempura 餐廳則提供不同的在地美食。La Mer Lounge 酒吧提供各式飲品和點心。

Hotel Grand Arc Hanzomon 飯店距離地鐵半藏門站（Hanzomon Subway Station）3 分鐘步行路程，客人從該站搭乘地鐵 20 分鐘即可抵達市中心的銀座（Ginza）或澀谷（Shibuya）地區。皇居周圍的慢跑道是全東京市獨一無二的。 

此住宿也被評選為東京最佳地理位置住宿之一！顧客滿意度比同區域其他住宿高。', N'東京都', N'/UploadFile/Hotel/Hotel120180504174818480.jpg', N'/UploadFile/Hotel/Hotel220180504174818480.jpg', N'/UploadFile/Hotel/Hotel320180504174818480.png', N'/UploadFile/Hotel/Hotel420180504174818480.jpg', N'/UploadFile/Hotel/Hotel520180504174818480.jpg', N'/UploadFile/Hotel/Hotel620180504174818496.jpg', N'/UploadFile/Hotel/Hotel720180504174818496.jpg', N'/UploadFile/Hotel/Hotel820180504174818496.jpg', N'/UploadFile/Hotel/Hotel920180504174818496.jpg', N'/UploadFile/Hotel/Hotel1020180504174818496.jpg', N'/UploadFile/Hotel/Hotel1120180504174818496.jpg', N'/UploadFile/Hotel/Hotel1220180504174818496.jpg', N'/UploadFile/Hotel/Hotel1320180504174818496.jpg', N'/UploadFile/Hotel/Hotel1420180504174818496.jpg', N'/UploadFile/Hotel/Hotel1520180504174818496.jpg', N'/UploadFile/Hotel/Hotel1620180504174818496.jpg', N'/UploadFile/Hotel/Hotel1720180504174818496.jpg', N'/UploadFile/Hotel/Hotel1820180504174818496.jpg', N'/UploadFile/Hotel/Hotel1920180504174818496.jpg', N'/UploadFile/Hotel/Hotel2020180504174818496.jpg', NULL, NULL, NULL, N'Hotel174818', N'2018/5/4 17:48:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280, 260, NULL, N'高档酒店')
INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (6, N'東京庭之酒店', N'4星酒店', NULL, N'Hotel Niwa Tokyo 距離 JR 水道橋站（JR Suidobashi Station）步行 3 分鐘，飯店裝潢雅緻，並採用了日式傳統設計風格。飯店內設有日式庭院和 2 間餐廳，並提供免費 WiFi。飯店距離神保町地鐵站（Jimbocho Subway Station）有 5 分鐘的步行路程。

這間飯店入選 2016 年 TripAdvisor 旅行者之選（TripAdvisor Travelers’ Choice Award 2013），被評為日本 25 家最棒的飯店之一。

Hotel Niwa Tokyo 現代化的客房內可享受透過紙質屏風照進的明亮採光。客房配有液晶電視和冰箱，此外入住期間每天將會免費提供房客 1 瓶水。部分客房亦設有加長床或咖啡機。

Hotel Niwa Tokyo 設有放鬆休息室，內有按摩椅，並可俯瞰屋頂迷你花園。客人可免費使用健身中心鍛煉身體。此外，飯店設有投幣式洗衣店、飲料自動販賣機和 24 小時商務中心。

客人可以在 Yukuri 餐廳品嚐到多道菜的傳統懷石料理，同時也能欣賞花園景觀。Grill＆Bar Lieu 餐廳則供應法式佳餚，供應烤海鮮和牛排。

Hotel Niwa Tokyo 步行至東京巨蛋體育場（Tokyo Dome Stadium）為 8 分鐘，距離東京皇居（Tokyo Imperial Palace）和靖國神社（Yasukuni Shrine）則均為 20 分鐘的步程。 ', N'東京都', N'/UploadFile/Hotel/Hotel1201805041759523.jpg', N'/UploadFile/Hotel/Hotel2201805041759523.jpg', N'/UploadFile/Hotel/Hotel3201805041759523.png', N'/UploadFile/Hotel/Hotel4201805041759523.jpg', N'/UploadFile/Hotel/Hotel5201805041759523.jpg', N'/UploadFile/Hotel/Hotel6201805041759523.jpg', N'/UploadFile/Hotel/Hotel7201805041759523.jpg', N'/UploadFile/Hotel/Hotel82018050417595218.jpg', N'/UploadFile/Hotel/Hotel92018050417595218.jpg', N'/UploadFile/Hotel/Hotel102018050417595218.jpg', N'/UploadFile/Hotel/Hotel112018050417595218.jpg', N'/UploadFile/Hotel/Hotel122018050417595218.jpg', N'/UploadFile/Hotel/Hotel132018050417595218.jpg', N'/UploadFile/Hotel/Hotel142018050417595218.jpg', N'/UploadFile/Hotel/Hotel152018050417595218.jpg', N'/UploadFile/Hotel/Hotel162018050417595218.jpg', N'/UploadFile/Hotel/Hotel172018050417595218.jpg', N'/UploadFile/Hotel/Hotel182018050417595218.jpg', N'/UploadFile/Hotel/Hotel192018050417595234.jpg', N'/UploadFile/Hotel/Hotel202018050417595234.jpg', NULL, NULL, NULL, N'Hotel175952', N'2018/5/4 17:59:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 330, 290, NULL, N'高档酒店')
INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (7, N'品川王子大飯店', N'4星酒店', NULL, N'Prince Hotel 飯店擁有 15 間餐飲場所、2 座游泳池以及專屬水族館，毗鄰JR 品川火車站（JR Shinagawa Train Station），前往羽田機場（Haneda Airport）只需25分鐘的火車車程。這間 39 層樓的飯店坐擁東京市美景，飯店內各處均可使用免費無線網路。

Shinagawa Prince Hotel 酒店的空調客房配有冰箱，以及附帶浴缸和淋浴設施的個人浴室，提供免費盥洗用品和吹風機，以及個人儲物櫃。

搭乘火車的話，飯店到澀谷（Shibuya）為 5 站的距離，到新宿（Shinjuku）為 16 分鐘的火車車程，到東京車站（Tokyo Station）為 11 
分鐘的火車車程，在飯店即可搭乘往返成田機場（Narita Airport）的直達巴士。

飯店設有專屬電影院、保齡球館和網球場，可謂是一座城中之城。客人可以前往卡拉 OK 酒吧。飯店還提供 24 小時櫃台服務、室內和室外游泳池、桑拿設施和按摩服務，並提供外幣兌換服務，內設飲料自動販賣機和自動提款機。

位於 39 樓的 Top of Shinagawa 餐廳享有東京最優美的景觀之一。餐廳供應日式、中式、咖哩和西式佳餚。酒店並擁有數間咖啡館和酒吧。 ', N'東京都', N'/UploadFile/Hotel/Hotel120180504181444210.jpg', N'/UploadFile/Hotel/Hotel220180504181444210.jpg', N'/UploadFile/Hotel/Hotel320180504181444210.png', N'/UploadFile/Hotel/Hotel420180504181444210.jpg', N'/UploadFile/Hotel/Hotel520180504181444210.jpg', N'/UploadFile/Hotel/Hotel620180504181444210.jpg', N'/UploadFile/Hotel/Hotel720180504181444210.jpg', N'/UploadFile/Hotel/Hotel820180504181444210.jpg', N'/UploadFile/Hotel/Hotel920180504181444225.jpg', N'/UploadFile/Hotel/Hotel1020180504181444225.jpg', N'/UploadFile/Hotel/Hotel1120180504181444229.jpg', N'/UploadFile/Hotel/Hotel1220180504181444229.jpg', N'/UploadFile/Hotel/Hotel1320180504181444229.jpg', N'/UploadFile/Hotel/Hotel1420180504181444229.jpg', N'/UploadFile/Hotel/Hotel1520180504181444229.jpg', N'/UploadFile/Hotel/Hotel1620180504181444229.jpg', N'/UploadFile/Hotel/Hotel1720180504181444229.jpg', N'/UploadFile/Hotel/Hotel1820180504181444229.jpg', N'/UploadFile/Hotel/Hotel1920180504181444229.jpg', N'/UploadFile/Hotel/Hotel2020180504181444229.jpg', NULL, NULL, NULL, N'Hotel181444', N'2018/5/4 18:14:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 590, 510, NULL, N'高档酒店')
INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (10, N'大阪丽思卡尔顿酒店', N'高档酒店', N'大坂丽思卡尔顿旅馆」位于颇负盛名的西梅田商业及购物区内的心脏地带，临近大坂车站，酒店提供有多样化的便利设施及服务，带给您一个难以忘怀的绝佳住宿体验。酒店内设有餐厅、礼品店、会议室、宴客大厅、健身房及一处室内游泳池。客人可依喜好选择西式房型或是铺设有榻榻米地板及日式铺床的日式房型。客房豪华舒适，并全数提供有免费的高速上网服务。', N'店位置
大阪丽思卡尔顿酒店坐落于大阪梅田，距离大阪市立科学馆和梅田天空之城不到 15 分钟步行路程。 此 5 星级酒店距离大阪城 (大阪) 2.4 英里（3.8 公里），距离乐高乐园探索中心 7.5 英里（12 公里）。

客房
有 291 间空调客房提供冰箱和等离子电视；您定能在旅途中找到家的舒适。您的卧床备有羽绒被和意大利 Frette 床单。免费的有线和无线上网帮助您与朋友保持联系；此外客房还提供有线节目，以满足您的娱乐需求。浴室提供大花洒淋浴喷头和免费洗浴用品。

设施
到全方位服务的 SPA 放松一下；在这里，您可以享受按摩、身体护理和面部护理。如果想要休闲地度假，可好好利用室内游泳池、SPA 浴缸和桑拿。此酒店还提供免费无线上网、礼宾服务和礼品店/报摊。

餐饮
酒店设有 4 间餐厅，您不妨选择到La Baie享用法国菜，也可以待在房间里，享受 24 小时送餐服务。此外咖啡馆还供应美味点心。想放松一下？这里有 2 间酒吧/酒廊供您选择，可以小酌几杯，轻松一下。每天 06:30 至 10:30 提供收费的自助式早餐早餐。

商务及其他服务设施
特色服务/设施包括免费高速有线上网、24 小时商务中心和豪华轿车或公务车服务。这家酒店的活动设施包括会议场地和会议室。酒店提供收费自助停车。', N'大阪', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img1.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img2.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img3.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img4.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img5.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img6.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img7.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img8.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img9.png', N'/UploadFile/HOTEL_大阪丽思卡尔顿酒店/img10.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Hotel181443', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1689, 1157, NULL, N'高档酒店')
INSERT [dbo].[tblStay] ([id], [title], [type], [features], [contents], [area], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [map], [video], [url], [pid], [datein], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [price], [priceNew], [country], [category]) VALUES (8, N'半藏門蒙特利酒店', N'4星酒店', N'', N'從 Hotel Monterey Hanzomon 步行至半藏門地鐵站（Hanzomon Subway Station）僅需 1 分鐘，步行至皇居（Imperial Palace）僅需 5 分鐘。飯店擁有現代化的客房，提供免費無線網路及每日早餐。

Monterey Hanzomon Hotel 的客房簡約典雅、色調溫暖，並配有木質傢俱。此外也備有可免費使用的智慧型手機，可於飯店內外使用。

從飯店步行至靖國神社（Yasukuni Shrine）僅需 15 分鐘。飯店距離銀座 3 公里。搭車前往澀谷（Shibuya）和押上（Oshiage）車站皆不到 10 分鐘即可抵達。搭車前往羽田和成田機場分別是 40 分鐘和 90 分鐘。

飯店設有觀光旅遊櫃檯，可協助客人安排旅遊或預訂旅遊票券。櫃檯 24 小時開放，提供行李寄存服務。

時尚的用餐區每日供應自助式早餐，菜色包括各種當地特色料理及西式菜餚。', N'東京都', N'/UploadFile/Hotel/Hotel12018050418325746.jpg', N'/UploadFile/Hotel/Hotel22018050418325746.jpg', N'/UploadFile/Hotel/Hotel32018050418325746.png', N'/UploadFile/Hotel/Hotel42018050418325746.jpg', N'/UploadFile/Hotel/Hotel52018050418325746.jpg', N'/UploadFile/Hotel/Hotel62018050418325746.jpg', N'/UploadFile/Hotel/Hotel72018050418325746.jpg', N'/UploadFile/Hotel/Hotel82018050418325746.jpg', N'/UploadFile/Hotel/Hotel92018050418325746.jpg', N'/UploadFile/HOTEL_Hotel Monterey Hanzomon（半藏門蒙特利酒店）/img10.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Hotel181442', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 450, 390, N'', N'高档酒店')
SET IDENTITY_INSERT [dbo].[tblStay] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTicket] ON 

INSERT [dbo].[tblTicket] ([id], [title], [area], [type], [price], [priceNew], [contents], [notice], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [pid], [datein], [supplier], [features], [modus], [category]) VALUES (2004, N'大阪环球影视城', N'大阪府', N'景点门票', 310, 300, N'日本環球影城所在地原為日立造船與住友金屬工業等重工業的工廠使用，工廠遷移後，以定期借地權方式租借予影城。環球影城入場人士主要為日本國內遊客，或鄰近亞洲地區，如中國大陸、香港及台灣，其亞洲各國旅客。2005年，投資銀行高盛成為日本環球影城大股東，環球電影則佔有少量股權。2013年12月13日，香港太盟投資集團宣布入股2億5千萬美元在日本環球影城的營運者身上，但是沒有透露所獲得的股權比例[1]。', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, N'/UploadFile/Ticket/Ticket12018072212125473.jpg', N'/UploadFile/Ticket/Ticket22018072212125488.jpg', N'/UploadFile/Ticket/Ticket32018072212125504.png', N'/UploadFile/Ticket/Ticket42018072212125520.jpg', N'/UploadFile/Ticket/Ticket52018072212125538.jpg', N'/UploadFile/Ticket/Ticket62018072212125553.jpg', N'/UploadFile/Ticket/Ticket72018072212125569.jpg', N'/UploadFile/Ticket/Ticket82018072212125585.jpg', N'/UploadFile/Ticket/Ticket92018072212125600.jpg', N'/UploadFile/Ticket/Ticket102018072212125633.jpg', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Ticket201872212125', N'2018/7/22 12:01:25', N'', N'每日放送攝影棚
日本環球影城（日語：ユニバーサル・スタジオ・ジャパン，英語：Universal Studios Japan）位於日本大阪市此花區，是世界4個環球影城主題公園之一，1998年10月28日由當時尚未擔任加州州長的美國動作演員阿諾·史瓦辛格主持動工儀式，2001年3月31日開幕。其設計與美國奧蘭多的環球影城相近，有部份機動遊戲相同。包括《侏羅紀公園》河流探險、《魔鬼终结者2:3-D》 、《蜘蛛人》、《大白鯊》探險等。', N'电子票', NULL)
INSERT [dbo].[tblTicket] ([id], [title], [area], [type], [price], [priceNew], [contents], [notice], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [pid], [datein], [supplier], [features], [modus], [category]) VALUES (2002, N'东京迪士尼乐园', N'千葉県', N'景点门票', 290, 280, N'东京迪士尼乐园主要分为世界市集、探险乐园、西部乐园、动物天地、梦幻乐园、卡通城及明日乐园等7个区，园内的舞台以及广场上定时会有各种各样的游行活动。 在迪士尼正门的中心，可以看到高耸的“灰姑娘城”这座主建筑，在它的周围则建造了多种主题的游乐场和游乐馆，例如冒险宫、世界著名故事、传说宫、风景宫、闲游宫、宇宙宫、幻想宫等。每一个游乐宫都配有详细的情节解说和音乐。乐园保持了美国迪士尼乐园的正宗风格，使人可以体会到它的“非日常性的”演出特色。在东京迪士尼乐园里还可以看到大型的游行表演。', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, N'/UploadFile/Ticket/Ticket12018072294244984.jpg', N'/UploadFile/Ticket/Ticket220180722942450.jpg', N'/UploadFile/Ticket/Ticket3201807229424531.png', N'/UploadFile/Ticket/Ticket4201807229424531.jpg', N'/UploadFile/Ticket/Ticket5201807229424547.jpg', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Ticket201872294245', N'2018/7/22 9:42:45', N'', N'东京迪士尼乐园，修建于1982年，位于日本东京都以东的千叶县浦安市舞滨，是由美国迪士尼公司和日本梓设计公司合作建造的。被誉为亚洲第一游乐园的东京迪士尼乐园，依照美国迪士尼乐园而修建，主题乐园面积为四十六公顷。', N'电子票', NULL)
INSERT [dbo].[tblTicket] ([id], [title], [area], [type], [price], [priceNew], [contents], [notice], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [pid], [datein], [supplier], [features], [modus], [category]) VALUES (2006, N'大阪海游馆', N'大阪府', N'景点门票', 180, 159, N'	东京迪士尼乐园主要分为世界市集、探险乐园、西部乐园、动物天地、梦幻乐园、卡通城及明日乐园等7个区，园内的舞台以及广场上定时会有各种各样的游行活动。 在迪士尼正门的中心，可以看到高耸的“灰姑娘城”这座主建筑，在它的周围则建造了多种主题的游乐场和游乐馆，例如冒险宫、世界著名故事、传说宫、风景宫、闲游宫、宇宙宫、幻想宫等。每一个游乐宫都配有详细的情节解说和音乐。乐园保持了美国迪士尼乐园的正宗风格，使人可以体会到它的“非日常性的”演出特色。在东京迪士尼乐园里还可以看到大型的游行表演。
', NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, N'/UploadFile/Ticket/Ticket120180722122738.jpg', N'/UploadFile/Ticket/Ticket2201807221227324.jpg', N'/UploadFile/Ticket/Ticket3201807221227340.png', N'/UploadFile/Ticket/Ticket4201807221227340.jpg', N'/UploadFile/Ticket/Ticket5201807221227355.jpg', N'/UploadFile/Ticket/Ticket6201807221227371.jpg', N'/UploadFile/Ticket/Ticket7201807221227386.jpg', N'/UploadFile/Ticket/Ticket82018072212273102.jpg', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Ticket201872212273', N'2018/7/22 12:27:03', N'', N'东京迪士尼乐园，修建于1982年，位于日本东京都以东的千叶县浦安市舞滨，是由美国迪士尼公司和日本梓设计公司合作建造的。被誉为亚洲第一游乐园的东京迪士尼乐园，依照美国迪士尼乐园而修建，主题乐园面积为四十六公顷。', N'电子票', NULL)
SET IDENTITY_INSERT [dbo].[tblTicket] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTour] ON 

INSERT [dbo].[tblTour] ([id], [title], [type], [area], [days], [contents], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [map], [video], [url], [releaseDate], [pid], [startDate], [startPlace], [country], [features], [supplier], [day1], [day2], [day3], [day4], [day5], [day6], [day7], [day8], [day9], [day10], [day11], [day12], [day13], [day14], [day15], [day16], [day17], [day18], [day19], [day20], [price], [priceNew], [category]) VALUES (2007, N'日本东京+大阪+京都+箱根6日跟团游', N'跟团游', N'大阪府', N'六日游', N'作为日本的首都，东京为我们演绎了一个国际大都市的诸多特点。它时尚、繁华，却不失古朴传统；它是世界级的商业、金融中心，也是亚洲流行风潮的引领者，一座艺术之城；而小巷深处热情亲切的居酒屋、洋溢平民气息的下町地区、动漫与高科技、各国文化的交融等，为东京增添了更加多元和包容的色彩。 这里还有集中了世界名店的银座、充满奇趣幻想的迪士尼、樱花烂漫的上野公园、被誉为不夜城的新宿、保留了日本传统文化精华的浅草、年轻人新潮文化发源地涩谷、未来主义风格的台场，以及众多兼具自然风物和人文历史的公园绿地，天气好的时候还能远眺富士山的美景……东京并非千篇一律的乏味城市，每个人都能在这个“超级城市体”中找到自己的钟爱。 此外，温泉也是来东京不可错过的项目，有赖于日本四通八达的新干线与电车系统，除了东京的大江户温泉之外，东京周边的伊豆、箱根都是著名的温泉之乡。', N'/UploadFile/Tour/Tour1_2018050316208290.jpg', N'/UploadFile/Tour/Tour2_2018050316208290.jpg', N'/UploadFile/Tour/Tour3_2018050316208290.png', N'/UploadFile/Tour/Tour4_2018050316208290.jpg', N'/UploadFile/Tour/Tour5_2018050316208305.jpg', N'/UploadFile/Tour/Tour6_2018050316208305.jpg', N'/UploadFile/Tour/Tour7_2018050316208305.jpg', N'/UploadFile/Tour/Tour8_2018050316208305.jpg', N'/UploadFile/Tour/Tour9_2018050316208305.jpg', N'/UploadFile/Tour/Tour10_2018050316208305.jpg', N'/UploadFile/Tour/Tour11_2018050316208305.jpg', N'/UploadFile/Tour/Tour12_2018050316208305.jpg', N'/UploadFile/Tour/Tour13_2018050316208305.jpg', N'/UploadFile/Tour/Tour14_2018050316208305.jpg', N'/UploadFile/Tour/Tour15_2018050316208305.jpg', N'/UploadFile/Tour/Tour16_2018050316208321.jpg', N'/UploadFile/Tour/Tour17_2018050316208321.jpg', N'/UploadFile/Tour/Tour18_2018050316208321.jpg', N'', N'', N'■明石海峡大桥: 明石海峡大桥于1998年4月正式开通，总长度3911米，世界最长吊桥。世界最强级的阪神淡路大地震也未能将其震撼，可见其卓越的设计与施工水平它的存在使大阪、神户通往四国地区的交通越来越方便。夜晚，全桥被华丽彩灯环绕，仿佛一串绚烂珠链横跨海湾，由此而得“珍珠桥”的美名。在这通往梦想的大桥周围，开辟了众多观光设施，成为广受欢迎的旅游胜地。', N'■六甲山: 位于神户市北面，有一座东西长30公里，绿色连绵的六甲山。它是关西地区最大的户外休闲度假地。这里一年四季都能够享受大自然美景的变化，而被指定为濑户内海国立公园的一部分。六甲山顶周围是宽广的高原地区，建有高尔夫球场、观景台、高山植物园、观光牧场、森林公园等娱乐场所。夜晚在山顶可眺望被誉为“100万美元的夜景”的神户市区及港口的迷人夜景。', N'■大阪城: 大阪城位于大阪的中心，作为大阪的象征而备受爱戴。现在这附近都被规划成为“大阪城公园”，梅花和樱花等等在各自的季节绽放，这里已成为游客络绎不绝的古迹公园。大阪城公園開設於1931年，總面積真的非常大，光是要從外面走到天守閣就要走上好一段時間，公園內也種植了許多樹木，以染井吉野櫻為主，所以也是賞櫻名所，也因此四季的景色會有所不同，吉米是第一次來大阪，當然也一定安排到這裡逛逛啦！雖然不是櫻花盛開的時候來，不過沒有櫻花點綴的大阪城就這麼美，那多了櫻花應該更是不得了啦，之後再安排個大阪城賞櫻之旅好了！', N'■心斋桥: 心斋桥是位于日本大阪府大阪市中央区的商业购物区，这里既有各种精品屋、专卖店和大商场，也有各种小店。这里还汇聚了世界各地的美食，是不可不去的购物天堂。在御堂筋大街东面与之平行的心斋桥筋商店街是大阪最知名的购物区，也是大阪的一个永久性标志。远在江户时期，这里就已形成了购物商圈，距今已有380年的 历史。直到今天，这里依然是热闹非凡，各个年龄层次的人们都会光顾这儿。在拥有弧形天棚的商店街里，和服店、西式服装及鞋类的零售商、珠宝店、时尚服饰店以及各种餐饮店一溜儿排开，很多人喜欢在这里边欣赏各式橱窗商品边渡过自己的闲暇时光。', N'■道顿堀: 道顿堀是南部地区的一个标志，也是大阪人所谓的"吃趴下"饮食文化的发源地。在道顿堀河边挤满了各种大大小小的饭店，巨大的广告牌吸引着前来这儿品尝美食 的人们。河的北岸以前曾是艺妓们招待客人的地方，而现在则是一间挨着一间的酒吧和小饭馆。河的南岸是道顿堀中心地区，以前曾是大阪的剧场聚集区。现如今，五彩缤纷的霓虹灯和闪动的字幕更增添了这里的活力。不管是过去还是现在，道顿堀一直是大阪最有"人气"的地方之一。在道顿堀有一条幽静的后街，那便是大阪有名的"法善寺小巷"，而沿着小巷门对门地一路排开的，则是一间间富有日本传统特色的饭馆。别看这些饭馆门面虽小，可每一间都有半个世纪以上的历史呢。不少大阪的名人也时常光顾这里。这也正应验了一句中国人常说的"酒香不怕巷子深"的老话。 道顿堀狭小街道的沿途两旁的小饭馆和酒吧间，简直多得数不清。五颜六色的霓虹招牌、别出心裁的广告和装饰豪华的门面，呈现出一派灯红酒绿，眼花缭乱的繁荣景象。而每家店又价格合理，味道各异却家家美味。您在吃饱吃好的同时，也会体会到所谓"吃趴下"的食文化的真谛。真不愧为"吃在大阪"。', N'■八坂神社: 位處日本京都府京都市東山區 祇園 町北側的顏色鮮艷的八阪神社, 是日本全國大約三千多座八阪神社的總本社, 其祇園祭相當出名, 是日本最大的 祭典 之一, 八阪神社位於四條通東端, 是本市香火最旺的 神社之一, 神社舞台上的裝飾燈籠會在黃昏時點亮, 上頭帶有贊助商的名稱, 通常都是 京都 當地公司行號.

八阪神社原本稱為 「祇園神社」 ; 「祇園社」; 「祇園感神院」 或是 「祇園天神」, 由於1868年的神佛分離令後, 改名為 「八阪神社」. 神社每年 例行祭祀活動稱作 「祇園祭」 , 它與東京的 「神田祭」; 大阪的 「天神祭」, 合稱為日本三大祭典.

八阪神社有多個入口, 如從四條通前往, 便是神社的西樓門, 它的朱紅色大門十分亮麗, 如轉到南樓外, 便會看到一座巨大的鳥居, 進門後 旁邊有個 「凈手池」 , 信眾參拜前可在此凈手, 神社中央有座舞殿, 四週掛滿燈籠, 上面有各贊助商的名號, 這舞殿是祭祀時的舞台.

「美御前社」, 它是供奉美貎的神靈, 保護一眾青春少艾美麗長駐, 美御前社旁邊同時有處 「美容池」, 愛美的少女經常在此許願和洗臉; 凈', N'■祇园: 祇园是京都的艺伎区，也是京都代表性的地区。白天，附近有7世纪的餐馆和茶馆可供消遣，路上也可以看到行色匆匆的艺伎与你擦间而过。', N'■茶道体验: 圣山富士茶道体验，这里朴美的乡土孕育出富士茶、已有上百年的歴史。作为日本传统文化的代表、茶道充分体现了日本的「OMOTENASHI」之心。在茶室中即可以欣赏陶芸、书法、插花等日本传统美、又可以学习日本茶道的礼仪、品味抹茶的纯香。通过茶道学习感受日本文化之「和」之真髄，度过一段静寂的时光。PS：店内既可以欣赏富士山的美景又可以品味产自富士山麓的富士茶。', N'■富士山五合目: 富士山是日本国内的最高峰，也是世界上最大的活火山之一，主峰海拔高达3776公尺。富士山山体呈圆锥状，太古时代反复喷发堆积形成山体，火山喷发物层层堆积，成为锥状成层火山山顶有巨大的火山口，直径约800米，深约200米。富士山作为日本民族的象征之一，在全球都享有盛誉。富士山被日本人民誉为“圣岳”，是日本民族引以为傲的象征。', N'■御殿场奥特莱斯: 御殿场奥特莱斯是日本最大的名牌折扣店，坐落于风景优美的自然环境中，可眺望富士山，拥有欧风式的建筑外观。自开业以来，这里就聚集了许多日本国内外著名品牌专营店，加上距离富士山、箱根等度假地距离很近的优越条件，所以是很多海外游客日本之旅的必去之地。', N'■秋叶原: 这里拥有日本最大也是世界最大的电器街，位于上野和银座之间。提到日本，不少人都会马上联想到高品质的电器制品，到秋叶原更能实际领略日本的这一大特色。从小家电到最新的高科技数码产品，整条街大大小小数百家电器店，包罗万象。持护照购买更可享受免税等各种优惠。秋叶原还是日本动漫文化的发祥地，电玩、漫画、Cosplay、主题咖啡店充斥其间，是动漫族朝圣地。', N'■新宿: 新宿能满足你对东京的所有想象，炫目的广告牌、诱人的商铺、各色潮人，这里就是不知让多少人迷失的“东京”。事实上，早些年的那部电影《迷失东京》便是在这里(新宿站南口外的那条人行横道)取景。新宿不仅有数不尽的商场店铺、高楼大厦，还有著名的娱乐场“歌舞伎町”和富有文艺范儿的“黄金街”，以及赏樱地新宿御苑，这些种种都使新宿充满了丰富而绮丽的色彩。“被称为东京的副中心”的新宿，位于市区西南部，是23区同近郊及邻县相连的交通要道。新宿大街上有许多著名的百货公司，如以墙面一般大的电子屏幕来引人注目的阿尔他大楼，丸井百货商店以及伊势丹公司和三越百货商店等。', N'■自由活动', N'■成田机场集合，结束难忘。', N'', N'', NULL, NULL, NULL, NULL, N'', NULL, N'', N'2018/5/3 16:20:08', N'TOUR20185316208', NULL, N'大阪', N'jpTour', N'★ 特别安排赏樱胜地连游+富士秘境，两晚温泉放松身心！东航2件23KG~ ★ 零自费+1晚箱根温泉+东京一天FREE+御殿场奥特莱斯+头尾拒绝机场酒店 ★ 休闲购物：日本最 大OUTLET尽情购物，还有东京市内整日私属，血拼随心行！', N'中央旅游', N'第一天：大阪', N'', N'第2天：大阪 》京都 》中部', N'', N'', N'', N'', N'第3天：富士山 》箱根', N'', N'', N'第4天：箱根 》东京', N'', N'第5天：东京
', N'第6天：千叶县', N'', N'', NULL, NULL, NULL, NULL, 8100, 7900, NULL)
INSERT [dbo].[tblTour] ([id], [title], [type], [area], [days], [contents], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [map], [video], [url], [releaseDate], [pid], [startDate], [startPlace], [country], [features], [supplier], [day1], [day2], [day3], [day4], [day5], [day6], [day7], [day8], [day9], [day10], [day11], [day12], [day13], [day14], [day15], [day16], [day17], [day18], [day19], [day20], [price], [priceNew], [category]) VALUES (2008, N'东京+箱根+京都+大阪6日5晚跟团游', N'跟团游', N'東京都', N'六日游', N'【自由随心】拒绝传统跟团！东京和大阪整2天私属时光，畅玩乐园or自由购物，随心安排！

【优质航班】优质航空公司，舒享飞行时光！东京进大阪出，不走回头路！

【精选酒店】大阪、东京市内连住方便！纯正日式温泉真悠享！

【经典巡游】精华景点全覆盖！世界遗产清水寺+东京朝拜圣地、浅草寺+秋叶原+富士山登高赏景！

【乐享美食】京都名店精致蟹料理+日式寿喜锅或人气寿司+日式温泉料理！

【金牌导游领队】专业导游及领队是您旅行的坚强后盾，专业的讲解+优质的服务是我们对您的承诺！ ', N'/UploadFile/Tour/Tour1_20180503191056230.jpg', N'/UploadFile/Tour/Tour2_20180503191056246.jpg', N'/UploadFile/Tour/Tour3_20180503191056277.png', N'/UploadFile/Tour/Tour4_20180503191056277.jpg', N'/UploadFile/Tour/Tour5_20180503191056308.jpg', N'/UploadFile/Tour/Tour6_20180503191056340.jpg', N'/UploadFile/Tour/Tour7_20180503191056371.jpg', N'/UploadFile/Tour/Tour8_20180503191056402.jpg', N'/UploadFile/Tour/Tour9_20180503191056433.jpg', N'/UploadFile/Tour/Tour10_20180503191056449.jpg', N'/UploadFile/Tour/Tour11_20180503191056480.jpg', N'/UploadFile/Tour/Tour12_20180503191056514.jpg', N'/UploadFile/Tour/Tour13_20180503191056545.jpg', N'/UploadFile/Tour/Tour14_20180503191056576.jpg', N'/UploadFile/Tour/Tour15_20180503191056608.jpg', N'/UploadFile/Tour/Tour16_20180503191056623.jpg', N'/UploadFile/Tour/Tour17_20180503191056654.jpg', N'/UploadFile/Tour/Tour18_20180503191056686.jpg', N'/UploadFile/Tour/Tour19_20180503191056717.jpg', N'/UploadFile/Tour/Tour20_20180503191056733.jpg', N'■浅草寺：
说起浅草寺这个名字,可能大家都不太熟悉.但是只要说起那印有”雷门”字样的大灯笼,可真是无人不知无人不晓的经典景点。这座建于628年的东京古老寺院每天吸引着络绎不绝的游客参拜祈福,或是乐淘一些日本江户特色的小商品,吃上一些地道的日本小吃。', N'■仲见世商店街：
仲见世购物街，从雷门到宝藏门是一段石头铺的路，为参拜观音的必经之路，这就是著名的“仲见世”街，是东京较为热闹的购物街之一。', N'■银座：
银座是东京繁华的商业区，相传从前这一带是海，后来德川家康填海造地，这一块地方成为铸造银币的“银座役所”。明治三年(公元1870年)这里更名为“银座”。', N'■推荐自费一：【东京迪士尼乐园】(TOKYO DISNEY LAND)该乐园占地25万坪，是大人与小孩梦幻中的天堂，可与白雪公主、米老鼠、唐老鸭一同遨游童话世界、明日世界、魅惑世界、宇宙世界等。这里有灰姑娘的城堡、海盗船及非洲丛林探险、巨雷山、鬼屋、小小世界、太空山、魔法师的王国等，老少咸宜的娱乐设施；而午后时分，华丽的花车以及各个耳熟能详的卡通人物游行于街头大汇表演，必让您置身其中，重拾童年的欢乐；并带给您终生甜美的回忆。晚上可观赏迪斯耐夜间千变万化的魅力：游行或烟火激光表演（若遇天气不佳，游行与烟火表演会取消)!', N'■推荐自费二：镰仓+横滨JR电车一日游（8:30-17:30）
镰仓观光：镰仓大佛、竹寺品茶、江之岛电车体验（1站）
横滨观光：山下公园、中华街', N'■皇居外苑：
皇居外苑俗称皇居前广场，指1969年开园的北之丸公园与皇居前广场的皇居外苑地区，以及皇居周边的外周地区。皇居外苑非常开阔，种植着许多松柏，氛围宁静而又厚重来到皇居外苑，会看到标志性的骑马武士青铜雕像，还有那古朴庄严味道的城墙，靠近皇居的前段地面由碎石子铺成，走在上面会发出沙沙的声音。', N'■二重桥：
二重桥位于皇居正门前，是一座横跨内护城河的独具特色的桥，是公认的日本标志。二重桥是通向皇宫的特别通道，那里有皇宫护卫官仪仗队在把守，除非事前有过申请参观皇居，或是在新年与天皇生日等皇居开放参贺的日子，其他时候民众一般都无法通行。', N'■Laox（新宿总店）：
在日本最大规模商圈新宿，可以亲身感受「Japan premium」，并且汇聚了从日本最尖端的商品到传统工艺品，功能齐备的舒适环境和分享最新流行趋势的门店。以日本之“美”为主题，聚集了与美相关商品，及充满开发者美学气息的“Made in Japan”的人气商品。为顾客提供功能齐备的舒适环境和分享购物乐趣的体验场所。Laox隆重推出首款自主时尚品牌“ORIGAMI”，专为海外顾客开发了“Made in Japan”的时尚精品系列服饰。在咖啡休息室，不妨小憩一下，在享受快乐购物的同时，喝上一杯独具日本风情的抹茶饮料，体验日式的咖啡小酌。本店以日本之“美”与独特的“和”式服务礼仪及待客文化，竭诚欢迎各位的光临。', N'■富士山五合目：
富士山五合目位于富士山的半山腰，是从山脚的几个车站都有巴士到达的景点。富士山从山脚到山顶，共划分为10个阶段，每个阶段是一个“合目”，山顶称“十合目”。每合目都设有供游人休息的地方，巴士可上到2305米的“五合目”。从“五合目”这里开始登山，一般需要几小时才能登顶。', N'■清水寺：
清水寺是京都古老的寺院，与鹿苑寺（金阁寺）、岚山等同为京都境内著名的名胜古迹。这里的景物四季迷人，也是著名的赏枫及赏樱之景点。一年四季前来朝拜的香客或来访的观光客络驿不绝。', N'■三年坂二年坂：
日本的京都清水寺附近的清水坂、二年坂和产宁坂是三条历史保护街区。二年坂和三年坂都是小小的石头坡道，偶尔有阶梯，二年坂据称于大同2年(807)建造完成，共有17级三年坂建造于大同3年(808)，连结清水坂与二年坂。由于这段坡道是通往祈求平安生产的子安塔(泰产寺)的参道，再加上日文读法中的生产平安“产宁”和“三年”发音接近，因此三年坂也被称为产宁坂。产宁坂石阶共有46级，两旁房舍多半是江户时期的町屋木造房子，沿途商家多半贩卖清水烧、京都特产古风瓷品店以及古意盎然的饮食店和纪念品店。', N'■心斋桥：
这可是关西最知名的购物商圈，距今有380多年的历史，长达600多米的弧形天棚商业街内有著名的“高岛屋“、”大丸百货”，药妆连锁店“松本清”、“SUNDRUG”及各类服饰、餐饮、珠宝等商铺，戎桥边上有两块全日本最著名的百年霓虹招牌“格力高跑步者”和“雪印”，它们在这里见证了心斋桥一带的繁荣变迁，来此游玩，一定要记得和招牌留影，不然可不能算是来过大阪哟！
温馨服务：如您有需要，可提供药妆连锁店“松本清”、“SUNDRUG”折扣优惠券', N'■推荐自费一：【环球影城】一座以好莱坞电影为主题的大型游乐场，结合各种人气可爱卡通形象：HELLOKITTY、史努比，芝麻街等，无论大人小孩，伴您全家开怀一整天。内有终结者、回到未来、侏罗纪公园、水世界、蜘蛛侠、大白鲨、怪物史瑞克，浴火赤子情等多项乐趣无穷的设施让您着实疯狂！各位游客一定能渡过一段快乐的亲子时光，留下难忘的回忆', N'■推荐自费二：奈良+大阪JR电车一日游（8:30-17:30）
奈良观光：东大寺（世界遗产）+鹿公园+春日大社（世界遗产）
大阪观光：梅田商业街＋梅田空中花园', N'■大阪城 （不登天守阁）：
大阪城位于大阪的中心，作为大阪的象征而备受爱戴。现在这附近都被规划成为“大阪城公园”，梅花和樱花等等在各自的季节绽放，这里已成为游客络绎不绝的古迹公园。', N'■关西空港OUTLET （如您的航班在14点及之前起飞，则此景点不前往）
关西空港OUTLET位于关西国际机场的对岸。从机场乘专用公共汽车20分钟左右便可到达。在蓝色的天空下，两层纯白的建筑内，顾客可在150多家Armani、 Bally、 Brooks Brothers、 Coach、 D&G、 Etro、Hugo Boss、Salvatore Ferragamo、Tag Heuer、 Zagna等世界知名名牌专卖店，尽享购物之乐趣、旅游之乐。
午餐：敬请自理', NULL, NULL, NULL, NULL, N'', NULL, N'', N'2018/5/3 19:10:56', N'TOUR201853191056', NULL, N'东京站', N'jpTour', N'★ 大阪东京各2晚连宿，多种体验！巡游世遗富士山！
★ 精选日式寿喜锅&品京都蟹膳，2日私属玩转东瀛！泡美汤，享优质服务！
★ 漫步清水寺,三年坂二年坂~奥莱购物！', N'中央旅游', N'第1天　东京', N'', N'', N'第2天　东京整日私属时光', N'', N'第3天　东京－箱根－温泉', N'', N'', N'', N'第4天　温泉－京都－大阪', N'', N'', N'大阪整日私属时光', N'', N'第6天　大阪－上海－各地', N'', NULL, NULL, NULL, NULL, 6700, 6100, NULL)
INSERT [dbo].[tblTour] ([id], [title], [type], [area], [days], [contents], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [map], [video], [url], [releaseDate], [pid], [startDate], [startPlace], [country], [features], [supplier], [day1], [day2], [day3], [day4], [day5], [day6], [day7], [day8], [day9], [day10], [day11], [day12], [day13], [day14], [day15], [day16], [day17], [day18], [day19], [day20], [price], [priceNew], [category]) VALUES (2009, N'日本大阪+京都+箱根+东京7日跟团游', N'跟团游', N'大阪府', N'七日游', N'【自由随心】拒绝传统跟团！特意给您东京和大阪2天私属时光，畅玩乐园or自由购物，随心安排！

【优质航班】优质航司，舒享飞行时光！开口航班，充足时间游玩，不走回头路！

【温泉体验】宿1晚温泉酒店，享受日式纯正美汤，褪去一天的疲劳！

【景点覆盖】京都、奈良双古都+登富士山、望河口湖

【乐享美食】特色蟹料理+富士山特色陶板烧！味蕾挑战绝不敷衍！

【金牌导游领队】专业导游及领队是您旅行的坚强后盾，专业的讲解+优质的服务是我们对您的承诺！', N'/UploadFile/Tour/Tour1_20180512225457744.jpg', N'/UploadFile/Tour/Tour2_20180512225457744.jpg', N'/UploadFile/Tour/Tour3_20180512225457744.png', N'/UploadFile/Tour/Tour4_20180512225457744.jpg', N'/UploadFile/Tour/Tour5_20180512225457744.jpg', N'/UploadFile/Tour/Tour6_20180512225457744.jpg', N'/UploadFile/Tour/Tour7_20180512225457744.jpg', N'/UploadFile/Tour/Tour8_20180512225457744.jpg', N'/UploadFile/Tour/Tour9_20180512225457744.jpg', N'/UploadFile/Tour/Tour10_20180512225457744.jpg', N'/UploadFile/Tour/Tour11_20180512225457744.jpg', N'/UploadFile/Tour/Tour12_20180512225457760.jpg', N'/UploadFile/Tour/Tour13_20180512225457760.jpg', N'/UploadFile/Tour/Tour14_20180512225457760.jpg', N'/UploadFile/Tour/Tour15_20180512225457760.jpg', N'/UploadFile/Tour/Tour16_20180512225457760.jpg', N'/UploadFile/Tour/Tour17_20180512225457760.jpg', N'/UploadFile/Tour/Tour18_20180512225457760.jpg', N'', N'', N'名古屋常滑春秋阳光酒店(SpringSunny Hotel Nagoya Tokoname) 或 三重四日市都酒店(Yokkaichi Miyako Hotel) 或 中部机场酒店(Centrair Hotel)

或 常滑米拉格中部机场酒店
或 名古屋久屋大通车站吴竹旅馆
或 名古屋国际大酒店', N'■奈良公园:
奈良公园位于奈良市街的东边，公园面积广阔，若草山、东大寺、春日大社、国立博物馆等奈良的名胜古迹大多在这里。奈良公园较为引人注目的是梅花鹿，其中有1200头鹿生活在这里，这些鹿大多温顺而讨人喜爱。每年10月，会举行传统活动“割鹿角”。', N'■大阪城：
大阪城位于大阪的中心，作为大阪的象征而备受爱戴。现在这附近都被规划成为“大阪城公园”，梅花和樱花等等在各自的季节绽放，这里已成为游客络绎不绝的古迹公园。', N'■心斋桥：
心斋桥是位于日本大阪府大阪市中央区的商业购物区，这里既有各种精品屋、专卖店和大商场，也有各种小店。这里还汇聚了世界各地的美食，是不可不去的购物天堂。', N'推荐自费一：【环球影城】一座以好莱坞电影为主题的大型游乐场，结合各种人气可爱卡通形象：HELLOKITTY、史努比，芝麻街等，无论大人小孩，伴您全家开怀一整天。内有终结者、回到未来、侏罗纪公园、水世界、蜘蛛侠、大白鲨、怪物史瑞克，浴火赤子情等多项乐趣无穷的设施让您着实疯狂！各位游客一定能渡过一段快乐的亲子时光，留下难忘的回忆
费用参考：成人11000日币；儿童9500日币。包含门票、导游服务（导游不陪同入园）和往返搭乘电车费用（6人以上成行）', N'推荐自费二：神户+大阪JR电车一日游（8:30-17:30）
神户观光：北野异人馆街+风见鸡馆（入内）+神户港口自由散策 
大阪观光：梅田商圈自由购物
参考费用：成人13000日币；儿童11000日币。包含门票、JR电车费用、导游服务、午餐：定食1500日元／人》（6人以上成行）', N'■清水寺：
清水寺是京都古老的寺院，与鹿苑寺（金阁寺）、岚山等同为京都境内著名的名胜古迹。这里的景物四季迷人，也是著名的赏枫及赏樱之景点。一年四季前来朝拜的香客或来访的观光客络驿不绝', N'■三年坂二年坂：
日本的京都清水寺附近的清水坂、二年坂和产宁坂是三条历史保护街区。二年坂和三年坂都是小小的石头坡道，偶尔有阶梯，二年坂据称于大同2年(807)建造完成，共有17级三年坂建造于大同3年(808)，连结清水坂与二年坂。由于这段坡道是通往祈求平安生产的子安塔(泰产寺)的参道，再加上日文读法中的生产平安“产宁”和“三年”发音接近，因此三年坂也被称为产宁坂。产宁坂石阶共有46级，两旁房舍多半是江户时期的町屋木造房子，沿途商家多半贩卖清水烧、京都特产古风瓷品店以及古意盎然的饮食店和纪念品店。', N'■八坂神社：
八坂神社是位于日本京都府京都市东山区的神社。是日本全国约三千座八坂神社之总本社，爱称是祇园さん。神社的例行祭祀活动叫袛园祭，与东京的神田祭，大阪的天神祭并称为日本的三大祭。', N'■河口湖：
富士五湖中较低的湖，湖畔约有501颗枫叶树，秋日红叶之盛构成了以红叶回廊为首的独特景点。红、黄色点缀的湖畔使河口湖更显迷人的魅力，湖水与红叶相映形成美丽的景色，从山林到湖畔，迷人的红枫紧紧相接，让人目不暇接。', N'■富士山五合目：
富士山五合目位于富士山的半山腰，是从山脚的几个车站都有巴士到达的景点。富士山从山脚到山顶，共划分为10个阶段，每个阶段是一个“合目”，山顶称“十合目”。每合目都设有供游人休息的地方，巴士可上到2305米的“五合目”。从“五合目”这里开始登山，一般需要几小时才能登顶。', N'■新宿：
新宿能满足你对东京的所有想象，炫目的广告牌、诱人的商铺、各色潮人，这里就是不知让多少人迷失的“东京”。事实上，早些年的那部电影《迷失东京》便是在这里(新宿站南口外的那条人行横道)取景。新宿不仅有数不尽的商场店铺、高楼大厦，还有著名的娱乐场“歌舞伎町”和富有文艺范儿的“黄金街”，以及赏樱地新宿御苑，这些种种都使新宿充满了丰富而绮丽的色彩。“被称为东京的副中心”的新宿，位于市区西南部，是23区同近郊及邻县相连的交通要道。新宿大街上有许多著名的百货公司，如以墙面一般大的电子屏幕来引人注目的阿尔他大楼，丸井百货商店以及伊势丹公司和三越百货商店等。此外，还有众多电影院，酒吧，舞厅，餐厅。地面上建筑林立，地下也是热闹非凡。“西口地下街”、“小田急地下街”都是重要的购物区。新宿西口是一条相机街，从新机种到标准型相机应有尽有，吸引许多爱好者前来选购。歌舞伎町是新宿著名的娱乐区，以“酷马剧场”为中心有各种娱乐饮食场所约2500家。还有15家电影院，又称“拉丁地区”。', N'自由活动，晚上自行回酒店。', N'', N'', N'', NULL, NULL, NULL, NULL, N'', NULL, N'', N'2018/5/12 22:54:57', N'TOUR2018512225457', NULL, N'大阪车站', N'jpTour', N'★ 【特色体验】探访大涌谷、远眺富士山、观忍野八海！
★ 【血拼东京】御殿場奥特莱斯，银座随心买买买！', N'', N'第一天：名古屋', N'第二天：奈良萌鹿--大阪城--心斋桥', N'', N'', N'第3天：大阪一日自由活动', N'', N'第4天：大阪--京都--温泉酒店', N'', N'', N'第5天：登富士山--望河口湖--时尚之都东京', N'', N'', N'第6天：东京1日自由活动--酒店集合', N'第7天：成田机场—返回温馨的家', N'', N'', NULL, NULL, NULL, NULL, 5800, 4900, NULL)
INSERT [dbo].[tblTour] ([id], [title], [type], [area], [days], [contents], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [map], [video], [url], [releaseDate], [pid], [startDate], [startPlace], [country], [features], [supplier], [day1], [day2], [day3], [day4], [day5], [day6], [day7], [day8], [day9], [day10], [day11], [day12], [day13], [day14], [day15], [day16], [day17], [day18], [day19], [day20], [price], [priceNew], [category]) VALUES (2010, N'尽享冲绳夏日风光3日游', N'跟团游', N'沖縄県', N'三日游', N'冲绳是日本最有南国风光的旅游胜地，一年四季没有冬天，还有着蔚蓝的大海，美丽的沙滩，优质的潜水环境，处处充满了夏日感。 5月开始正进入冲绳的旺季，7月、8月度假游客更是纷至沓来，此时正是进行水上活动的好时候，绵延西海岸的数量众多的度假酒店就会处处爆满，赶紧计划一次夏日冲绳之行吧。', N'/UploadFile/Tour/Tour1_2018061091741170.jpg', N'/UploadFile/Tour/Tour2_2018061091741187.jpg', N'/UploadFile/Tour/Tour3_2018061091741202.png', N'', N'/UploadFile/Tour/Tour5_2018061091741202.jpg', N'/UploadFile/Tour/Tour6_2018061091741234.jpg', N'/UploadFile/Tour/Tour7_2018061091741249.jpg', N'/UploadFile/Tour/Tour8_2018061091741281.jpg', N'/UploadFile/Tour/Tour9_2018061091741307.jpg', N'/UploadFile/Tour/Tour10_2018061091741339.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'到达冲绳的第一天，一定不能错过首里城这样的知名景点。夏日炎炎，也可以去琉球王朝的御花园——识名园乘凉解暑。下午去距离市区很近的波之上海滩踩踩海水，晚上入住出行便利的丽嘉皇家酒店。', N'【首里城】首里城位于冲绳岛那霸市，曾是琉球国的都城和王宫所在地，当时琉球国王处理国家事务、接见使节和举行重要庆典都在这里，现已被联合国教科文组织列为世界文化遗产。', N'【识名园】识名园是过去的皇家别宫，也是中国册封使者来访所下榻的地方。这是个非常美丽的回游式庭院，移步异景，人们在这里参观走动的同时，都会看见别样景色。 识名园的庭院风格糅合了中国古典园林和琉球特色，绿林处处，花香鸟语，四季景致各有不同，春天梅香四溢，典雅芬芳。夏天凉风拂面，紫藤花散落于池中。秋季桔梗盛放，冬天宁谧端庄。园内有一个劝耕台，是个非常有趣的观景所，劝耕台面向着冲绳的大陆，而非一望无际的大海。', N'【波之上海滩】位于那霸西海岸的波之上海滩是一个人工海滩，这里不仅有美丽的大海和白色的沙滩，还有迷人的日出日落。海滩上配备各种游乐项目设施，例如潜水、浮潜等，游客们可在此悠闲的和大海来一次亲密接触。', N'【座间味岛】庆良间群岛中的一个纯朴小岛。这里珊瑚礁群生，鱼种丰富，岛上有为数众多的潜水商店，在这潜水或浮潜都是不错的选择。这里的观鲸活动也颇受欢迎。岛上有不少民宿，主要景点有阿真海滨、古座间味海滨等。', N'【北谷町美国村】美国村位于那覇市东北约20km处的北谷町，是模仿美国风情的都市型休闲地。对美军驻日基地遗址和邻接的海岸进行开发，利用该地区美军驻日设施集中的特点建造了美国村。宽大的占地内集中了很多娱乐景点和个性化商店，是深受当地年轻人喜爱的地区，村内排列着美国村标志—大摩天轮、以及电影院、大型超市、大饭店、餐馆、咖啡馆等，砖道、椰子树等演绎着美国西海岸的风情。', N'【北谷公园落日海滩】落日海滩位于北谷公园内，是冲绳著名的海滨浴场，也是当地人经常来休闲游憩的公共海滩。因为海滩与美国村紧邻，所以游客多以外国人为主。你可以在美国村购物、饮食过后来落日海滩散步一下，放松身心。落日海滩如同其名字一般，是欣赏美丽日落景观的人气景点，在傍晚很多人会聚集到海边等待看日落。', N'【美国村摩天轮】北谷町美国村的标志性建筑便是这个摩天轮，位于Carnival Park购物商场3楼，高度为60米，在最高点可以观看北谷街景和东海。夜晚的摩天轮在彩灯下显得格外浪漫。摩天轮下面还有众多美食商铺和游戏广场。这里还是当年香港电影《恋战冲绳》的拍摄地之一，张国荣在访谈中曾回忆到在这里的拍摄场景。', N'【冲绳美丽海水族馆】冲绳美丽海水族馆坐落于海洋博公园内，号称世界上水吨位第一、鲨鱼种类之多第一、水槽厚度第一，以及首个人工养殖天然珊瑚的大型水族馆，可谓是冲绳海洋的一个缩影。游玩亮点这里最著名的要数贯穿两层楼的巨大水槽“黑潮之海”，在7500立方米的海水里，2条8米多长的鲸鲨在你头顶游来游去，十分震撼。而珊瑚礁触摸池、户外海豚剧场等区域更让水族馆成为全家亲子游玩的好地方。', N'【海洋博公园】海洋博公园是为了纪念1975年举行的冲绳国际海洋博览会，于1976年8月在博览会旧址建立的国营公园。公园的主题是“阳光、花卉与海洋”，公园里的冲绳美丽海水族馆、海豚表演、海洋文化馆等各种设施都很受欢迎。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'TOUR2019512225457', NULL, NULL, N'jpTour', N'那霸 > 冲绳县 > 座间味村 > 北谷町 > 冲绳县 > 本部町 > 恩纳村 > 读谷村 > 冲绳县', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9800, 8700, NULL)
INSERT [dbo].[tblTour] ([id], [title], [type], [area], [days], [contents], [img1], [img2], [img3], [img4], [img5], [img6], [img7], [img8], [img9], [img10], [img11], [img12], [img13], [img14], [img15], [img16], [img17], [img18], [img19], [img20], [info1], [info2], [info3], [info4], [info5], [info6], [info7], [info8], [info9], [info10], [info11], [info12], [info13], [info14], [info15], [info16], [info17], [info18], [info19], [info20], [map], [video], [url], [releaseDate], [pid], [startDate], [startPlace], [country], [features], [supplier], [day1], [day2], [day3], [day4], [day5], [day6], [day7], [day8], [day9], [day10], [day11], [day12], [day13], [day14], [day15], [day16], [day17], [day18], [day19], [day20], [price], [priceNew], [category]) VALUES (2011, N'淡路岛1日游', N'一日游', N'大阪府', N'一日游', N'淡路岛与神户一样隶属於兵库县，位於大阪市的西南方，座落在神户与四国的中间。这里是濑户内海腹地内最大的岛屿，同时也有着「日本最早诞生之岛屿」的神话传说。长形的淡路岛，由北而南划分为淡路市、洲本市、南淡路市，三个行政区，北南两端则分别以「明石海峡大桥」和「鸣门大桥」与神户、四国德岛相连相望。', N'/UploadFile/Tour/Tour1_201809041190832.jpg', N'/UploadFile/Tour/Tour2_201809041190847.jpg', N'/UploadFile/Tour/Tour3_201809041190863.png', N'/UploadFile/Tour/Tour4_201809041190901.jpg', N'/UploadFile/Tour/Tour5_201809041190917.jpg', N'/UploadFile/Tour/Tour6_201809041190941.jpg', N'/UploadFile/Tour/Tour7_201809041190957.jpg', N'/UploadFile/Tour/Tour8_201809041190988.jpg', N'/UploadFile/Tour/Tour9_2018090411914.jpg', N'/UploadFile/Tour/Tour10_20180904119135.jpg', N'/UploadFile/Tour/Tour11_20180904119150.jpg', N'/UploadFile/Tour/Tour12_20180904119183.jpg', N'', N'', N'', N'', N'', N'', N'', N'', N'新大坂站和梅田站', N'香薰花馆。', N'伊弉諾神宮。', N'Takoken餅乾', N'納爾萬麗度假酒店，吃午餐。', N'観光農園/挖芋头体验和品尝当地无花果', N'鯛魚工厂观光', N'最后返回集合地点', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, N'', NULL, N'', N'2018/9/4 11:09:01', N'TOUR2018941191', NULL, N'新大坂站', N'jpTour', N'■淡路島当地无花果品尝（約30分）
■冰凉可口的无花果，任意品尝！
■同时还可以带回家送给亲朋好友。
■鳴門金時的挖芋体验，同时还可以带回家，送给亲朋好友！
★高档人气酒店里面，吃风味自助餐！（約60分）', N'', N'集合时间：早上9点', N'第一站', N'第二站', N'第三站', N'第四站', N'第五站', N'第六站', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, 1950, 1580, NULL)
SET IDENTITY_INSERT [dbo].[tblTour] OFF
GO
