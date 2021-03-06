USE [master]
GO
/****** Object:  Database [LichTrinhTau1]    Script Date: 8/22/2021 7:23:51 PM ******/
CREATE DATABASE [LichTrinhTau1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LichTrinhTau1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LichTrinhTau1.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LichTrinhTau1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LichTrinhTau1_log.ldf' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LichTrinhTau1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LichTrinhTau1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LichTrinhTau1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET ARITHABORT OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LichTrinhTau1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LichTrinhTau1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LichTrinhTau1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LichTrinhTau1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET RECOVERY FULL 
GO
ALTER DATABASE [LichTrinhTau1] SET  MULTI_USER 
GO
ALTER DATABASE [LichTrinhTau1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LichTrinhTau1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LichTrinhTau1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LichTrinhTau1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LichTrinhTau1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LichTrinhTau1', N'ON'
GO
USE [LichTrinhTau1]
GO
/****** Object:  Table [dbo].[DISTANCE]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTANCE](
	[ID_DISTANCE] [int] IDENTITY(1,1) NOT NULL,
	[ID_ROUTE] [int] NULL,
	[CODE_STATION] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DISTANCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MOVED]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVED](
	[ID_MOVED] [int] IDENTITY(1,1) NOT NULL,
	[NAME_STATION] [nvarchar](50) NULL,
	[LAT] [float] NULL,
	[LNG] [float] NULL,
	[RANGES] [nvarchar](20) NULL,
	[ID_ORDER] [int] NULL,
	[Image_Location] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Area] [nvarchar](255) NULL,
	[Height] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Population] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_MOVED] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MOVED2]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVED2](
	[ID_MOVED] [int] IDENTITY(1,1) NOT NULL,
	[NAME_STATION] [nvarchar](50) NULL,
	[LAT] [float] NULL,
	[LNG] [float] NULL,
	[RANGES] [nvarchar](20) NULL,
	[ID_ORDER] [int] NULL,
	[Image_Location] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Area] [nvarchar](255) NULL,
	[Height] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Population] [nvarchar](255) NULL,
 CONSTRAINT [PK_MOVED2] PRIMARY KEY CLUSTERED 
(
	[ID_MOVED] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROUTES]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROUTES](
	[ID_ROUTE] [int] IDENTITY(1,1) NOT NULL,
	[NAME_ROUTE] [nvarchar](5) NULL,
	[DISTANCE_ROUTE] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ROUTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SCHEDULE]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCHEDULE](
	[ID_SCHEDULE] [int] IDENTITY(1,1) NOT NULL,
	[ID_ROUTE] [int] NULL,
	[CODE_TRAIN] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SCHEDULE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STATIONS]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATIONS](
	[CODE_STATION] [int] IDENTITY(1,1) NOT NULL,
	[STATION_NAME] [nvarchar](20) NULL,
	[LAT] [float] NULL,
	[LNG] [float] NULL,
	[STATION_TYPE] [int] NULL,
	[RANGES] [nvarchar](20) NULL,
	[Image_Location] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Area] [nvarchar](255) NULL,
	[Height] [nvarchar](255) NULL,
	[Region] [nvarchar](255) NULL,
	[Population] [nvarchar](255) NULL,
	[RANGES2] [nvarchar](20) NULL,
 CONSTRAINT [PK__STATIONS__95DCC51F7E368118] PRIMARY KEY CLUSTERED 
(
	[CODE_STATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRAINS]    Script Date: 8/22/2021 7:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRAINS](
	[CODE_TRAIN] [varchar](2) NOT NULL,
	[TRAIN_TYPE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODE_TRAIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DISTANCE] ON 

INSERT [dbo].[DISTANCE] ([ID_DISTANCE], [ID_ROUTE], [CODE_STATION]) VALUES (3, 1, 1)
INSERT [dbo].[DISTANCE] ([ID_DISTANCE], [ID_ROUTE], [CODE_STATION]) VALUES (4, 1, 5)
INSERT [dbo].[DISTANCE] ([ID_DISTANCE], [ID_ROUTE], [CODE_STATION]) VALUES (5, 2, 1)
INSERT [dbo].[DISTANCE] ([ID_DISTANCE], [ID_ROUTE], [CODE_STATION]) VALUES (6, 2, 36)
INSERT [dbo].[DISTANCE] ([ID_DISTANCE], [ID_ROUTE], [CODE_STATION]) VALUES (7, 2, 96)
SET IDENTITY_INSERT [dbo].[DISTANCE] OFF
SET IDENTITY_INSERT [dbo].[MOVED] ON 

INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (1, N'Ga Quang Tri', 16.7369534647505, 107.18688757614564, N'STOP', 1, N'https://i.pinimg.com/736x/1d/b6/66/1db6660feac902de473c2476896f7aee.jpg', N'Quảng Trị là một tỉnh ven biển thuộc vùng Bắc Trung Bộ, miền Trung Việt Nam, là địa phương gắn liền với nhiều chiến tích huy hoàng trong hai cuộc kháng chiến chống Pháp và Mỹ.', N'4.746 km²', NULL, N'Quảng Trị', N'650.321 (2018)')
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (2, N'diem1', 16.734088407701957, 107.19216394244656, N'163 km', 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (3, N'diem2', 16.730233067649763, 107.19742668813844, N'160 km', 3, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (4, N'diem3', 16.709098590658034, 107.21633456109348, N'157 km', 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (5, N'diem4', 16.699778452868703, 107.22499896605208, N'154 km', 5, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (6, N'diem5', 16.694148513585006, 107.23233834151036, N'150 km', 6, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (7, N'diem6', 16.684870982690004, 107.24884824970179, N'147 km', 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (8, N'diem7', 16.665158771581666, 107.27016148016595, N'145 km', 8, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (9, N'diem8', 16.654424009279335, 107.28014272372236, N'141 km', 9, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (10, N'diem9', 16.636053774097661, 107.29584355747382, N'138 km', 10, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (11, N'diem10', 16.63123268604058, 107.30526883550247, N'136 km', 11, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (12, N'diem11', 16.606238877795384, 107.3247304971585, N'134 km', 12, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (13, N'diem12', 16.599052566200545, 107.3393588054598, N'132 km', 13, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (14, N'diem13', 16.594232052095681, 107.34447890452424, N'131 km', 14, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (15, N'diem14', 16.591018790343487, 107.34785006689896, N'130 km', 15, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (16, N'diem15', 16.58585947531094, 107.3613011753628, N'128 km', 16, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (17, N'diem16', 16.579481202180908, 107.37448392629858, N'127 km', 17, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (18, N'diem17', 16.564994894540078, 107.39709992473124, N'124 km', 18, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (19, N'diem18', 16.559610482806089, 107.40865066922248, N'123 km', 19, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (20, N'diem19', 16.554870851024791, 107.41193797319519, N'122 km', 20, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (21, N'diem20', 16.521901362671219, 107.43797744301524, N'120 km', 21, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (22, N'diem21', 16.521649222765085, 107.44908407346948, N'117 km', 22, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (23, N'diem22', 16.518478044477177, 107.45914367903994, N'115 km', 23, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (24, N'diem23', 16.5158410597484, 107.46529618527514, N'114 km', 24, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (25, N'diem24', 16.511711848852041, 107.47370183516988, N'113 km', 25, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (26, N'diem25', 16.51138708024687, 107.48562719767944, N'111 km', 26, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (27, N'diem26', 16.511298322991003, 107.49307406895288, N'109 km', 27, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (28, N'diem27', 16.509778892660506, 107.497599075696, N'107 km', 28, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (29, N'diem28', 16.504894757411897, 107.50776112594416, N'103 km', 29, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (30, N'diem29', 16.499189495560145, 107.51899779954988, N'102 km ', 30, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (31, N'diem30', 16.49132879410941, 107.53402970512532, N'100 km', 31, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (32, N'diem31', 16.48336628759283, 107.54616890664768, N'99 km', 32, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (33, N'diem32', 16.479591266974012, 107.5553329994268, N'97 km', 33, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (34, N'diem33', 16.46480648738682, 107.56725447062506, N'95 km', 34, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (35, N'diem34', 16.45823892705052, 107.5717454243521, N'94 km', 35, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (36, N'Ga Hue', 16.456402728645365, 107.57606820621284, N'STOP', 36, N'https://en.wikipedia.org/wiki/Hu%E1%BA%BF#/media/File:Aster_Hue_City.jpg', N'Huế là thành phố tỉnh lỵ của tỉnh Thừa Thiên Huế, Việt Nam. Huế từng là kinh đô của Việt Nam thời phong kiến dưới triều Tây Sơn và nhà Nguyễn. Hiện nay, thành phố là một trong những trung tâm về văn hóa – du lịch, y tế chuyên sâu, giáo dục đào tạo, khoa học công nghệ của Miền Trung - Tây Nguyên và cả nước.', N'70,67 km²', N'15 m', N'Thừa Thiên Huế', N'455.230 (2018)')
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (37, N'diem36', 16.454202667882534, 107.57941867718552, N'93 km', 37, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (38, N'diem37', 16.454280581676368, 107.59243568157248, N'92 km', 38, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (39, N'diem38', 16.452750503672114, 107.59784892534792, N'91 km', 39, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (40, N'diem39', 16.443463526415908, 107.6134096014989, N'89 km', 40, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (41, N'diem40', 16.432847258171, 107.62899700117272, N'87 km', 41, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (42, N'diem41', 16.42548979792122, 107.64458543156522, N'86 km', 42, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (43, N'diem42', 16.421541132691537, 107.65752705253284, N'84 km', 43, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (44, N'diem43', 16.410046178525807, 107.67332967855737, N'82 km', 44, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (45, N'diem44', 16.400623444671492, 107.68455441261982, N'80 km', 45, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (46, N'diem45', 16.395042840158844, 107.69128972802844, N'79 km', 46, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (47, N'diem46', 16.38492283202055, 107.70445821142631, N'77 km', 47, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (48, N'diem47', 16.376359888981931, 107.71518733413376, N'76 km', 48, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (49, N'diem48', 16.362667536710859, 107.73069986600808, N'74 km', 49, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (50, N'diem49', 16.356036320800531, 107.73363439570548, N'73 km', 50, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MOVED] OFF
SET IDENTITY_INSERT [dbo].[MOVED2] ON 

INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (1, N'Ga Da Nang', 16.072328187029164, 108.20656350201904, N'STOP', 96, N'https://diaocthongthai.com/wp-content/uploads/map/VNM/map_polygon_osm_1/vnm__da_nang.jpg', N'Đà Nẵng là một thành phố trực thuộc trung ương, nằm trong vùng Duyên hải Nam Trung Bộ Việt Nam, là thành phố trung tâm và lớn nhất khu vực miền Trung - Tây Nguyên.', N'1.285 km²', NULL, N'Đà Nẵng', N'1,134 triệu (2019)')
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (2, N'diem92', 16.068826906026349, 108.18747087476784, N'163 km', 95, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (3, N'diem91', 16.065383464972363, 108.17096511057844, N'162 km', 94, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (4, N'diem90', 16.066871607419735, 108.1558463485092, N'160 km', 93, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (5, N'diem89', 16.077847872058538, 108.15218330710512, N'158 km', 92, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (6, N'diem88', 16.087198480820014, 108.14612424325782, N'156 km', 91, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (7, N'diem87', 16.101252161019506, 108.13310681134811, N'154 km', 90, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (8, N'diem86', 16.109087212714815, 108.12686202008555, N'153 km', 89, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (9, N'diem85', 16.123562874560903, 108.11833181415405, N'151 km', 88, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (10, N'diem84', 16.140843299118639, 108.11719745136452, N'150 km', 87, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (11, N'diem 83', 16.147227612285906, 108.12584865914973, N'149 km', 86, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (12, N'diem82', 16.165860283680306, 108.13244524108109, N'146 km', 85, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (13, N'diem81', 16.173516033677615, 108.14063953835476, N'133 km', 84, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (14, N'diem80', 16.194890890618463, 108.1487362852622, N'132 km', 83, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (15, N'diem79', 16.208416799084791, 108.13916677766206, N'131 km', 82, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (16, N'diem78', 16.208679510575884, 108.1159948118051, N'129 km', 81, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (17, N'diem77', 16.219664419370382, 108.09641824787188, N'128 km', 80, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (18, N'diem76', 16.217337211954728, 108.08166305230272, N'127 km', 79, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (19, N'diem75', 16.213608112677125, 108.05366756085304, N'126 km', 78, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (20, N'diem74', 16.225389830209185, 108.03610871367373, N'123 km', 77, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (21, N'diem 73', 16.236869169356751, 108.0311128700192, N'122 km', 76, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (22, N'diem72', 16.259135621991646, 108.0274874881857, N'121 km', 75, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (23, N'diem71', 16.268916828367225, 108.01494034694872, N'120 km', 74, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (24, N'diem70', 16.269879889873991, 107.9999940290864, N'118 km', 73, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (25, N'diem69', 16.27081360129716, 107.9821000961404, N'116 km', 72, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (26, N'diem68', 16.271714947701568, 107.96143588311782, N'114 km', 71, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (27, N'diem67', 16.27191383146755, 107.94719618157896, N'113 km', 70, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (28, N'diem66', 16.272085549927937, 107.93484655611221, N'111 km', 69, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (29, N'diem65', 16.272842430038956, 107.9242700754738, N'110 km', 68, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (30, N'diem64', 16.277805370282145, 107.91407068519985, N'109 km', 67, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (31, N'diem63', 16.280790134808111, 107.90463296972548, N'107 km', 66, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (32, N'diem62', 16.275859844968142, 107.89688860040732, N'105 km', 65, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (33, N'diem61', 16.271554684382583, 107.88167973860377, N'103 km', 64, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (34, N'diem60', 16.281200239399588, 107.85185094586258, N'101 km', 63, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (35, N'diem59', 16.281167870851892, 107.8476424147398, N'98 km', 62, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (36, N'diem58', 16.280648792478974, 107.8411880407355, N'96 km', 61, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (37, N'diem57', 16.28257046375769, 107.81748365121986, N'95 km', 60, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (38, N'diem56', 16.291238047539249, 107.80333173436672, N'94 km', 59, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (39, N'diem55', 16.310387874935756, 107.78273973619504, N'91 km', 58, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (40, N'diem54', 16.318399633509831, 107.77345972775412, N'89 km', 57, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (41, N'diem53', 16.326149842435356, 107.75969869527148, N'88 km', 56, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (42, N'diem52', 16.327949460890185, 107.75278867434342, N'87 km', 53, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (43, N'diem51', 16.338727390475292, 107.74083365273016, N'85 km', 52, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (44, N'diem50', 16.344146111149371, 107.73725212448852, N'84 km', 51, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (45, N'diem49', 16.356036320800531, 107.73363439570548, N'83 km', 50, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (46, N'diem48', 16.362667536710859, 107.73069986600808, N'82 km', 49, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (47, N'diem47', 16.376359888981931, 107.71518733413376, N'80 km', 48, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (48, N'diem46', 16.38492283202055, 107.70445821142631, N'79 km', 47, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (49, N'diem45', 16.395042840158844, 107.69128972802844, N'77 km', 46, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (50, N'diem44', 16.400623444671492, 107.68455441261982, N'76 km', 45, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (51, N'diem43', 16.410046178525807, 107.67332967855737, N'74 km', 44, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (52, N'diem42', 16.421541132691537, 107.65752705253284, N'72  km', 43, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (53, N'diem41', 16.42548979792122, 107.64458543156522, N'70 km', 42, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (54, N'diem40', 16.432847258171, 107.62899700117272, N'69 km', 41, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (55, N'diem39', 16.443463526415908, 107.6134096014989, N'67 km', 40, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (56, N'diem38', 16.452750503672114, 107.59784892534792, N'65 km', 39, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (57, N'diem37', 16.454280581676368, 107.59243568157248, N'64 km', 38, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MOVED2] ([ID_MOVED], [NAME_STATION], [LAT], [LNG], [RANGES], [ID_ORDER], [Image_Location], [Description], [Area], [Height], [Region], [Population]) VALUES (58, N'diem36', 16.454202667882534, 107.57941867718552, N'63 km', 37, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MOVED2] OFF
SET IDENTITY_INSERT [dbo].[ROUTES] ON 

INSERT [dbo].[ROUTES] ([ID_ROUTE], [NAME_ROUTE], [DISTANCE_ROUTE]) VALUES (1, N'LT1', 100)
INSERT [dbo].[ROUTES] ([ID_ROUTE], [NAME_ROUTE], [DISTANCE_ROUTE]) VALUES (2, N'LT2', 100)
INSERT [dbo].[ROUTES] ([ID_ROUTE], [NAME_ROUTE], [DISTANCE_ROUTE]) VALUES (3, N'LT3', 200)
SET IDENTITY_INSERT [dbo].[ROUTES] OFF
SET IDENTITY_INSERT [dbo].[SCHEDULE] ON 

INSERT [dbo].[SCHEDULE] ([ID_SCHEDULE], [ID_ROUTE], [CODE_TRAIN]) VALUES (1, 1, N'T1')
INSERT [dbo].[SCHEDULE] ([ID_SCHEDULE], [ID_ROUTE], [CODE_TRAIN]) VALUES (2, 2, N'T2')
SET IDENTITY_INSERT [dbo].[SCHEDULE] OFF
SET IDENTITY_INSERT [dbo].[STATIONS] ON 

INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (1, N'Ga Quang Tri', 16.7369534647505, 107.18688757614564, 1, N'STOP', N'https://i.pinimg.com/736x/1d/b6/66/1db6660feac902de473c2476896f7aee.jpg', N'Quảng Trị là một tỉnh ven biển thuộc vùng Bắc Trung Bộ, miền Trung Việt Nam, là địa phương gắn liền với nhiều chiến tích huy hoàng trong hai cuộc kháng chiến chống Pháp và Mỹ.', N'4.746 km²', NULL, N'Quảng Trị', N'650.321 (2018)', N'STOP')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (2, N'diem1', 16.734088407701957, 107.19216394244656, 3, N'163 km', NULL, NULL, NULL, NULL, NULL, NULL, N'3 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (3, N'diem2', 16.730233067649763, 107.19742668813844, 3, N'160 km', NULL, NULL, NULL, NULL, NULL, NULL, N'5 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (4, N'diem3', 16.709098590658034, 107.21633456109348, 3, N'157 km', NULL, NULL, NULL, NULL, NULL, NULL, N'7 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (5, N'diem4', 16.699778452868703, 107.22499896605208, 3, N'154 km', NULL, NULL, NULL, NULL, NULL, NULL, N'8 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (6, N'diem5', 16.694148513585006, 107.23233834151036, 3, N'150 km', NULL, NULL, NULL, NULL, NULL, NULL, N'10 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (7, N'diem6', 16.684870982690004, 107.24884824970179, 3, N'147 km', NULL, NULL, NULL, NULL, NULL, NULL, N'12 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (8, N'diem7', 16.665158771581666, 107.27016148016595, 3, N'145 km', NULL, NULL, NULL, NULL, NULL, NULL, N'13 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (9, N'diem8', 16.654424009279335, 107.28014272372236, 3, N'141 km', NULL, NULL, NULL, NULL, NULL, NULL, N'15 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (10, N'diem9', 16.636053774097661, 107.29584355747382, 3, N'138 km', NULL, NULL, NULL, NULL, NULL, NULL, N'16 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (11, N'diem10', 16.63123268604058, 107.30526883550247, 3, N'136 km', NULL, NULL, NULL, NULL, NULL, NULL, N'17 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (12, N'diem11', 16.606238877795384, 107.3247304971585, 3, N'134 km', NULL, NULL, NULL, NULL, NULL, NULL, N'20 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (13, N'diem12', 16.599052566200545, 107.3393588054598, 3, N'132 km', NULL, NULL, NULL, NULL, NULL, NULL, N'24 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (14, N'diem13', 16.594232052095681, 107.34447890452424, 3, N'131 km', NULL, NULL, NULL, NULL, NULL, NULL, N'25 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (15, N'diem14', 16.591018790343487, 107.34785006689896, 3, N'130 km', NULL, NULL, NULL, NULL, NULL, NULL, N'26 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (16, N'diem15', 16.58585947531094, 107.3613011753628, 3, N'128 km', NULL, NULL, NULL, NULL, NULL, NULL, N'27 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (17, N'diem16', 16.579481202180908, 107.37448392629858, 3, N'127 km', NULL, NULL, NULL, NULL, NULL, NULL, N'29 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (18, N'diem17', 16.564994894540078, 107.39709992473124, 3, N'124 km', NULL, NULL, NULL, NULL, NULL, NULL, N'32 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (19, N'diem18', 16.559610482806089, 107.40865066922248, 3, N'123 km', NULL, NULL, NULL, NULL, NULL, NULL, N'33 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (20, N'diem19', 16.554870851024791, 107.41193797319519, 3, N'122 km', NULL, NULL, NULL, NULL, NULL, NULL, N'34 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (21, N'diem20', 16.521901362671219, 107.43797744301524, 3, N'120 km', NULL, NULL, NULL, NULL, NULL, NULL, N'36 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (22, N'diem21', 16.521649222765085, 107.44908407346948, 3, N'117 km', NULL, NULL, NULL, NULL, NULL, NULL, N'38 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (23, N'diem22', 16.518478044477177, 107.45914367903994, 3, N'115 km', NULL, NULL, NULL, NULL, NULL, NULL, N'40 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (24, N'diem23', 16.5158410597484, 107.46529618527514, 3, N'114 km', NULL, NULL, NULL, NULL, NULL, NULL, N'41 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (25, N'diem24', 16.511711848852041, 107.47370183516988, 3, N'113 km', NULL, NULL, NULL, NULL, NULL, NULL, N'42 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (26, N'diem25', 16.51138708024687, 107.48562719767944, 3, N'111 km', NULL, NULL, NULL, NULL, NULL, NULL, N'44 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (27, N'diem26', 16.511298322991003, 107.49307406895288, 3, N'109 km', NULL, NULL, NULL, NULL, NULL, NULL, N'46 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (28, N'diem27', 16.509778892660506, 107.497599075696, 3, N'107 km', NULL, NULL, NULL, NULL, NULL, NULL, N'48 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (29, N'diem28', 16.504894757411897, 107.50776112594416, 3, N'103 km', NULL, NULL, NULL, NULL, NULL, NULL, N'53 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (30, N'diem29', 16.499189495560145, 107.51899779954988, 3, N'102 km ', NULL, NULL, NULL, NULL, NULL, NULL, N'54 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (31, N'diem30', 16.49132879410941, 107.53402970512532, 3, N'100 km', NULL, NULL, NULL, NULL, NULL, NULL, N'56 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (32, N'diem31', 16.48336628759283, 107.54616890664768, 3, N'99 km', NULL, NULL, NULL, NULL, NULL, NULL, N'57 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (33, N'diem32', 16.479591266974012, 107.5553329994268, 3, N'97 km', NULL, NULL, NULL, NULL, NULL, NULL, N'59 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (34, N'diem33', 16.46480648738682, 107.56725447062506, 3, N'95 km', NULL, NULL, NULL, NULL, NULL, NULL, N'61 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (35, N'diem34', 16.45823892705052, 107.5717454243521, 3, N'94 km', NULL, NULL, NULL, NULL, NULL, NULL, N'62 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (36, N'Ga Hue', 16.456402728645365, 107.57606820621284, 1, N'STOP', N'https://en.wikipedia.org/wiki/Hu%E1%BA%BF#/media/File:Aster_Hue_City.jpg', N'Huế là thành phố tỉnh lỵ của tỉnh Thừa Thiên Huế, Việt Nam. Huế từng là kinh đô của Việt Nam thời phong kiến dưới triều Tây Sơn và nhà Nguyễn. Hiện nay, thành phố là một trong những trung tâm về văn hóa – du lịch, y tế chuyên sâu, giáo dục đào tạo, khoa học công nghệ của Miền Trung - Tây Nguyên và cả nước.', N'70,67 km²', N'15 m', N'Thừa Thiên Huế', N'455.230 (2018)', N'STOP')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (37, N'diem36', 16.454202667882534, 107.57941867718552, 3, N'93 km', NULL, NULL, NULL, NULL, NULL, NULL, N'63 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (38, N'diem37', 16.454280581676368, 107.59243568157248, 3, N'92 km', NULL, NULL, NULL, NULL, NULL, NULL, N'64 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (39, N'diem38', 16.452750503672114, 107.59784892534792, 3, N'91 km', NULL, NULL, NULL, NULL, NULL, NULL, N'65 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (40, N'diem39', 16.443463526415908, 107.6134096014989, 3, N'89 km', NULL, NULL, NULL, NULL, NULL, NULL, N'67 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (41, N'diem40', 16.432847258171, 107.62899700117272, 3, N'87 km', NULL, NULL, NULL, NULL, NULL, NULL, N'69 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (42, N'diem41', 16.42548979792122, 107.64458543156522, 3, N'86 km', NULL, NULL, NULL, NULL, NULL, NULL, N'70 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (43, N'diem42', 16.421541132691537, 107.65752705253284, 3, N'84 km', NULL, NULL, NULL, NULL, NULL, NULL, N'72  km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (44, N'diem43', 16.410046178525807, 107.67332967855737, 3, N'82 km', NULL, NULL, NULL, NULL, NULL, NULL, N'74 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (45, N'diem44', 16.400623444671492, 107.68455441261982, 3, N'80 km', NULL, NULL, NULL, NULL, NULL, NULL, N'76 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (46, N'diem45', 16.395042840158844, 107.69128972802844, 3, N'79 km', NULL, NULL, NULL, NULL, NULL, NULL, N'77 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (47, N'diem46', 16.38492283202055, 107.70445821142631, 3, N'77 km', NULL, NULL, NULL, NULL, NULL, NULL, N'79 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (48, N'diem47', 16.376359888981931, 107.71518733413376, 3, N'76 km', NULL, NULL, NULL, NULL, NULL, NULL, N'80 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (49, N'diem48', 16.362667536710859, 107.73069986600808, 3, N'74 km', NULL, NULL, NULL, NULL, NULL, NULL, N'82 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (50, N'diem49', 16.356036320800531, 107.73363439570548, 3, N'73 km', NULL, NULL, NULL, NULL, NULL, NULL, N'83 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (51, N'diem50', 16.344146111149371, 107.73725212448852, 3, N'72 km', NULL, NULL, NULL, NULL, NULL, NULL, N'84 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (52, N'diem51', 16.338727390475292, 107.74083365273016, 3, N'71 km', NULL, NULL, NULL, NULL, NULL, NULL, N'85 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (53, N'diem52', 16.327949460890185, 107.75278867434342, 3, N'69 km', NULL, NULL, NULL, NULL, NULL, NULL, N'87 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (56, N'diem53', 16.326149842435356, 107.75969869527148, 3, N'68 km', NULL, NULL, NULL, NULL, NULL, NULL, N'88 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (57, N'diem54', 16.318399633509831, 107.77345972775412, 3, N'67 km', NULL, NULL, NULL, NULL, NULL, NULL, N'89 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (58, N'diem55', 16.310387874935756, 107.78273973619504, 3, N'65 km', NULL, NULL, NULL, NULL, NULL, NULL, N'91 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (59, N'diem56', 16.291238047539249, 107.80333173436672, 3, N'62 km', NULL, NULL, NULL, NULL, NULL, NULL, N'94 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (60, N'diem57', 16.28257046375769, 107.81748365121986, 3, N'61 km', NULL, NULL, NULL, NULL, NULL, NULL, N'95 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (61, N'diem58', 16.280648792478974, 107.8411880407355, 3, N'60 km', NULL, NULL, NULL, NULL, NULL, NULL, N'96 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (62, N'diem59', 16.281167870851892, 107.8476424147398, 3, N'58 km', NULL, NULL, NULL, NULL, NULL, NULL, N'98 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (63, N'diem60', 16.281200239399588, 107.85185094586258, 3, N'56 km', NULL, NULL, NULL, NULL, NULL, NULL, N'101 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (64, N'diem61', 16.271554684382583, 107.88167973860377, 3, N'53 km', NULL, NULL, NULL, NULL, NULL, NULL, N'103 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (65, N'diem62', 16.275859844968142, 107.89688860040732, 3, N'51 km', NULL, NULL, NULL, NULL, NULL, NULL, N'105 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (66, N'diem63', 16.280790134808111, 107.90463296972548, 3, N'49 km', NULL, NULL, NULL, NULL, NULL, NULL, N'107 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (67, N'diem64', 16.277805370282145, 107.91407068519985, 3, N'48 km', NULL, NULL, NULL, NULL, NULL, NULL, N'109 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (68, N'diem65', 16.272842430038956, 107.9242700754738, 3, N'47 km', NULL, NULL, NULL, NULL, NULL, NULL, N'110 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (69, N'diem66', 16.272085549927937, 107.93484655611221, 3, N'46 km', NULL, NULL, NULL, NULL, NULL, NULL, N'111 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (70, N'diem67', 16.27191383146755, 107.94719618157896, 3, N'44 km', NULL, NULL, NULL, NULL, NULL, NULL, N'113 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (71, N'diem68', 16.271714947701568, 107.96143588311782, 3, N'43 km', NULL, NULL, NULL, NULL, NULL, NULL, N'114 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (72, N'diem69', 16.27081360129716, 107.9821000961404, 3, N'41 km', NULL, NULL, NULL, NULL, NULL, NULL, N'116 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (73, N'diem70', 16.269879889873991, 107.9999940290864, 3, N'39 km', NULL, NULL, NULL, NULL, NULL, NULL, N'118 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (74, N'diem71', 16.268916828367225, 108.01494034694872, 3, N'37 km', NULL, NULL, NULL, NULL, NULL, NULL, N'120 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (75, N'diem72', 16.259135621991646, 108.0274874881857, 3, N'36 km', NULL, NULL, NULL, NULL, NULL, NULL, N'121 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (76, N'diem 73', 16.236869169356751, 108.0311128700192, 3, N'35 km', NULL, NULL, NULL, NULL, NULL, NULL, N'122 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (77, N'diem74', 16.225389830209185, 108.03610871367373, 3, N'34 km', NULL, NULL, NULL, NULL, NULL, NULL, N'123 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (78, N'diem75', 16.213608112677125, 108.05366756085304, 3, N'31 km', NULL, NULL, NULL, NULL, NULL, NULL, N'126 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (79, N'diem76', 16.217337211954728, 108.08166305230272, 3, N'30 km', NULL, NULL, NULL, NULL, NULL, NULL, N'127 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (80, N'diem77', 16.219664419370382, 108.09641824787188, 3, N'29 km', NULL, NULL, NULL, NULL, NULL, NULL, N'128 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (81, N'diem78', 16.208679510575884, 108.1159948118051, 3, N'27 km', NULL, NULL, NULL, NULL, NULL, NULL, N'129 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (82, N'diem79', 16.208416799084791, 108.13916677766206, 3, N'26 km', NULL, NULL, NULL, NULL, NULL, NULL, N'131 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (83, N'diem80', 16.194890890618463, 108.1487362852622, 3, N'25 km', NULL, NULL, NULL, NULL, NULL, NULL, N'132 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (84, N'diem81', 16.173516033677615, 108.14063953835476, 3, N'24 km', NULL, NULL, NULL, NULL, NULL, NULL, N'133 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (85, N'diem82', 16.165860283680306, 108.13244524108109, 3, N'20 km', NULL, NULL, NULL, NULL, NULL, NULL, N'146 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (86, N'diem 83', 16.147227612285906, 108.12584865914973, 3, N'17 km', NULL, NULL, NULL, NULL, NULL, NULL, N'149 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (87, N'diem84', 16.140843299118639, 108.11719745136452, 3, N'16 km', NULL, NULL, NULL, NULL, NULL, NULL, N'150 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (88, N'diem85', 16.123562874560903, 108.11833181415405, 3, N'15 km', NULL, NULL, NULL, NULL, NULL, NULL, N'151 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (89, N'diem86', 16.109087212714815, 108.12686202008555, 3, N'13 km', NULL, NULL, NULL, NULL, NULL, NULL, N'153 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (90, N'diem87', 16.101252161019506, 108.13310681134811, 3, N'12 km', NULL, NULL, NULL, NULL, NULL, NULL, N'154 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (91, N'diem88', 16.087198480820014, 108.14612424325782, 3, N'10 km', NULL, NULL, NULL, NULL, NULL, NULL, N'156 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (92, N'diem89', 16.077847872058538, 108.15218330710512, 3, N'8 km', NULL, NULL, NULL, NULL, NULL, NULL, N'158 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (93, N'diem90', 16.066871607419735, 108.1558463485092, 3, N'7 km', NULL, NULL, NULL, NULL, NULL, NULL, N'160 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (94, N'diem91', 16.065383464972363, 108.17096511057844, 3, N'5 km', NULL, NULL, NULL, NULL, NULL, NULL, N'162 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (95, N'diem92', 16.068826906026349, 108.18747087476784, 3, N'3 km', NULL, NULL, NULL, NULL, NULL, NULL, N'163 km')
INSERT [dbo].[STATIONS] ([CODE_STATION], [STATION_NAME], [LAT], [LNG], [STATION_TYPE], [RANGES], [Image_Location], [Description], [Area], [Height], [Region], [Population], [RANGES2]) VALUES (96, N'Ga Da Nang', 16.072328187029164, 108.20656350201904, 1, N'STOP', N'https://diaocthongthai.com/wp-content/uploads/map/VNM/map_polygon_osm_1/vnm__da_nang.jpg', N'Đà Nẵng là một thành phố trực thuộc trung ương, nằm trong vùng Duyên hải Nam Trung Bộ Việt Nam, là thành phố trung tâm và lớn nhất khu vực miền Trung - Tây Nguyên.', N'1.285 km²', NULL, N'Đà Nẵng', N'1,134 triệu (2019)', N'STOP')
SET IDENTITY_INSERT [dbo].[STATIONS] OFF
INSERT [dbo].[TRAINS] ([CODE_TRAIN], [TRAIN_TYPE]) VALUES (N'T1', 1)
INSERT [dbo].[TRAINS] ([CODE_TRAIN], [TRAIN_TYPE]) VALUES (N'T2', 2)
ALTER TABLE [dbo].[DISTANCE]  WITH CHECK ADD  CONSTRAINT [fk_codeS] FOREIGN KEY([CODE_STATION])
REFERENCES [dbo].[STATIONS] ([CODE_STATION])
GO
ALTER TABLE [dbo].[DISTANCE] CHECK CONSTRAINT [fk_codeS]
GO
ALTER TABLE [dbo].[DISTANCE]  WITH CHECK ADD  CONSTRAINT [fk_idR] FOREIGN KEY([ID_ROUTE])
REFERENCES [dbo].[ROUTES] ([ID_ROUTE])
GO
ALTER TABLE [dbo].[DISTANCE] CHECK CONSTRAINT [fk_idR]
GO
ALTER TABLE [dbo].[SCHEDULE]  WITH CHECK ADD  CONSTRAINT [fk_codeT] FOREIGN KEY([CODE_TRAIN])
REFERENCES [dbo].[TRAINS] ([CODE_TRAIN])
GO
ALTER TABLE [dbo].[SCHEDULE] CHECK CONSTRAINT [fk_codeT]
GO
ALTER TABLE [dbo].[SCHEDULE]  WITH CHECK ADD  CONSTRAINT [fk_idR2] FOREIGN KEY([ID_ROUTE])
REFERENCES [dbo].[ROUTES] ([ID_ROUTE])
GO
ALTER TABLE [dbo].[SCHEDULE] CHECK CONSTRAINT [fk_idR2]
GO
USE [master]
GO
ALTER DATABASE [LichTrinhTau1] SET  READ_WRITE 
GO
