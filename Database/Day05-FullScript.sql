USE [eShopK6]
GO
ALTER TABLE [dbo].[NhanQua] DROP CONSTRAINT [FK_NhanQua_QuaTang_MaQT]
GO
ALTER TABLE [dbo].[NhanQua] DROP CONSTRAINT [FK_NhanQua_HangHoa_MaHh]
GO
ALTER TABLE [dbo].[HangHoa] DROP CONSTRAINT [FK_HangHoa_Loai_MaLoai]
GO
ALTER TABLE [dbo].[DonHang] DROP CONSTRAINT [FK_DonHang_KhachHang_MaKh]
GO
ALTER TABLE [dbo].[CTDonHang] DROP CONSTRAINT [FK_CTDonHang_HangHoa_MaHh]
GO
ALTER TABLE [dbo].[CTDonHang] DROP CONSTRAINT [FK_CTDonHang_DonHang_MaDh]
GO
/****** Object:  Index [IX_NhanQua_MaQT]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP INDEX [IX_NhanQua_MaQT] ON [dbo].[NhanQua]
GO
/****** Object:  Index [IX_NhanQua_MaHh]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP INDEX [IX_NhanQua_MaHh] ON [dbo].[NhanQua]
GO
/****** Object:  Index [IX_HangHoa_MaLoai]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP INDEX [IX_HangHoa_MaLoai] ON [dbo].[HangHoa]
GO
/****** Object:  Index [IX_DonHang_MaKh]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP INDEX [IX_DonHang_MaKh] ON [dbo].[DonHang]
GO
/****** Object:  Index [IX_CTDonHang_MaHh]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP INDEX [IX_CTDonHang_MaHh] ON [dbo].[CTDonHang]
GO
/****** Object:  Index [IX_CTDonHang_MaDh]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP INDEX [IX_CTDonHang_MaDh] ON [dbo].[CTDonHang]
GO
/****** Object:  Table [dbo].[QuaTang]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[QuaTang]
GO
/****** Object:  Table [dbo].[NhanQua]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[NhanQua]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[Loai]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[KhachHang]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[HangHoa]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[DonHang]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[CTDonHang]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [eShopK6]    Script Date: 5/26/2019 8:27:04 AM ******/
DROP DATABASE [eShopK6]
GO
/****** Object:  Database [eShopK6]    Script Date: 5/26/2019 8:27:04 AM ******/
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
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [eShopK6]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/26/2019 8:27:05 AM ******/
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
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 5/26/2019 8:27:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDh] [int] NOT NULL,
	[MaHh] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
 CONSTRAINT [PK_CTDonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/26/2019 8:27:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayDatHang] [datetime2](7) NOT NULL,
	[TrangThaiDonHang] [int] NOT NULL,
	[TongTien] [float] NOT NULL,
	[MaKh] [nvarchar](20) NULL,
	[DiaChiGiaoHang] [nvarchar](max) NULL,
	[NguoiNhan] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 5/26/2019 8:27:05 AM ******/
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
	[TenKhongDau] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/26/2019 8:27:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKh] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](150) NOT NULL,
	[GioiTinh] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[ConHieuLuc] [bit] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 5/26/2019 8:27:05 AM ******/
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
	[TenKhongDau] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanQua]    Script Date: 5/26/2019 8:27:05 AM ******/
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
/****** Object:  Table [dbo].[QuaTang]    Script Date: 5/26/2019 8:27:05 AM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190521115949_TenKhongDau', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190523122636_Order', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190523135619_UpdateKhachHang', N'2.1.11-servicing-32099')
SET IDENTITY_INSERT [dbo].[CTDonHang] ON 

INSERT [dbo].[CTDonHang] ([Id], [MaDh], [MaHh], [SoLuong], [DonGia]) VALUES (2, 2, 1, 1, 32990000)
INSERT [dbo].[CTDonHang] ([Id], [MaDh], [MaHh], [SoLuong], [DonGia]) VALUES (3, 3, 2, 1, 39499000)
INSERT [dbo].[CTDonHang] ([Id], [MaDh], [MaHh], [SoLuong], [DonGia]) VALUES (4, 4, 3, 1, 4290000)
SET IDENTITY_INSERT [dbo].[CTDonHang] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Id], [NgayDatHang], [TrangThaiDonHang], [TongTien], [MaKh], [DiaChiGiaoHang], [NguoiNhan]) VALUES (2, CAST(N'2019-05-25T19:50:31.9442459' AS DateTime2), 0, 32990000, N'KH636944106318333934', N'105 Bà Huyện Thanh Quan', N'Trần Minh Huy')
INSERT [dbo].[DonHang] ([Id], [NgayDatHang], [TrangThaiDonHang], [TongTien], [MaKh], [DiaChiGiaoHang], [NguoiNhan]) VALUES (3, CAST(N'2019-05-25T20:02:16.0427441' AS DateTime2), 0, 39499000, N'KH636944113359255576', N'280 An Dương Vương', N'Hy Hiến')
INSERT [dbo].[DonHang] ([Id], [NgayDatHang], [TrangThaiDonHang], [TongTien], [MaKh], [DiaChiGiaoHang], [NguoiNhan]) VALUES (4, CAST(N'2019-05-25T20:09:07.1645004' AS DateTime2), 0, 4290000, N'KH636944117470474206', N'280 An Dương Vương', N'Hy Hiến')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[HangHoa] ON 

INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (1, N'IPhone XS Max Gold 64GB', N'iPhone-Xs-Max-gold.jpg', N'IPhone XS Max Golg 64GB', 32990000, 0, 2, N'iphone-xs-max-gold-64gb')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (2, N'Macbook Air 13', N'macbook-air-13-2018-Gold-1.jpg', N'Macbook Air 13', 39499000, 5, 4, N'macbook-air-13')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (3, N'Samsung Galaxy A50 black', N'samsung-galaxy-a50-black.png', N'Điện thoại Samsung Galaxy A50 64GB', 4290000, 3, 2, N'samsung-galaxy-a50-black')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (4, N'Samsung Galaxy S10 64Gb', N'samsung-galaxy-s10-white.png', N'Điện thoại Samsung Galaxy S10 64GB', 17990000, 2, 2, N'samsung-galaxy-s10-64gb')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (5, N'OPPO F11 Pro 128GB', N'oppo-f11-pro-128gb.png', N'OPPO F11 Pro 128GB', 8490000, 3, 2, N'oppo-f11-pro-128gb')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (6, N'iPad Mini 7.9 inch Wifi Cellular 64GB (2019)', N'ipad-mini-79-inch-wifi-cellular-64gb-2019-gray.png', N'iPad Mini 7.9 inch Wifi Cellular 64GB (2019)', 14990000, 1, 4, N'ipad-mini-79-inch-wifi-cellular-64gb-2019')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (7, N'Samsung Galaxy Tab A 10.1 T515 (2019)', N'samsung-galaxy-tab-a-101-t515-2019-gold.png', N'Samsung Galaxy Tab A 10.1 T515 (2019)', 7490000, 1, 4, N'samsung-galaxy-tab-a-101-t515-2019')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (8, N' Masstel Tab10 Plus', N'masstel-tab10-plus.png', N' Masstel Tab10 Plus', 2990000, 0, 4, N'masstel-tab10-plus')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (9, N'Dell Vostro 3578 i7 8550U', N'dell-vostro-3578.jpg', N'Dell Vostro 3578 i7 8550U/8GB/1TB/2GB 520/Win10/(NGMPF11)', 20990000, 0, 5, N'dell-vostro-3578-i7-8550u')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (10, N'Samsung Galaxy A9 (2018)', N'samsung-galaxy-a9-2018-blue.jpg', N'Samsung Galaxy A9 (2018)', 7990000, 7, 2, N'samsung-galaxy-a9-2018')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (11, N'Samsung Galaxy Note 8', N'samsung-galaxy-note8-black.png', N'Samsung Galaxy Note 8, RAM 6GB, 64GB', 11990000, 9, 2, N'samsung-galaxy-note-8')
INSERT [dbo].[HangHoa] ([MaHh], [TenHh], [Hinh], [MoTa], [DonGia], [GiamGia], [MaLoai], [TenKhongDau]) VALUES (12, N'Samsung Galaxy A9 (2018) Blue', N'samsung-galaxy-a9-2018-blue.jpg', N'<figure class="table"><table><tbody><tr><td>Thương hiệu</td><td><a href="http://tiki.vn/thuong-hieu/samsung.html">Samsung</a></td></tr><tr><td>Phụ kiện đi kèm</td><td>Phụ kiện bao gồm: Sạc, Tai nghe, Hộp, Cáp, Cây lấy sim, Sách hướng dẫn</td></tr><tr><td>Loại / Công nghệ màn hình</td><td>Super AMOLED</td></tr><tr><td>Kích thước màn hình</td><td>6.3 inch</td></tr><tr><td>Độ phân giải màn hình</td><td>Full HD+ (1080 x 2220 pixels)</td></tr><tr><td>Camera trước</td><td>24MP</td></tr><tr><td>Camera sau</td><td>24 MP, 10 MP, 8 MP và 5 MP (4 camera)</td></tr><tr><td>Tính năng camera</td><td>Zoom quang học (Camera kép), Chụp ảnh xóa phông, A.I Camera, Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Beautify</td></tr><tr><td>Đèn Flash</td><td>Có</td></tr><tr><td>Video call</td><td>Hỗ trợ VideoCall thông qua ứng dụng</td></tr><tr><td>Quay phim</td><td>Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps</td></tr><tr><td>Bộ nhớ RAM</td><td>6GB</td></tr><tr><td>Bộ nhớ trong (ROM)</td><td>128GB</td></tr><tr><td>Bộ nhớ còn lại (khả dụng)</td><td>Đang cập nhật</td></tr><tr><td>Hỗ trợ thẻ nhớ ngoài</td><td>MicroSD</td></tr><tr><td>Hỗ trợ thẻ tối đa</td><td>512GB</td></tr><tr><td>Trọng lượng</td><td>183g</td></tr><tr><td>Kích thước</td><td>Dài 162.5 mm - Ngang 77 mm - Dày 7.8 mm</td></tr><tr><td>Tên chip</td><td>Qualcomm Snapdragon 660 8 nhân</td></tr><tr><td>Tốc độ chip (GHz)</td><td>4 nhân 2.2 GHz &amp; 4 nhân 1.8 GHz</td></tr><tr><td>Chip đồ họa (GPU)</td><td>Adreno 512</td></tr><tr><td>Hệ điều hành</td><td>Android 8.1 (Oreo)</td></tr><tr><td>Dung lượng pin (mAh)</td><td>3800mAh</td></tr><tr><td>Loại pin</td><td>Pin chuẩn Li-Ion</td></tr><tr><td>Hỗ trợ 4G</td><td>Có</td></tr><tr><td>Loại Sim</td><td>Nano Sim</td></tr><tr><td>Số khe sim</td><td>2</td></tr><tr><td>Wifi</td><td>Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi Direct, Wi-Fi hotspot</td></tr><tr><td>GPS</td><td>BDS, A-GPS, GLONASS</td></tr><tr><td>Bluetooth</td><td>LE, A2DP, v5.0</td></tr><tr><td>Cổng sạc</td><td>USB Type-C</td></tr><tr><td>Jack tai nghe</td><td>3.5 mm</td></tr><tr><td>Xem phim</td><td>3GP, MP4, AVI, H.264(MPEG4-AVC)</td></tr><tr><td>Nghe nhạc</td><td>MP3, WAV, WMA, AAC+, eAAC+, OGG</td></tr><tr><td>Ghi âm</td><td>Có, microphone chuyên dụng chống ồn</td></tr><tr><td>FM radio</td><td>Có</td></tr><tr><td>SKU</td><td>7108150601818</td></tr></tbody></table></figure>', 7990000, 2, 2, N'samsung-galaxy-a9-2018-blue')
SET IDENTITY_INSERT [dbo].[HangHoa] OFF
INSERT [dbo].[KhachHang] ([MaKh], [HoTen], [GioiTinh], [Email], [DiaChi], [MatKhau], [ConHieuLuc]) VALUES (N'KH636944106318333934', N'Trần Minh Huy', 0, N'minhhuy@nhatnghe.com', N'105 Bà Huyện Thanh Quan', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKh], [HoTen], [GioiTinh], [Email], [DiaChi], [MatKhau], [ConHieuLuc]) VALUES (N'KH636944113359255576', N'Hy Hiến', 0, N'aspnhatnghe@gmail.com', N'280 An Dương Vương', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKh], [HoTen], [GioiTinh], [Email], [DiaChi], [MatKhau], [ConHieuLuc]) VALUES (N'KH636944117470474206', N'Hy Hiến', 0, N'aspnhatnghe@gmail.com', N'280 An Dương Vương', NULL, 0)
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (1, N'Điện thoại - Máy tính bảng', N'Điện thoại - Máy tính bảng', NULL, 0, N'dien-thoai-may-tinh-bang')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (2, N'Điện thoại', N'Điện thoại', NULL, 1, N'dien-thoai')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (4, N'Máy tính bảng', N'Máy tính bảng', NULL, 1, N'may-tinh-bang')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (5, N'Laptop', N'Laptop', NULL, 1, N'laptop')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (6, N'Điện tử - Điện lạnh', N'Đồ điện tử', NULL, 0, N'dien-tu-dien-lanh')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (7, N'Tivi', N'Tivi', NULL, 6, N'tivi')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (8, N'Tủ lạnh', N'Tủ lạnh', NULL, 6, N'tu-lanh')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (9, N'Máy giặt', N'Máy giặt', NULL, 6, N'may-giat')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (10, N'Linh, Phụ kiện', N'Linh, Phụ kiện', NULL, 0, N'linh-phu-kien')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (11, N'Tai nghe', N'Tai nghe', NULL, 10, N'tai-nghe')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (12, N'Sạc dự phòng', N'Sạc dự phòng', NULL, 10, N'sac-du-phong')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (13, N'Chuột', N'Chuộc', NULL, 10, N'chuot')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa], [Hinh], [MaLoaiCha], [TenKhongDau]) VALUES (14, N'Bàn phím', N'Bàn phìm', NULL, 10, N'ban-phim')
SET IDENTITY_INSERT [dbo].[Loai] OFF
/****** Object:  Index [IX_CTDonHang_MaDh]    Script Date: 5/26/2019 8:27:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_CTDonHang_MaDh] ON [dbo].[CTDonHang]
(
	[MaDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CTDonHang_MaHh]    Script Date: 5/26/2019 8:27:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_CTDonHang_MaHh] ON [dbo].[CTDonHang]
(
	[MaHh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DonHang_MaKh]    Script Date: 5/26/2019 8:27:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_DonHang_MaKh] ON [dbo].[DonHang]
(
	[MaKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangHoa_MaLoai]    Script Date: 5/26/2019 8:27:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_HangHoa_MaLoai] ON [dbo].[HangHoa]
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanQua_MaHh]    Script Date: 5/26/2019 8:27:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_NhanQua_MaHh] ON [dbo].[NhanQua]
(
	[MaHh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanQua_MaQT]    Script Date: 5/26/2019 8:27:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_NhanQua_MaQT] ON [dbo].[NhanQua]
(
	[MaQT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_DonHang_MaDh] FOREIGN KEY([MaDh])
REFERENCES [dbo].[DonHang] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_DonHang_MaDh]
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDonHang_HangHoa_MaHh] FOREIGN KEY([MaHh])
REFERENCES [dbo].[HangHoa] ([MaHh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK_CTDonHang_HangHoa_MaHh]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang_MaKh] FOREIGN KEY([MaKh])
REFERENCES [dbo].[KhachHang] ([MaKh])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang_MaKh]
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
