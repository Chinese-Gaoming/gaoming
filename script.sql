USE [master]
GO
/****** Object:  Database [shop]    Script Date: 06/09/2017 14:22:35 ******/
CREATE DATABASE [shop] ON  PRIMARY 
( NAME = N'shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\shop.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [shop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [shop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [shop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [shop] SET ARITHABORT OFF
GO
ALTER DATABASE [shop] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [shop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [shop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [shop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [shop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [shop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [shop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [shop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [shop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [shop] SET  DISABLE_BROKER
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [shop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [shop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [shop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [shop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [shop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [shop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [shop] SET  READ_WRITE
GO
ALTER DATABASE [shop] SET RECOVERY FULL
GO
ALTER DATABASE [shop] SET  MULTI_USER
GO
ALTER DATABASE [shop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [shop] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'shop', N'ON'
GO
USE [shop]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[UserName] [varchar](50) NULL,
	[Sex] [char](1) NULL,
	[Address] [varchar](1000) NULL,
	[Email] [varchar](50) NULL,
	[Telephone] [varchar](100) NULL,
	[CSRQ] [datetime] NULL,
 CONSTRAINT [PK__Users__1788CC4C03317E3D] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([UserId], [Password], [UserName], [Sex], [Address], [Email], [Telephone], [CSRQ]) VALUES (N'000000', N'000000', N'河东', N'1', N'辽宁', N'1312312321@163.com', N'3123123', NULL)
INSERT [dbo].[Users] ([UserId], [Password], [UserName], [Sex], [Address], [Email], [Telephone], [CSRQ]) VALUES (N'gaoming', N'111', N'高明', N'1', N'辽宁沈阳', N'923380505@qq.com', N'15904921192', CAST(0x0000865200000000 AS DateTime))
/****** Object:  Table [dbo].[GoodsType]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoodsType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_GoodsType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GoodsType] ON
INSERT [dbo].[GoodsType] ([TypeId], [Type]) VALUES (1, N'食品类')
INSERT [dbo].[GoodsType] ([TypeId], [Type]) VALUES (2, N'服装')
INSERT [dbo].[GoodsType] ([TypeId], [Type]) VALUES (4, N'户外')
INSERT [dbo].[GoodsType] ([TypeId], [Type]) VALUES (12, N'生活用品类')
INSERT [dbo].[GoodsType] ([TypeId], [Type]) VALUES (13, N'电子产品')
INSERT [dbo].[GoodsType] ([TypeId], [Type]) VALUES (14, N'家用电器')
SET IDENTITY_INSERT [dbo].[GoodsType] OFF
/****** Object:  Table [dbo].[GoodsOrder]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoodsOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DDH] [varchar](100) NULL,
	[SJ] [datetime] NULL,
	[ADDRESS] [varchar](50) NULL,
	[LXR] [varchar](50) NULL,
	[LXFS] [varchar](20) NULL,
	[ZT] [char](2) NULL,
	[money] [money] NULL,
	[FKZT] [char](2) NULL,
	[GoodsId] [varchar](200) NULL,
	[GoodsName] [varchar](50) NULL,
 CONSTRAINT [PK_GoodsOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GoodsOrder] ON
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (3, N'12313', CAST(0x0000A777017581CB AS DateTime), N'a', N'a', N'a', N'1 ', 2.0000, N'1 ', NULL, NULL)
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (10, N'AA', CAST(0x0000A777017581CB AS DateTime), N'a', N'a', N'a', N'1 ', 1.0000, N'1 ', NULL, NULL)
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (15, N'8974e307-5541-46aa-9782-1809666bc29c', CAST(0x0000A78800ECB5E4 AS DateTime), N'辽宁', N'000000', N'3123123', N'0 ', 944.0000, N'1 ', NULL, NULL)
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (18, N'ddbf5df2-2c14-42ac-8ba9-d20f682e91fb', CAST(0x0000A788014696AA AS DateTime), N'辽宁', N'000000', N'3123123', N'0 ', 922.0000, N'0 ', N'[22, 111, 33, 44, 5]', NULL)
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (19, N'9e42d4ab-4737-4c2c-998d-530c0e8aac3d', CAST(0x0000A788014B7C3D AS DateTime), N'辽宁', N'000000', N'3123123', N'0 ', 922.0000, N'1 ', N'[苹果, 香蕉, 鸭梨, 矿泉水, 黄瓜]', N'苹果,香蕉,鸭梨,矿泉水,黄瓜')
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (20, N'91fd0e22-8eb5-4f52-8aa4-d762e54c2cc5', CAST(0x0000A788014FAD80 AS DateTime), N'辽宁', N'000000', N'3123123', N'0 ', 878.0000, N'0 ', N'[22, 111, 33, 44, 5]', N'[苹果, 香蕉, 鸭梨, 矿泉水, 黄瓜]')
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (21, N'9be643a4-753f-4877-a8b8-902060a1085b', CAST(0x0000A788015245D4 AS DateTime), N'辽宁', N'000000', N'3123123', N'0 ', 232.0000, N'0 ', N'[22, 111, 33, 44, 5]', N'[苹果, 香蕉, 鸭梨, 矿泉水, 黄瓜]')
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (22, N'fb039838-2edf-4a63-8c63-0e341f5ffa9e', CAST(0x0000A78C00DC9BF7 AS DateTime), N'辽宁沈阳', N'gaoming', N'15904921192', N'1 ', 6.0000, N'1 ', N'[2b68b1bc-8052-4448-a355-3eb59d344a51]', N'[多撒多]')
INSERT [dbo].[GoodsOrder] ([ID], [DDH], [SJ], [ADDRESS], [LXR], [LXFS], [ZT], [money], [FKZT], [GoodsId], [GoodsName]) VALUES (23, N'9e40403a-1bfd-43a4-80a2-d9c7c01bb539', CAST(0x0000A78D00CC4228 AS DateTime), N'辽宁沈阳', N'gaoming', N'15904921192', N'1 ', 800.0000, N'1 ', N'[71ec1df4-882e-4300-92bf-25eefae42cb2, 71ec1df4-882e-4300-92bf-25eefae42cb2]', N'[半袖, 半袖]')
SET IDENTITY_INSERT [dbo].[GoodsOrder] OFF
/****** Object:  Table [dbo].[Goods]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Goods](
	[GoodsId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[GoodsName] [varchar](50) NULL,
	[GoodsNumber] [varchar](50) NULL,
	[Producter] [varchar](50) NULL,
	[Package] [varchar](50) NULL,
	[SalePrice] [money] NULL,
	[GoodsImage] [varchar](50) NULL,
	[sjsj] [datetime] NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[GoodsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Goods] ON
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (30, 13, N'iphone手机', N'2cabc8c4-0842-4919-9721-131130ae9bc8', N'深圳', N'盒装', 5000.0000, N'585bd96b-2a69-400c-9db9-dd206ce9d47dxlqg12.jpg', CAST(0x0000A78D009CD3FF AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (31, 12, N'蓝月亮洗衣液', N'ca23012a-b11d-4374-9b61-005cbd37b221', N'辽宁', N'瓶装', 10.0000, N'77d45921-47ee-4437-8096-0e32f67d202cxlqg5.jpg', CAST(0x0000A78D009D5864 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (32, 12, N'手表', N'70a83118-7b16-425c-a5a2-666edf1d0000', N'上海', N'盒装', 1000.0000, N'c5c9bb6d-83a6-4f2a-8ca0-c2f01745e0b5xlqg6.jpg', CAST(0x0000A78D009D95D3 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (34, 1, N'红酒', N'240a6412-3594-4329-9491-c1d178300894', N'江苏', N'瓶装', 200.0000, N'0cbb349a-42a1-4743-9fc6-55f2a3ac8fa5xlqg7.jpg', CAST(0x0000A78D009DEFD1 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (35, 1, N'薯片', N'90bfd2f1-c2fd-41f1-a47f-3aa17b5e61c9', N'辽宁', N'盒装', 5.0000, N'876b73c4-2c42-4c51-ba10-1650f676445exlqg19.jpg', CAST(0x0000A78D009E31ED AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (36, 4, N'手电筒', N'90f12fdc-5fe1-480e-9908-799d1d13f589', N'江苏', N'盒装', 20.0000, N'9a2eba45-8ba3-4bae-8a92-031a6eceeafexlqg14.jpg', CAST(0x0000A78D009E5ABA AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (37, 1, N'奶粉', N'94472d80-dda0-4134-bf19-470dcc03fe83', N'辽宁', N'桶装', 30.0000, N'df073151-32ca-4391-bf56-4073adf97754xlqg4.jpg', CAST(0x0000A78D009FF1BE AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (38, 12, N'电动牙刷', N'5528a4c6-b707-4401-89c3-78ff8c130a14', N'黑龙江', N'盒装', 200.0000, N'cad89cae-5969-4ac9-b9d2-d233f1c827f8xlqg3.jpg', CAST(0x0000A78D00A01A71 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (39, 4, N'呲水枪', N'a7f1a542-6fd1-4630-9312-82a4fca1e611', N'辽宁', N'袋装', 10.0000, N'd9ea9175-5493-4042-8a77-abe48c45d9fcxlqg17.jpg', CAST(0x0000A78D00A55646 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (40, 14, N'热风扇', N'fc1b0659-5767-4409-ae43-8a1cf20d9ca4', N'湖南', N'盒装', 200.0000, N'77965d1f-934a-4c63-af79-db84103cf940xlqg16.jpg', CAST(0x0000A78D00A5CA37 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (41, 14, N'榨汁机', N'f10c9bd6-aec4-48e7-87fc-34a254bc3953', N'福建', N'盒装', 200.0000, N'3411ed6f-4af7-4896-8170-cb1879b20571xlqg2.jpg', CAST(0x0000A78D00A683F8 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (42, 1, N'碧螺春', N'5510810d-1491-4187-af5a-82e7fbbfe4e8', N'江苏', N'罐装', 350.0000, N'51a88418-021a-4629-8ea9-593a62081c72xlqg10.jpg', CAST(0x0000A78D00A777C2 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (45, 12, N'牙膏', N'65bb5ab7-068a-40a2-aa55-d44c89a6beef', N'浙江', N'盒装', 100.0000, N'f34af86a-a575-4291-9508-49852ceb0b25xlqg15.jpg', CAST(0x0000A78D00C92A79 AS DateTime))
INSERT [dbo].[Goods] ([GoodsId], [TypeId], [GoodsName], [GoodsNumber], [Producter], [Package], [SalePrice], [GoodsImage], [sjsj]) VALUES (46, 2, N'半袖', N'71ec1df4-882e-4300-92bf-25eefae42cb2', N'黑龙江', N'袋装', 200.0000, N'e9667a14-3902-477e-83fb-9f9c2e355cbaxlqg20.png', CAST(0x0000A78D00C9DE37 AS DateTime))
SET IDENTITY_INSERT [dbo].[Goods] OFF
/****** Object:  Table [dbo].[Complain]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Complain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Posttime] [datetime] NULL,
	[UserId] [varchar](20) NULL,
	[OrderNumber] [varchar](50) NULL,
	[Content] [varchar](1000) NULL,
	[Result] [varchar](1000) NULL,
	[Flag] [bit] NULL,
 CONSTRAINT [PK_Complain] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Board]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Board](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Content] [varchar](1000) NULL,
	[PostTime] [datetime] NULL,
	[Poster] [varchar](20) NULL,
 CONSTRAINT [PK_Board] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Basket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GoodsId] [varchar](50) NULL,
	[GoodsName] [varchar](50) NULL,
	[SalePrice] [money] NULL,
	[Number] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Basket] ON
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (6, N'33', N'鸭梨', 3.0000, N'33', N'000000')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (7, N'44', N'矿泉水', 44.0000, N'4', N'000000')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (19, N'f096c2e6-c6bb-4e94-83b3-98f8bd6710cc', N'啥功夫大使馆', 22.0000, N'5', N'000000')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (28, N'2b68b1bc-8052-4448-a355-3eb59d344a51', N'多撒多', 2.0000, N'1', N'000000')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (29, N'2b68b1bc-8052-4448-a355-3eb59d344a51', N'多撒多', 2.0000, N'1', N'000000')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (32, N'aa886a0d-10e0-43ce-8fad-8199b6e3d2bb', N'阿达', 132.0000, N'3', N'000000')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (33, N'71ec1df4-882e-4300-92bf-25eefae42cb2', N'半袖', 200.0000, N'1', N'gaoming')
INSERT [dbo].[Basket] ([Id], [GoodsId], [GoodsName], [SalePrice], [Number], [UserId]) VALUES (34, N'71ec1df4-882e-4300-92bf-25eefae42cb2', N'半袖', 200.0000, N'1', N'gaoming')
SET IDENTITY_INSERT [dbo].[Basket] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 06/09/2017 14:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[Name] [varchar](50) NULL,
	[zcsj] [datetime] NULL,
	[remark] [varchar](50) NULL,
	[grade] [int] NULL,
	[cjsj] [datetime] NULL,
 CONSTRAINT [PK__Admin__719FE4887F60ED59] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'aaa', N'1', N'的撒', CAST(0x0000A76600000000 AS DateTime), N'111', 1, NULL)
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'admin', N'2', N'张三', CAST(0x0000A74300000000 AS DateTime), N'dsad', 2, NULL)
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'admin111', N'1', N'而我却二', CAST(0x0000A76000000000 AS DateTime), N'切尔奇翁', 1, CAST(0x0000A777011185A4 AS DateTime))
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'admin4', N'1', N'张三', CAST(0x0000A74300000000 AS DateTime), N'dsad', 1, NULL)
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'admin5', N'1', N'张三', CAST(0x0000A74300000000 AS DateTime), N'dsad', 1, NULL)
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'admin88', N'1', N'高明', CAST(0x0000A76000000000 AS DateTime), N'我爱java', 1, NULL)
INSERT [dbo].[Admin] ([AdminId], [Password], [Name], [zcsj], [remark], [grade], [cjsj]) VALUES (N'qeqe', N'1', N'ewqe', CAST(0x0000A76000000000 AS DateTime), N'1313', 1, NULL)
/****** Object:  Default [DF_GoodsOrder_ZT]    Script Date: 06/09/2017 14:22:36 ******/
ALTER TABLE [dbo].[GoodsOrder] ADD  CONSTRAINT [DF_GoodsOrder_ZT]  DEFAULT ((0)) FOR [ZT]
GO
/****** Object:  Default [DF_GoodsOrder_FKZT]    Script Date: 06/09/2017 14:22:36 ******/
ALTER TABLE [dbo].[GoodsOrder] ADD  CONSTRAINT [DF_GoodsOrder_FKZT]  DEFAULT ((0)) FOR [FKZT]
GO
/****** Object:  Default [DF__Complain__Flag__0CBAE877]    Script Date: 06/09/2017 14:22:36 ******/
ALTER TABLE [dbo].[Complain] ADD  DEFAULT ((0)) FOR [Flag]
GO
/****** Object:  Default [DF_Admin_grade]    Script Date: 06/09/2017 14:22:36 ******/
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_grade]  DEFAULT ((1)) FOR [grade]
GO
