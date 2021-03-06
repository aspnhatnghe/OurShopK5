USE [master]
GO
/****** Object:  Database [eShopK6]    Script Date: 5/14/2019 11:20:44 PM ******/
CREATE DATABASE [eShopK6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eShopK6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\eShopK6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eShopK6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\eShopK6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [eShopK6] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eShopK6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eShopK6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eShopK6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eShopK6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eShopK6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eShopK6] SET ARITHABORT OFF 
GO
ALTER DATABASE [eShopK6] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eShopK6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eShopK6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eShopK6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eShopK6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eShopK6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eShopK6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eShopK6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eShopK6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eShopK6] SET  ENABLE_BROKER 
GO
ALTER DATABASE [eShopK6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eShopK6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eShopK6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eShopK6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eShopK6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eShopK6] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [eShopK6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eShopK6] SET RECOVERY FULL 
GO
ALTER DATABASE [eShopK6] SET  MULTI_USER 
GO
ALTER DATABASE [eShopK6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eShopK6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eShopK6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eShopK6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eShopK6] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'eShopK6', N'ON'
GO
ALTER DATABASE [eShopK6] SET QUERY_STORE = OFF
GO
USE [eShopK6]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/14/2019 11:20:44 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 5/14/2019 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHh] [int] IDENTITY(1,1) NOT NULL,
	[TenHh] [nvarchar](50) NOT NULL,
	[Hinh] [nvarchar](150) NULL,
	[MoTa] [nvarchar](max) NULL,
	[DonGia] [float] NOT NULL,
	[GiamGia] [tinyint] NOT NULL,
	[MaLoai] [int] NOT NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 5/14/2019 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[Hinh] [nvarchar](150) NULL,
	[MaLoaiCha] [int] NOT NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanQua]    Script Date: 5/14/2019 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanQua](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaQT] [int] NOT NULL,
	[MaHh] [int] NOT NULL,
	[MaKh] [nvarchar](max) NULL,
	[NgayNhan] [datetime2](7) NULL,
 CONSTRAINT [PK_NhanQua] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuaTang]    Script Date: 5/14/2019 11:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTang](
	[QuaTangId] [int] IDENTITY(1,1) NOT NULL,
	[TenQua] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NULL,
	[HanDung] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_QuaTang] PRIMARY KEY CLUSTERED 
(
	[QuaTangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190514120834_AddLoai', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190514141144_AddHangHoa', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190514161800_UpdateModel', N'2.1.8-servicing-32085')
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (1, N'Điện thoại - Máy tính bảng', N'Điện thoại - Máy tính bảng', NULL, 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (2, N'Điện thoại', N'Điện thoại', NULL, 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (4, N'Máy tính bảng', N'Máy tính bảng', NULL, 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (5, N'Laptop', N'Laptop', NULL, 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (6, N'Điện tử - Điện lạnh', N'Đồ điện tử', NULL, 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (7, N'Tivi', N'Tivi', NULL, 6)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (8, N'Tủ lạnh', N'Tủ lạnh', NULL, 6)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (9, N'Máy giặt', N'Máy giặt', NULL, 6)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (10, N'Linh, Phụ kiện', N'Linh, Phụ kiện', NULL, 0)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (11, N'Tai nghe', N'Tai nghe', NULL, 10)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (12, N'Sạc dự phòng', N'Sạc dự phòng', NULL, 10)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (13, N'Chuột', N'Chuộc', NULL, 10)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha]) VALUES (14, N'Bàn phím', N'Bàn phìm', NULL, 10)
SET IDENTITY_INSERT [dbo].[Loai] OFF
/****** Object:  Index [IX_HangHoa_MaLoai]    Script Date: 5/14/2019 11:20:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_HangHoa_MaLoai] ON [dbo].[HangHoa]
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanQua_MaHh]    Script Date: 5/14/2019 11:20:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_NhanQua_MaHh] ON [dbo].[NhanQua]
(
	[MaHh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanQua_MaQT]    Script Date: 5/14/2019 11:20:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_NhanQua_MaQT] ON [dbo].[NhanQua]
(
	[MaQT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HangHoa_Loai_MaLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HangHoa_Loai_MaLoai]
GO
ALTER TABLE [dbo].[NhanQua]  WITH CHECK ADD  CONSTRAINT [FK_NhanQua_HangHoa_MaHh] FOREIGN KEY([MaHh])
REFERENCES [dbo].[HangHoa] ([MaHh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanQua] CHECK CONSTRAINT [FK_NhanQua_HangHoa_MaHh]
GO
ALTER TABLE [dbo].[NhanQua]  WITH CHECK ADD  CONSTRAINT [FK_NhanQua_QuaTang_MaQT] FOREIGN KEY([MaQT])
REFERENCES [dbo].[QuaTang] ([QuaTangId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanQua] CHECK CONSTRAINT [FK_NhanQua_QuaTang_MaQT]
GO
USE [master]
GO
ALTER DATABASE [eShopK6] SET  READ_WRITE 
GO
