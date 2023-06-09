USE [NewApp]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[maDonHang] [varchar](100) NOT NULL,
	[maSanPham] [varchar](100) NOT NULL,
	[soLuong] [int] NULL,
	[giaBan] [int] NULL,
 CONSTRAINT [ChiTietDonHang_pk] PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC,
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[MaChucNang] [nvarchar](50) NOT NULL,
	[TenChucNang] [nvarchar](50) NULL,
	[NhomChucNang] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[maDonHang] [varchar](100) NOT NULL,
	[maKhachHang] [int] NULL,
	[giaTri] [int] NULL,
	[ngayDat] [smalldatetime] NULL,
	[trangThaiDonHang] [int] NULL,
	[diaChi] [nvarchar](2000) NULL,
	[sdt] [nchar](10) NULL,
	[email] [nvarchar](50) NULL,
	[ghiChu] [nvarchar](1000) NULL,
	[hoTen] [nvarchar](1000) NULL,
	[phuongThucThanhToan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[maHangSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[tenHangSanXuat] [nvarchar](100) NULL,
	[logoPath] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHangSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhSanPham]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhSanPham](
	[imagePath] [nvarchar](200) NULL,
	[maHinhAnh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_HinhAnhSanPham] PRIMARY KEY CLUSTERED 
(
	[maHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenTheLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[maPhuongThuc] [int] IDENTITY(1,1) NOT NULL,
	[tenPhuongThuc] [nvarchar](200) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[maPhuongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[UserId] [int] NOT NULL,
	[MaChucNang] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[MaChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [varchar](100) NOT NULL,
	[tenSanPham] [nvarchar](200) NULL,
	[moTaSanPham] [nvarchar](3999) NULL,
	[giaSanPham] [int] NULL,
	[soLuongSanPham] [int] NULL,
	[theLoaiSanPham] [int] NULL,
	[hinhAnhSanPham] [nvarchar](100) NULL,
	[maHangSanXuat] [int] NULL,
	[hinhAnhSanPhamPath] [nvarchar](3999) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_YeuThich]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_YeuThich](
	[ID] [int] NOT NULL,
	[User_ID] [int] NULL,
	[SanPham_ID] [varchar](100) NULL,
	[Time] [smalldatetime] NULL,
 CONSTRAINT [PK_SanPham_YeuThich] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDonHang]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDonHang](
	[maTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[tenTranThai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebUser]    Script Date: 10/04/2023 3:54:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NULL,
	[PassWord] [nvarchar](30) NULL,
	[gmail] [nvarchar](30) NULL,
	[ngayTaoTaiKhoan] [smalldatetime] NULL,
	[avatarPath] [nvarchar](100) NULL,
	[isAdmin] [bit] NULL,
	[diaChi] [nvarchar](500) NULL,
	[dienThoai] [varchar](10) NULL,
	[hoTen] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD329', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD33453', N'xxx00000001', 1, 10000000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD33826', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD33826', N'ako_00000006', 1, 699000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD33826', N'ako_0000002', 1, 1450000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD34625', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD34625', N'ako_00000006', 1, 699000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD34625', N'ako_0000002', 1, 1450000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD34745', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD34745', N'ako_00000006', 1, 699000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD34745', N'ako_0000002', 1, 1450000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'24/03/2023 12:00:00 AMKD35724', N'ako_0000003', 5, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD115935938699', N'ako_0000001', 1, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD1230335485950', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD13813611255', N'ako_0000001', 15, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD13813611255', N'lgt_00000007', 15, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD141933657984', N'ako_0000003', 9, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD141933657984', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD141933657984', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD141933657984', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD1472343341114', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD1680358501062', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD182333327863', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD1851335318019', N'lgt_00000002', 1, 2590000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD21973136637', N'lgt_00000002', 1, 2590000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD220346136390', N'xxx00000001', 1, 10000000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD246446182935', N'GGS_4969343342Ear96', 1, 1100000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD2548325239726', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD2664320259525', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD2664320259525', N'ako_00000006', 1, 699000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD2664320259525', N'dar_0000001', 3, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD277739401026', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD2940312408347', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3046324442558', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD306142274471', N'GGS_4969343342Ear96', 1, 1100000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD307334388159', N'ako_00000005', 1, 699000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3124352321433', N'lgt_00000007', 1, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD328537464738', N'hpx_00000001', 1, 1290000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3286352292688', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3314330459546', N'lgt_00000007', 1, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD349336533471', N'ako_0000003', 9, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD349336533471', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD349336533471', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD349336533471', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3554323389921', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3628326507222', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3687349452497', N'dru_0000005', 1, 749000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD3687349452497', N'lgt_0000006', 1, 1749000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4146333238129', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4146333238129', N'lgt_00000002', 1, 2590000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4212318199289', N'ako_0000003', 9, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4212318199289', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4212318199289', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4212318199289', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD42933214390', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4653464996', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4966351244422', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4966351244422', N'lgt_00000007', 1, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4983323374686', N'ako_0000003', 1, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4983323374686', N'asus_0000001', 5, 790000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4983323374686', N'lgt_00000007', 2, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD4983323374686', N'rzer_0000002', 5, 750000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD507332742130', N'ako_000000010', 2, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD507332742130', N'hpx_00000001', 2, 1290000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD5395347201696', N'hpx_00000002', 1, 1390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD54603583420', N'lgt_00000003', 100, 790000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD551532324430', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD553344536314', N'rzer_0000002', 5, 750000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD555239542530', N'ako_0000003', 1, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD555239542530', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD555239542530', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD555239542530', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD55763765161', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD5873324128443', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD6020329347842', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD605830565093', N'hpx_00000002', 3, 1390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD605830565093', N'rzer_0000002', 3, 750000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD6314336549470', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD6341319151528', N'ako_0000001', 1, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD64473582611', N'ako_0000003', 1, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD647333581071', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD6672350425', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD668440182484', N'ako_0000002', 1, 1450000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD6832340188984', N'lgt_00000007', 1, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD687041023011', N'GGS_4969343342Ear96', 1, 1100000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD698633583463', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7034320544283', N'lgt_00000002', 1, 2590000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD718231153862', N'ako_0000001', 1, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7186321239949', N'ako_00000005', 2, 699000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7186321239949', N'dru_0000005', 23, 749000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7393341546515', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD75835948655', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7629319189268', N'ako_0000001', 1, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD762933164341', N'ako_0000003', 9, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD762933164341', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD762933164341', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD762933164341', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD763733259837', N'ako_0000001', 10, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD763733259837', N'lgt_00000007', 11, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD763733259837', N'lgt_00000008', 10, 800000)
GO
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7733327139328', N'ako_0000003', 3, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7733327139328', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7814347382287', N'ako_0000003', 9, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7814347382287', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7814347382287', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7814347382287', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD78634258455', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7952318287620', N'ako_0000003', 9, 2022000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7952318287620', N'KBLO082', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7952318287620', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD7952318287620', N'rzer_0000001', 1, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD802535961759', N'lgt_00000003', 100, 790000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD8431338363365', N'lgt_0000006', 1, 1749000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD844347331390', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD8597358498224', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD87223561488', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'ako_000000010', 5, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'asus_0000002', 5, 790000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'dru_00000003', 5, 999000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'dru_0000005', 1, 749000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'hpx_00000001', 5, 1290000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'hpx_00000002', 5, 1390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'KBLO082', 4, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'lgt_00000002', 2, 2590000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'lgt_00000003', 5, 790000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'lgt_00000008', 5, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'rzer_0000001', 5, 2290)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9017353245275', N'ZOOM65V2-3', 1, 4500000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD905732612376', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9148376846', N'ako_0000001', 15, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9148376846', N'lgt_00000007', 15, 3990000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9153346309872', N'lgt_00000008', 1, 800000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9326358195856', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9434314444643', N'dar_0000001', 1, 1010000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD951322105735', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9586325134332', N'ako_000000010', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD964445323955', N'GGS_4969343342Ear96', 1, 1100000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD968734523776', N'KBLO082', 1, 2390000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD9880328484872', N'ako_0000001', 1, 2799000)
INSERT [dbo].[ChiTietDonHang] ([maDonHang], [maSanPham], [soLuong], [giaBan]) VALUES (N'KD991732811680', N'lgt_0000006', 1, 1749000)
GO
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [NhomChucNang]) VALUES (N'accounting_priority', N'Kế toán', N'accounting')
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [NhomChucNang]) VALUES (N'admin_priority', N'Admin', N'admin')
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [NhomChucNang]) VALUES (N'managers_priority', N'Quản lý', N'managers')
INSERT [dbo].[ChucNang] ([MaChucNang], [TenChucNang], [NhomChucNang]) VALUES (N'seller_priority', N'Người bán', N'seller')
GO
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD3280', NULL, 1, CAST(N'2023-03-24T16:28:00' AS SmallDateTime), 5, N'thnahh oas, 3, 2, 922', N'098765432 ', N'mail', N'test', N'quan', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD329', NULL, 1, CAST(N'2023-03-24T16:03:00' AS SmallDateTime), 2, N'Thanh hóa, 6, 5, 1300', N'0987988790', N'hquan2612@gail.com', N'test', N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD33453', NULL, 10035000, CAST(N'2023-03-24T16:35:00' AS SmallDateTime), 5, N'thnah hoa, 1, 2, 17', N'020202020 ', N'hquan261203@gmail.com', N'a', N'trna hoag', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD33826', NULL, 3, CAST(N'2023-03-24T10:38:00' AS SmallDateTime), 3, N', null, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD34625', NULL, 3, CAST(N'2023-03-24T10:46:00' AS SmallDateTime), 4, N', null, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD34745', NULL, 3, CAST(N'2023-03-24T10:48:00' AS SmallDateTime), 2, N', null, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'24/03/2023 12:00:00 AMKD35724', NULL, 5, CAST(N'2023-03-24T15:57:00' AS SmallDateTime), 5, N', null, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD1044310348094', NULL, 35000, CAST(N'2023-03-25T22:11:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD115935938699', NULL, 2834000, CAST(N'2023-03-24T18:00:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD1230335485950', NULL, 835000, CAST(N'2023-03-25T01:36:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD13813611255', NULL, 101870000, CAST(N'2023-03-25T02:06:00' AS SmallDateTime), 1, N', -1, null, null', N'          ', N'ledinhlong28hr@gmail.com', NULL, N'Lê Đình Long', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD141933657984', NULL, 30985290, CAST(N'2023-03-25T19:37:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD1472343341114', 13, 1045000, CAST(N'2023-03-26T00:44:00' AS SmallDateTime), 1, N'Thanh Hóa, An Lạc A, Bình Tân, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD1680358501062', NULL, 2425000, CAST(N'2023-03-25T17:59:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD182333327863', NULL, 835000, CAST(N'2023-03-25T23:33:00' AS SmallDateTime), 1, N'Thanh Hóa, Tam Lư, Quan Sơn, Thanh Hóa', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD1851335318019', 13, 2625000, CAST(N'2023-03-28T04:36:00' AS SmallDateTime), 1, N'Thanh Hóa, Cam An Bắc, Cam Lâm, Khánh Hòa', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD1975332364096', NULL, 35000, CAST(N'2023-03-25T23:33:00' AS SmallDateTime), 1, N'Thanh Hóa, undefined, undefined, undefined', N'0912412312', N'luuli@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD21973136637', 13, 2625000, CAST(N'2023-03-28T09:01:00' AS SmallDateTime), 1, N'Thanh Hóa, Phú Sơn, Thanh Hóa, Thanh Hóa', N'0912412312', N'vanhuy098420@gmail.com', N'ngu', N'Đỗ Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD220346136390', NULL, 10035000, CAST(N'2023-03-25T01:46:00' AS SmallDateTime), 2, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD246446182935', NULL, 1135000, CAST(N'2023-04-10T14:06:00' AS SmallDateTime), 1, N'Thanh Hóa, Bình Hưng Hòa, Bình Tân, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 2)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD2548325239726', NULL, 2425000, CAST(N'2023-03-24T17:25:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD2664320259525', 13, 6154000, CAST(N'2023-03-27T00:20:00' AS SmallDateTime), 1, N'55, Đông Vệ, Thanh Hóa, Thanh Hóa', N'0912412312', N'hoangquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD277739401026', 4016, 1045000, CAST(N'2023-03-27T16:10:00' AS SmallDateTime), 1, N'12, Định Quán, Định Quán, Đồng Nai', N'0912412312', N'hoangquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD2936332212990', NULL, 35000, CAST(N'2023-03-25T23:32:00' AS SmallDateTime), 1, N'Thanh Hóa, Quảng Thọ, Sầm Sơn, Thanh Hóa', N'0912412312', N'luuli@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD2940312408347', 4016, 1045000, CAST(N'2023-03-27T16:13:00' AS SmallDateTime), 1, N'Thanh Hóa, Hòa Bắc, Hòa Vang, Đà Nẵng', N'0912412312', N'luuli@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3046324442558', NULL, 2425000, CAST(N'2023-03-24T17:25:00' AS SmallDateTime), 1, N', -1, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD306142274471', NULL, 1135000, CAST(N'2023-04-10T14:02:00' AS SmallDateTime), 1, N'Thanh Hóa, Sơn Đà, Ba Vì, Hà Nội', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD307334388159', 13, 734000, CAST(N'2023-03-28T09:05:00' AS SmallDateTime), 1, N'Thanh Hóa, Thành Long, Thạch Thành, Thanh Hóa', N'0912412312', N'vanhuy098420@gmail.com', NULL, N'Đỗ Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3124352321433', NULL, 4025000, CAST(N'2023-03-25T00:53:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3278310325449', NULL, 35000, CAST(N'2023-03-25T22:11:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD328537464738', 13, 1325000, CAST(N'2023-03-26T03:08:00' AS SmallDateTime), 1, N'98 Nguyễn Hữu Lương, Hưng Hòa, Bàu Bàng, Bình Dương', N'0778886767', N'hoangquan26122003@gmail.com', NULL, N'Trần Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3286352292688', NULL, 2425000, CAST(N'2023-03-25T17:52:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3314330459546', NULL, 4025000, CAST(N'2023-03-25T00:31:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD349336533471', NULL, 30985290, CAST(N'2023-03-25T19:37:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3554323389921', NULL, 2425000, CAST(N'2023-03-25T00:24:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3628326507222', NULL, 2425000, CAST(N'2023-03-25T19:27:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD3687349452497', 13, 2533000, CAST(N'2023-03-26T12:50:00' AS SmallDateTime), 1, N'Thanh Hóa, Cây Trường II, Bàu Bàng, Bình Dương', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD4146333238129', 13, 3635000, CAST(N'2023-03-28T04:33:00' AS SmallDateTime), 3, N'Thanh Hóa, Hàm Hiệp, Hàm Thuận Bắc, Bình Thuận  ', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD4212318199289', NULL, 30985290, CAST(N'2023-03-25T20:18:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD42933214390', 13, 2425000, CAST(N'2023-03-28T10:32:00' AS SmallDateTime), 1, N'55, Thuỷ Vân, Hương Thủy, Thừa Thiên Huế', N'0912412312', N'vanhuy098420@gmail.com', NULL, N'Đỗ Lưu Văn Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD465231016847', NULL, 35000, CAST(N'2023-03-25T22:10:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD4653464996', NULL, 2425000, CAST(N'2023-03-25T18:46:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD4966351244422', 4016, 5035000, CAST(N'2023-03-27T15:51:00' AS SmallDateTime), 1, N'Thanh Hóa, An Phú Tây, Bình Chánh, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD4983323374686', 4016, 17737000, CAST(N'2023-03-27T15:24:00' AS SmallDateTime), 1, N'Thanh Hóa, An Phú Tây, Bình Chánh, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD507332742130', NULL, 7395000, CAST(N'2023-03-25T20:27:00' AS SmallDateTime), 1, N'98 Nguyễn Hữu Lương, Hiệp Bình Chánh, Thủ Đức, Hồ Chí Minh', N'0778886767', N'hquan26122003@gmail.com', N'Nodejs', N'Trần Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD5132722163', NULL, 35000, CAST(N'2023-03-25T23:27:00' AS SmallDateTime), 1, N'Thanh Hóa, Lê Mao, Vinh, Nghệ An', N'0912412312', N'luuli@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD5395347201696', NULL, 1425000, CAST(N'2023-03-25T01:47:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD54603583420', NULL, 79035000, CAST(N'2023-03-25T02:58:00' AS SmallDateTime), 1, N'   , Nam Ngạn, Thanh Hóa, Thanh Hóa', N'          ', N'ledinhlong28hr@gmail.com', NULL, N'Lê Đình Long', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD551532324430', NULL, 2425000, CAST(N'2023-03-24T17:23:00' AS SmallDateTime), 1, N', -1, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD553344536314', NULL, 3785000, CAST(N'2023-03-25T23:45:00' AS SmallDateTime), 1, N'Thanh Hóa, Mỹ Đình 1, Nam Từ Liêm, Hà Nội', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD555239542530', NULL, 14809290, CAST(N'2023-03-25T22:10:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD55763765161', 13, 2425000, CAST(N'2023-03-26T03:07:00' AS SmallDateTime), 1, N'98 Nguyễn Hữu Lương, An Tây, Bến Cát, Bình Dương', N'0778886767', N'hoangquan26122003@gmail.com', NULL, N'Trần Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD5873324128443', NULL, 2425000, CAST(N'2023-03-25T00:24:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD6020329347842', NULL, 2425000, CAST(N'2023-03-25T20:30:00' AS SmallDateTime), 1, N'98 Nguyễn Hữu Lương, Bình Hưng, Bình Chánh, Hồ Chí Minh', N'0778886767', N'hoangquan26122003@gmail.com', N'Nodejs', N'Trần Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD605830565093', 13, 6455000, CAST(N'2023-03-26T12:01:00' AS SmallDateTime), 3, N'98 Nguyễn Hữu Lương, Điện Biên, Ba Đình, Hà Nội', N'0778886767', N'hoangquan26122003@gmail.com', NULL, N'Trần Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD6314336549470', NULL, 835000, CAST(N'2023-03-25T01:37:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD6341319151528', 13, 2834000, CAST(N'2023-03-28T02:19:00' AS SmallDateTime), 3, N'98 Nguyễn Hữu Lương, Hòa Châu, Hòa Vang, Đà Nẵng', N'0778886767', N'hoangquan26122003@gmail.com', NULL, N'Lê Đình Long', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD64473582611', 4016, 2057000, CAST(N'2023-03-27T16:05:00' AS SmallDateTime), 1, N'Thanh Hóa, An Phú Tây, Bình Chánh, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD647333581071', NULL, 835000, CAST(N'2023-03-25T01:35:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD649131088679', NULL, 35000, CAST(N'2023-03-25T22:10:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD661831043644', NULL, 35000, CAST(N'2023-03-25T22:10:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD6672350425', NULL, 2425000, CAST(N'2023-03-25T19:05:00' AS SmallDateTime), 1, N'Thanh Hóa, Đa Phước, Bình Chánh, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', N'note', N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD668440182484', 13, 1485000, CAST(N'2023-04-02T00:00:00' AS SmallDateTime), 2, N'Thanh Hóa, Mai Dịch, Cầu Giấy, Hà Nội', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 2)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD6832340188984', NULL, 4025000, CAST(N'2023-03-25T00:40:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD687041023011', NULL, 1135000, CAST(N'2023-04-10T14:10:00' AS SmallDateTime), 1, N'Thanh Hóa, An Lạc A, Bình Tân, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Đỗ Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD698633583463', NULL, 2425000, CAST(N'2023-03-25T19:04:00' AS SmallDateTime), 1, N'Thanh Hóa, undefined, undefined, undefined', N'0912412312', N'hquan26122003@gmail.com', N'get', N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7034320544283', NULL, 2625000, CAST(N'2023-03-24T17:21:00' AS SmallDateTime), 1, N', -1, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD718231153862', 13, 2834000, CAST(N'2023-03-29T11:12:00' AS SmallDateTime), 2, N'Thanh Hóa, An Phú Tây, Bình Chánh, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 2)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7186321239949', 13, 18660000, CAST(N'2023-03-28T10:21:00' AS SmallDateTime), 1, N'Thanh Hóa, Phú Sơn, Thanh Hóa, Thanh Hóa', N'53252     ', N'vanhuy098420@gmail.com', N'ngu', N'Đỗ Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7393341546515', NULL, 2425000, CAST(N'2023-03-25T00:42:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD75835948655', NULL, 2425000, CAST(N'2023-03-25T18:00:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7629319189268', NULL, 2834000, CAST(N'2023-03-25T02:19:00' AS SmallDateTime), 1, N', -1, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD762933164341', NULL, 30985290, CAST(N'2023-03-25T19:31:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD763733259837', NULL, 79915000, CAST(N'2023-03-25T02:03:00' AS SmallDateTime), 1, N'Thanh Hóa, -1, null, null', N'0772349065', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7733327139328', NULL, 18051000, CAST(N'2023-03-25T19:27:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7814347382287', NULL, 30985290, CAST(N'2023-03-25T19:48:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD78634258455', NULL, 2425000, CAST(N'2023-03-25T19:04:00' AS SmallDateTime), 1, N'Thanh Hóa, Cổ Nhuế 2, Bắc Từ Liêm, Hà Nội', N'021031203 ', N'hquan26122003@gmail.com', N'note', N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD7952318287620', NULL, 30985290, CAST(N'2023-03-25T20:18:00' AS SmallDateTime), 1, N'12, Bình Hưng, Bình Chánh, Hồ Chí Minh', N'12312312  ', N'123123', NULL, N'12312', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD802535961759', NULL, 79035000, CAST(N'2023-03-25T02:59:00' AS SmallDateTime), 1, N', An Lạc A, Bình Tân, Hồ Chí Minh', NULL, N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD834233053517', 13, 35000, CAST(N'2023-03-28T10:30:00' AS SmallDateTime), 1, N'Thanh Hóa, undefined, undefined, Kiên Giang', N'53252     ', N'vanhuy098420@gmail.com', N'ngu', N'Đỗ Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD8431338363365', 13, 1784000, CAST(N'2023-03-28T23:39:00' AS SmallDateTime), 3, N'98 Nguyễn Hữu Lương, Long Cang, Cần Đước, Long An', N'0778886767', N'hoangquan26122003@gmail.com', NULL, N'Trần Hoàng Quân', 2)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD844347331390', NULL, 2425000, CAST(N'2023-03-25T18:48:00' AS SmallDateTime), 1, N'Thanh Hóa, Đồng Tháp, Đan Phượng, Hà Nội', N'0912412312', N'hquan26122003@gmail.com', N'get', N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD8597358498224', NULL, 2425000, CAST(N'2023-03-25T17:59:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD87223561488', NULL, 2425000, CAST(N'2023-03-26T03:05:00' AS SmallDateTime), 1, N'98 Nguyễn Hữu Lương, 11, Bình Thạnh, Hồ Chí Minh', N'0778886767', N'hoangquan26122003@gmail.com', NULL, N'Trần Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9017353245275', 13, 62280450, CAST(N'2023-03-28T10:53:00' AS SmallDateTime), 2, N'54 Phú Vinh, Phú Sơn, Thanh Hóa, Thanh Hóa', N'0946358136', N'Dolong210200@gmail.com', NULL, N'Đỗ Lưu Minh Long', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD905732612376', NULL, 2425000, CAST(N'2023-03-25T00:26:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9148376846', NULL, 101870000, CAST(N'2023-03-25T02:07:00' AS SmallDateTime), 1, N', -1, null, null', N'0383521572', N'satchan28102003@gmail.com ', NULL, N'Lưu Ngọc Huy', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9153346309872', NULL, 835000, CAST(N'2023-03-25T02:47:00' AS SmallDateTime), 1, N'52 Nguyễn Hữu Liêu, Thanh Hóa, Thanh Hóa, An Hoạch', N'0778549099', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9326358195856', NULL, 2425000, CAST(N'2023-03-25T17:58:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9434314444643', 4016, 1045000, CAST(N'2023-03-27T16:15:00' AS SmallDateTime), 1, N'Thanh Hóa, Hòa Phát, Cẩm Lệ, Đà Nẵng', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD951322105735', NULL, 2425000, CAST(N'2023-03-24T17:22:00' AS SmallDateTime), 1, N', -1, null, null', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9586325134332', NULL, 2425000, CAST(N'2023-03-25T00:25:00' AS SmallDateTime), 1, N', -1, null, null', NULL, N'hquan26122003@gmail.com', NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD964445323955', NULL, 1135000, CAST(N'2023-04-10T14:06:00' AS SmallDateTime), 1, N'Thanh Hóa, Bình Hưng Hòa, Bình Tân, Hồ Chí Minh', N'0912412312', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', 2)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD968734523776', NULL, 2425000, CAST(N'2023-03-25T18:45:00' AS SmallDateTime), 1, N', undefined, undefined, undefined', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD9880328484872', NULL, 2834000, CAST(N'2023-03-25T23:29:00' AS SmallDateTime), 1, N'Thanh Hóa, Thành Long, Thạch Thành, Thanh Hóa', N'0912412312', N'luuli@gmail.com', NULL, N'Hoàng Quân', 1)
INSERT [dbo].[DonHang] ([maDonHang], [maKhachHang], [giaTri], [ngayDat], [trangThaiDonHang], [diaChi], [sdt], [email], [ghiChu], [hoTen], [phuongThucThanhToan]) VALUES (N'KD991732811680', 13, 1784000, CAST(N'2023-03-28T23:28:00' AS SmallDateTime), 1, N'Thanh Hóa, Định  Hiệp, Dầu Tiếng, Bình Dương', N'53252     ', N'hquan26122003@gmail.com', NULL, N'Hoàng Quân', NULL)
GO
SET IDENTITY_INSERT [dbo].[HangSanXuat] ON 

INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (1, N'Logitech', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2, N'Royal Kludge', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (1002, N'Meletrix', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2002, N'Akko', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2003, N'Dareu', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2004, N'Asus', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2005, N'Corsair', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2006, N'SteelSeries', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2007, N'Razor', NULL)
INSERT [dbo].[HangSanXuat] ([maHangSanXuat], [tenHangSanXuat], [logoPath]) VALUES (2008, N'HyperX', NULL)
SET IDENTITY_INSERT [dbo].[HangSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([maTheLoai], [tenTheLoai]) VALUES (1, N'Bàn Phím')
INSERT [dbo].[LoaiSanPham] ([maTheLoai], [tenTheLoai]) VALUES (2, N'Chuột')
INSERT [dbo].[LoaiSanPham] ([maTheLoai], [tenTheLoai]) VALUES (3, N'Decor')
INSERT [dbo].[LoaiSanPham] ([maTheLoai], [tenTheLoai]) VALUES (4, N'Tay cầm')
INSERT [dbo].[LoaiSanPham] ([maTheLoai], [tenTheLoai]) VALUES (5, N'Tai nghe')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([maPhuongThuc], [tenPhuongThuc]) VALUES (1, N'Thanh toán khi nhận hàng (COD)')
INSERT [dbo].[Payment] ([maPhuongThuc], [tenPhuongThuc]) VALUES (2, N'Chuyển khoản qua ngân hàng')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
INSERT [dbo].[PhanQuyen] ([UserId], [MaChucNang], [GhiChu]) VALUES (13, N'admin_priority', NULL)
INSERT [dbo].[PhanQuyen] ([UserId], [MaChucNang], [GhiChu]) VALUES (13, N'managers_priority', NULL)
INSERT [dbo].[PhanQuyen] ([UserId], [MaChucNang], [GhiChu]) VALUES (14, N'admin_priority', NULL)
INSERT [dbo].[PhanQuyen] ([UserId], [MaChucNang], [GhiChu]) VALUES (15, N'admin_priority', NULL)
INSERT [dbo].[PhanQuyen] ([UserId], [MaChucNang], [GhiChu]) VALUES (15, N'managers_priority', NULL)
INSERT [dbo].[PhanQuyen] ([UserId], [MaChucNang], [GhiChu]) VALUES (17, N'seller_priority', NULL)
GO
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_000000010', N'AKKO ACR 59', N'<h2>Đ&aacute;nh gi&aacute; B&agrave;n ph&iacute;m cơ Akko ACR59 White White sw (Akko CS Jelly/USB/RGB)</h2>

<p><img alt="Bàn phím cơ Akko ACR59 White White sw (Akko CS Jelly/USB/RGB) 1" src="https://hanoicomputercdn.com/media/lib/11-05-2022/ban-phim-co-akko-acr59-white-white-sw-akko-cs-jelly-usb-rgb-001.jpg" style="width:100%" /></p>

<h3>Layout độc đ&aacute;o</h3>

<p>Akko ACR59 White mang cho m&igrave;nh một thiết kế layout mini kh&aacute; quen thuộc, loại bỏ đi 2 ph&iacute;m Windows, thiết kế n&agrave;y giống với những chiếc b&agrave;n ph&iacute;m HHKB cao cấp trước đ&acirc;y.</p>

<p><img alt="Bàn phím cơ Akko ACR59 White White sw (Akko CS Jelly/USB/RGB) 2" src="https://hanoicomputercdn.com/media/lib/11-05-2022/ban-phim-co-akko-acr59-white-white-sw-akko-cs-jelly-usb-rgb-002.jpg" style="width:100%" /></p>

<h3>Chất liệu cao cấp</h3>

<p>Phần case được l&agrave;m từ nhựa Acrylic cao cấp được gia c&ocirc;ng chất lượng, tỉ mỉ, mang lại độ thẩm mỹ cao</p>

<p><img alt="Bàn phím cơ Akko ACR59 White White sw (Akko CS Jelly/USB/RGB) 3" src="https://hanoicomputercdn.com/media/lib/11-05-2022/ban-phim-co-akko-acr59-white-white-sw-akko-cs-jelly-usb-rgb-003.jpg" style="width:100%" /></p>

<h3>Keycap độc đ&aacute;o / Switch chất lượng cao</h3>

<p><img alt="Bàn phím cơ Akko ACR59 White White sw (Akko CS Jelly/USB/RGB) 4" src="https://hanoicomputercdn.com/media/lib/11-05-2022/ban-phim-co-akko-acr59-white-white-sw-akko-cs-jelly-usb-rgb-004.jpg" style="height:591px; width:875px" /></p>

<p>Bộ keycap Black On White với chất liệu PBT doubleshot cực kỳ bền bỉ, c&ugrave;ng với đ&oacute; l&agrave; thiết kế song ngữ đang rất được ưa chuộng hiện n&agrave;y</p>

<p>Switch Akko CS Jelly White với cảm gi&aacute;c g&otilde; tuyến t&iacute;nh, ph&ugrave; hợp với người d&ugrave;ng th&iacute;ch sự mượt m&agrave;, với thiết kế bi&ecirc;n độ l&ograve; xo d&agrave;y hơn so với phi&ecirc;n bản trước, mang lại trải nghiệm g&otilde; chất lượng hơn. Ngo&agrave;i ra, b&agrave;n ph&iacute;m c&ograve;n hỗ trợ t&iacute;nh năng hotswap ch&acirc;n 5 pin, gi&uacute;p người d&ugrave;ng c&oacute; thể thay thế loại switch bất kỳ m&agrave; m&igrave;nh th&iacute;ch.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 2390000, 10, 1, N'/images/akkoArc59.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_00000004', N'AKKO Hamster Plus – Hima', N'<p>Chuột kh&ocirc;ng d&acirc;y 2.4GHz<br />
Khoảng c&aacute;ch tối đa: 10m<br />
Size to hơn bản cũ<br />
Th&iacute;ch hợp cho c&ocirc;ng việc văn ph&ograve;ng<br />
1,200 DPI<br />
Sử dụng 1 pin AA (thời gian sử dụng l&ecirc;n tới 6 th&aacute;ng, trong hộp đ&atilde; c&oacute; sẵn 1 pin)<br />
Trọng lượng: 84g<br />
Hệ điều h&agrave;nh tương th&iacute;ch: Windows XP/Vista/7/8/10 &ndash; Mac OS &ndash; Chrome OS<br />
Tặng k&egrave;m t&uacute;i đựng chuột</p>

<p><img alt="Kích thước AKKO Hamster Momo Plus so sánh với AKKO Hamster Momo" src="https://akkogear.com.vn/wp-content/uploads/2021/05/chuot-khong-day-AKKO-Hamster-MOMO-Plus-02.jpg" style="height:553px; width:600px" /></p>

<p><img alt="Hộp của AKKO Hamster Momo Plus" src="https://akkogear.com.vn/wp-content/uploads/2021/05/chuot-khong-day-AKKO-Hamster-MOMO-Plus-Box.jpg" style="height:341px; width:600px" /></p>
', 369000, 5, 2, N'/images/Akkohamsterplus.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_00000005', N'AG325 One Piece – Zoro', N'<p>Thiết kế đối xứng<br />
Mắt đọc PWM3327<br />
Giao tiếp USB, d&acirc;y c&aacute;p d&agrave;i 1,8m<br />
Vỏ nhựa ABS<br />
Con lăn kim loại CNC<br />
Switch Omron (50 triệu lần nhấn)<br />
Số n&uacute;t: 6 (c&oacute; n&uacute;t ri&ecirc;ng set DPI 200 cho game FPS)<br />
Hỗ trợ macro, t&ugrave;y chỉnh được th&ocirc;ng qua phần mềm driver ri&ecirc;ng<br />
K&iacute;ch thước: 125x65x37 mm<br />
DPI: 200/800/1000/1500 (mặc định)/2000/2500<br />
Polling Rate: 125/250/500/1000 Hz<br />
Trọng lượng: 117g (t&iacute;nh d&acirc;y) v&agrave; 80.5g (kh&ocirc;ng t&iacute;nh d&acirc;y)<br />
K&iacute;ch thước: 125x65x37 mm</p>
', 699000, 0, 2, N'/images/akkoZoro.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_00000006', N'AKKO AG325 Dragon Ball Super – Goku SSG', N'<p>Thiết kế đối xứng<br />
Mắt đọc PWM3327<br />
Giao tiếp USB, d&acirc;y c&aacute;p d&agrave;i 1,8m<br />
Vỏ nhựa ABS<br />
Con lăn kim loại CNC<br />
Switch Omron (50 triệu lần nhấn)<br />
Số n&uacute;t: 6 (c&oacute; n&uacute;t ri&ecirc;ng set DPI 200 cho game FPS)<br />
Hỗ trợ macro, t&ugrave;y chỉnh được th&ocirc;ng qua phần mềm driver ri&ecirc;ng<br />
K&iacute;ch thước: 125x65x37 mm<br />
DPI: 200/800/1000/1500 (mặc định)/2000/2500<br />
Polling Rate: 125/250/500/1000 Hz<br />
Trọng lượng: 117g (t&iacute;nh d&acirc;y) v&agrave; 80.5g (kh&ocirc;ng t&iacute;nh d&acirc;y)<br />
K&iacute;ch thước: 125x65x37 mm</p>
', 699000, 3, 2, N'/images/akkogoku.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_0000001', N'AKKO PC75B Plus Year of Tiger', N'<p>&ndash; Kết nối: Bluetooth/ Wired (Type-C): dual mode<br />
&ndash; Keycap Profile:Low-Profile switch &amp; keycaps<br />
&ndash; Loại switch: D-KAILH switch: Brown/ Red<br />
&ndash; Layout: 68 key</p>

<p>&ndash; Keycaps: ABS<br />
&ndash; LED: Ice Blue<br />
&ndash; Batterry: 2.000mAh<br />
&ndash; Support: 3 devices (Window, Mac, iOS, Android)<br />
&nbsp;</p>
', 2799000, 3, 1, N'/images/AkkoPC75BTiger.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_0000002', N'Akko 3068 Doraemon ', N'<p>Model: 3068 (68 keys) &ndash; LED RGB<br />
Kết nối: Bluetooth 5.0 / USB Type C, c&oacute; thể th&aacute;o rời<br />
Kết nối 4 thiết bị (4 profiles)<br />
Dung lượng pin: 1800 mah ~ 200 giờ hoạt động<br />
K&iacute;ch thước: 312x102x40 mm<br />
Keycap: PBT Dye-Subbed &ndash; OEM Profile<br />
Loại switch: Akko (Blue/Orange/Pink) switch v2 , C&oacute; Hot swap<br />
Hỗ trợ NKRO/Multimedia/Macro/Kh&oacute;a ph&iacute;m Windows<br />
Phụ kiện: 1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB + keycap tặng k&egrave;m<br />
Tương th&iacute;ch: Windows / MacOS / Linux / IOS / ANDROID<br />
<img src="https://sp-ao.shortpixel.ai/client/to_auto,q_lossy,ret_img,w_1920,h_1080/https://akko.vn/wp-content/uploads/2021/02/duolamei_shiwu_04.jpg" style="height:338px; width:600px" /><br />
<img src="https://sp-ao.shortpixel.ai/client/to_auto,q_lossy,ret_img,w_1920,h_1080/https://akko.vn/wp-content/uploads/2021/02/duolamei_shiwu_05.jpg" style="height:338px; width:600px" /></p>

<p><br />
&nbsp;</p>
', 1450000, 4, 1, N'/images/Akko3068Doraemon.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ako_0000003', N'AKKO 3068B Plus World Tour', N'<p>M&ocirc; tả</p>
', 2022000, 0, 1, N'/images/akko3068BTokyo.jpg', 2002, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'asus_0000001', N'ASUS TUF GAMING H1', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;tai nghe ASUS TUF GAMING H1</strong></h2>

<h2><strong>Thiết kế si&ecirc;u gọn nhẹ</strong></h2>

<p>Ho&agrave;n thiện với trọng lượng chỉ khoảng 287g, ASUS TUF Gaming H1 l&agrave; chiếc&nbsp;<a href="https://gearvn.com/pages/tai-nghe-may-tinh">t</a>ai nghe gaming&nbsp;v&ocirc; c&ugrave;ng l&yacute; tưởng cho những nhu cầu sử dụng trong thời gian d&agrave;i như l&agrave;m việc, chơi game. Kết hợp c&ugrave;ng băng đ&ocirc; với phần d&acirc;y bằng vải b&ecirc;n dưới, gi&uacute;p giảm &aacute;p lực l&ecirc;n đỉnh đầu khi sử dụng c&ugrave;ng khả năng điều chỉnh linh hoạt để bạn c&oacute; cảm gi&aacute;c đeo thoải m&aacute;i nhất khi sử dụng ASUS TUF Gaming H1.</p>

<p><img alt="GEARVN - Tai nghe ASUS TUF GAMING H1" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-tuf-gaming-h1-5_767322685f8640b89c34f30b25bec9f9_grande.png" /></p>

<h3><strong>Dễ d&agrave;ng điều chỉnh</strong></h3>

<p>Chức năng kh&ocirc;ng thể thiếu khi sử dụng một chiếc tai nghe đ&oacute; l&agrave; điều chỉnh &acirc;m lượng, đ&atilde; được trang bị ngay tr&ecirc;n phần cốc tai nghe của ASUS TUF Gaming H1 ở vị tr&iacute; dễ d&agrave;ng thao t&aacute;c nhất. Kh&ocirc;ng những vậy, ASUS đem đến cho TUF GAMING&nbsp;H1 chức năng tắt/mở mic ngay tr&ecirc;n tai nghe m&agrave; kh&ocirc;ng cần thao t&aacute;c tr&ecirc;n m&aacute;y t&iacute;nh.</p>

<p><img alt="GEARVN - Tai nghe ASUS TUF GAMING H1" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-tuf-gaming-h1-6_3806318459da4bbdb6c8273a2dc4cec0_grande.png" /></p>

<h3><strong>Ch&igrave;m s&acirc;u trong trải nghiệm &acirc;m thanh đ&aacute;ng gi&aacute;</strong></h3>

<p>L&agrave; một chiếc tai nghe có d&acirc;y&nbsp;gi&aacute; rẻ, ASUS TUF Gaming H1 vẫn cố gắng đem tới cho người d&ugrave;ng trải nghiệm nghe tốt nhất. &Acirc;m thanh sẽ được ph&aacute;t qua driver ASUS Essence 40mm c&ugrave;ng thiết kế buồng k&iacute;n &acirc;m gi&uacute;p đem lại sự sắc n&eacute;t v&agrave; độ s&acirc;u nhất định trong từng bản nhạc, bộ phim.</p>

<p><img alt="GEARVN - Tai nghe ASUS TUF GAMING H1" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-tuf-gaming-h1-7_fddb2834efe14def8758629c216fe504_1024x1024.jpg" /></p>

<h3><strong>C&ocirc;ng nghệ &acirc;m thanh v&ograve;m đỉnh cao</strong></h3>

<p>Cung cấp th&ecirc;m c&ocirc;ng nghệ &acirc;m thanh v&ograve;m hỗ trợ bởi Windows Sonic, ASUS TUF Gaming H1 sẽ gi&uacute;p bạn gia tăng khả năng cảm nhận &acirc;m thanh với t&iacute;nh ch&acirc;n thực cao nhất, từ đ&oacute; biến th&agrave;nh lợi thế gi&uacute;p bạn chiến thắng trong những trận chiến căng thẳng. Đ&acirc;y chắc chắn sẽ l&agrave; một &ldquo;trợ thủ&rdquo; l&yacute; tưởng cho mọi game thủ y&ecirc;u th&iacute;ch những tựa game FPS.</p>

<p><img alt="GEARVN - Tai nghe ASUS TUF GAMING H1" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-tuf-gaming-h1-8_55039710fdbd470698add33c56b98060_1024x1024.png" /></p>

<h3><strong>Cải thiện chất lượng giao tiếp</strong></h3>

<p>Hỗ trợ tối đa cho khả năng giao tiếp của game thủ, ASUS TUF Gaming H1 đem đến chiếc microphone&nbsp;analog dễ d&agrave;ng t&ugrave;y chỉnh theo &yacute; th&iacute;ch. Được chứng nhận bởi Discord v&agrave; TeamSpeak, chất lượng thu &acirc;m của ASUS TUF Gaming H1 sẽ kh&ocirc;ng cần phải b&agrave;n c&atilde;i khi &acirc;m thanh đầu ra đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c v&agrave; ch&acirc;n thực nhất để đem lại chất lượng của những cuộc gọi tốt nhất, những pha call team đỉnh cao nhất.</p>

<p><img alt="GEARVN - Tai nghe ASUS TUF GAMING H1" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-asus-tuf-gaming-h1-9_538879156f9c4e26a2f394a79bd0e94c_grande.png" /></p>

<h3>&nbsp;</h3>

<div class="ddict_btn" style="left:1883px; top:3829px"><img src="chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png" /></div>
', 790000, 0, 5, N'/images/AsusTufGamingF1.jpg', 2004, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'asus_0000002', N'Asus ROG Cetra II Core', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Asus ROG Cetra II Core</strong></h2>

<p>&nbsp;</p>

<h3><strong>Tai nghe Asus ROG Cetra II Core mang lại chất lượng &acirc;m thanh ho&agrave;n hảo</strong></h3>

<p>Tai nghe&nbsp;Asus ROG Cetra II Core c&oacute; tr&igrave;nh điều khiển ASUS Essence được l&agrave;m từ cao su silicone lỏng (LSR) mang đến chất lượng &acirc;m thanh tr&ecirc;n cả tuyệt vời.&nbsp;</p>

<p>Với việc tối ưu cho trải nghiệm gaming, mẫu tai nghe n&agrave;y cho ph&eacute;p ta thưởng thức &acirc;m thanh chất lượng cao khi chơi game với nhiều nền tảng kh&aacute;c nhau, bao gồm khả năng tương th&iacute;ch với PlayStation &reg; 5, Xbox Series X / S, ROG Phone 5, điện thoại di động, PC, Mac v&agrave; Nintendo Switch &trade;.&nbsp;</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn.com-products-tai-nghe-asus-rog-cetra-ii-core-1_53930396aac34de58223e291a90fe3d8_large.jpg" /></p>

<h3><strong>Driver ASUS Essence</strong></h3>

<p>C&ocirc;ng nghệ driver ASUS Essence tr&ecirc;n tai nghe Asus ROG Cetra II Core gi&uacute;p tăng hiệu suất loa v&agrave; giữ cho n&oacute; lu&ocirc;n ổn định trong qu&aacute; tr&igrave;nh sử dụng. Đặc biệt &acirc;m trầm của game được thể hiện kh&aacute; r&otilde;, l&agrave;m tăng trải nghiệm chơi game của bạn. Điểm tạo n&ecirc;n sự kh&aacute;c biệt của &nbsp;Asus ROG Cetra II Core trong ph&acirc;n kh&uacute;c dưới 1 tri&ecirc;̣u</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn.com-products-tai-nghe-asus-rog-cetra-ii-core-5_2c3a2a9d4ba847229608b57f1538da64_1024x1024.png" /></p>

<h3><strong>G&oacute;c cầm l&yacute; tưởng để chơi game cầm tay</strong></h3>

<p>Đầu kết nối của ROG Cetra II Core đi k&egrave;m với đầu 90 độ gi&uacute;p c&aacute;p tai nghe có d&acirc;y&nbsp;v&ocirc; c&ugrave;ng tiện lợi&nbsp;kh&ocirc;ng bị vướng trong qu&aacute; tr&igrave;nh sử dụng. Loại bỏ sự kh&oacute; chịu khi vừa đeo tai nghe vừa chơi game tr&ecirc;n điện thoại di động.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn.com-products-tai-nghe-asus-rog-cetra-ii-core-6_6edebf8a41f34d3d9af615ed10a7edcc_1024x1024.png" /></p>

<h3><strong>Tai nghe Asus ROG Cetra II Core sở hữu thiết kế vỏ nh&ocirc;m nhẹ, bền</strong></h3>

<p>Với việc sử dụng nh&ocirc;m cao cấp vừa nhẹ, vừa đẹp v&agrave; bền bỉ, mẫu tai nghe n&agrave;y c&oacute; khả năng chịu lực rất tốt, chống trầy xước, kh&ocirc;ng bị rỉ s&eacute;t m&agrave; lại đảm bảo t&iacute;nh thẩm mỹ cao. Ear fins v&agrave; Ear tips cũng được l&agrave;m từ chất liệu LSR mềm mại v&agrave; chống trơn trượt tốt.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn.com-products-tai-nghe-asus-rog-cetra-ii-core-3_d94bdb24b39745e290f6c1f65eec020e_large.jpg" /></p>

<h3><strong>Tiện dụng trong qu&aacute; tr&igrave;nh sử dụng</strong></h3>

<p>Tai nghe Asus&nbsp;ROG Cetra II Core được bọc bởi một lớp kim loại mỏng, c&aacute;c ph&iacute;m điều khiển cũng được thiết kế th&acirc;n thiện với người sử dụng, đảm bảo c&aacute;c thao t&aacute;c của bạn thực hiện dễ d&agrave;ng hơn. Bạn ho&agrave;n to&agrave;n c&oacute; thể ấn c&aacute;c ph&uacute;t như ph&aacute;t, tạm dừng v&agrave; c&aacute;c n&uacute;t &acirc;m lượng m&agrave; kh&ocirc;ng sợ nhầm lẫn.</p>

<p><img src="https://product.hstatic.net/1000026716/product/gearvn.com-products-tai-nghe-asus-rog-cetra-ii-core-2_a9199aebfd8748828c242b5624188096_large.jpg" /></p>

<h3>&nbsp;</h3>
', 790000, 0, 5, N'/images/AsusROGCetraIICore.jpg', 2004, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'dar_0000001', N'DAREU EK868', N'<p>&ndash; Kết nối: Bluetooth/ Wired (Type-C): dual mode<br />
&ndash; Keycap Profile:Low-Profile switch &amp; keycaps<br />
&ndash; Loại switch: D-KAILH switch: Brown/ Red<br />
&ndash; Layout: 68 key</p>

<p>&ndash; Keycaps: ABS<br />
&ndash; LED: Ice Blue<br />
&ndash; Batterry: 2.000mAh<br />
&ndash; Support: 3 devices (Window, Mac, iOS, Android)<br />
&nbsp;</p>
', 1010000, 0, 1, N'/images/dareuEk868.jpg', 2003, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'dru_00000003', N'DAREU A950 3 MODE Pink', N'<h2><strong>TH&Ocirc;NG SỐ KĨ THUẬT&nbsp;</strong></h2>

<table border="0" cellpadding="3" cellspacing="3" style="width:500px">
	<tbody>
		<tr>
			<td><strong>H&atilde;ng sản xuất:</strong></td>
			<td>Dare-U</td>
		</tr>
		<tr>
			<td><strong>Model:</strong></td>
			<td>DAREU A950 3 MODE Pink</td>
		</tr>
		<tr>
			<td><strong>Bảo h&agrave;nh:</strong></td>
			<td>24 Tháng</td>
		</tr>
		<tr>
			<td><strong>M&agrave;u:</strong></td>
			<td>Hồng</td>
		</tr>
		<tr>
			<td><strong>Kết nối:</strong></td>
			<td>C&oacute; d&acirc;y / Bluetooth 5.1 / Wireless</td>
		</tr>
		<tr>
			<td><strong>Số n&uacute;t bấm:</strong></td>
			<td>6</td>
		</tr>
		<tr>
			<td><strong>Đ&egrave;n LED:</strong></td>
			<td>RGB&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Độ nhạy ( DPI )</strong></td>
			<td>400-12.000</td>
		</tr>
		<tr>
			<td><strong>Cảm biến:</strong></td>
			<td>DAREU AIM-WL</td>
		</tr>
		<tr>
			<td><strong>Th&ocirc;ng số IPS:</strong></td>
			<td>300</td>
		</tr>
		<tr>
			<td><strong>Switch:</strong></td>
			<td>DareU</td>
		</tr>
		<tr>
			<td><strong>K&iacute;ch thước:&nbsp;</strong></td>
			<td>123 x 64 x 39mm</td>
		</tr>
		<tr>
			<td><strong>Trọng lượng:&nbsp;</strong></td>
			<td>88g</td>
		</tr>
	</tbody>
</table>

<h2><strong>Đ&aacute;nh gi&aacute; chi tiết chuột DAREU A950 3 MODE Pink</strong></h2>

<p>DAREU A950 3 MODE Pink chu&ocirc;̣t kh&ocirc;ng d&acirc;y&nbsp;sở hữu phối m&agrave;u ấn tượng, độc đ&aacute;o kết hợp c&ugrave;ng nhiều c&ocirc;ng nghệ hiện đại mang đến cho người chơi những cung bật cảm x&uacute;c v&agrave; trải nghiệm chơi game đỉnh cao.</p>

<h3><strong>Phối m&agrave;u độc đ&aacute;o, ấn tượng</strong></h3>

<p><img alt="GEARVN-chuot-dareu-a950-3-mode-pink" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-dareu-a950-3-mode-pink_5ee35597b811400e87ccb1c36b10c407_grande.png" style="height:600px; width:600px" /></p>

<p>Dareu mang đến tay người d&ugrave;ng d&ograve;ng chuột m&aacute;y t&iacute;nh gaming với phối m&agrave;u pastel ngọt ng&agrave;o, nhẹ nh&agrave;ng nhưng lại v&ocirc; c&ugrave;ng sang trọng. Những chi tiết nhỏ được gia c&ocirc;ng tỉ mỉ c&ugrave;ng những đường cong được xử l&yacute; mềm mại gi&uacute;p chuột Dareu th&ecirc;m phần độc đ&aacute;o khi kết hợp c&ugrave;ng nhiều phụ kiện bàn phím máy tính, tai nghe gaming,...Tạo n&ecirc;n g&oacute;c m&aacute;y chơi game độc lạ.</p>

<h3><strong>Trang bị l&ecirc;n đến 3 chế độ kết nối kh&aacute;c nhau</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-chuot-dareu-a950-3-mode-pink" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-dareu-a950-3-mode-pink-5_554080eb48be4d7385532b5c4655a7e2_grande.png" /></p>

<p>&nbsp;</p>

<p>T&ugrave;y v&agrave;o nhu cầu sử dụng của m&igrave;nh m&agrave; bạn c&oacute; thể t&ugrave;y chỉnh chế độ kết nối v&agrave; sử dụng kh&aacute;c nhau khi được h&atilde;ng t&iacute;ch hợp đến 3 chế độ kết nối kh&aacute;c nhau. Vừa sử dụng như những d&ograve;ng chu&ocirc;̣t Bluetooth 5.1 với độ trễ cực thấp hoặc chế độ Wireless 2.4Ghz cho phạm vi kết nối l&ecirc;n đến 10m.&nbsp;</p>

<p><img alt="GEARVN-chuot-dareu-a950-3-mode-pink" src="https://file.hstatic.net/1000026716/file/gearvn-chuot-dareu-a950-3-mode-pink-3_5daee85526ca449fb0e4acb4c3740a1c_grande.png" /></p>

<p>&nbsp;</p>

<p>Trong một số trường hợp để giảm độ trễ tối đa hay cần vừa sạc vừa sử dụng người chơi c&oacute; thể sử dụng chuột DAREU A950 3 MODE Pink với cổng USB theo chuẩn Ch&acirc;u &Acirc;u Type-C.</p>

<h3>&nbsp;</h3>

<div class="ddict_btn" style="left:937.5px; top:1529px"><img src="chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png" /></div>
', 999000, 0, 2, N'/images/dareuA950.jpg', 2003, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'dru_0000005', N'Dareu EM901X đen', N'<h3><strong>Mắt cảm biến d&agrave;nh cho Gaming</strong></h3>

<p>Sử dụng cảm biến ATG4090 độc quyền của Dareu. Tốc độ v&agrave; hiệu suất tracking ph&ugrave; hợp với Game, DPI l&ecirc;n đến 6000, tốc độ l&ecirc;n đến 150IPS.</p>

<h3><strong>Kết nối kh&ocirc;ng d&acirc;y</strong></h3>

<p>Mức ti&ecirc;u thụ điện của chuột ở trạng th&aacute;i kh&ocirc;ng d&acirc;y cực k&igrave; &iacute;t. Khi chuột đầy pin v&agrave; kh&ocirc;ng sử dụng led, n&oacute; c&oacute; thời lượng sử dụng l&ecirc;n đến 30h ở chế độ kh&ocirc;ng LED</p>

<h3><strong>Led RGB</strong></h3>

<p>Để cải thiện hiệu ứng h&igrave;nh ảnh, chuột được trang bị hiệu ứng led RGB độc đ&aacute;o để hiển thị trạng th&aacute;i của c&ocirc;ng nghệ chiếu s&aacute;ng kh&ocirc;ng d&acirc;y: c&oacute; thể tắt bằng một n&uacute;t khi kh&ocirc;ng sử dụng v&agrave; thao t&aacute;c rất đơn giản.</p>

<h3><strong>Bổ sung Dock sạc</strong></h3>

<p>Phi&ecirc;n bản n&acirc;ng cấp n&agrave;y được bổ sung th&ecirc;m một chiếc dock sạc v&ocirc; c&ugrave;ng tiện lợi, ngo&agrave;i việc gi&uacute;p sạc ch&uacute; chuột của bạn, n&oacute; c&ograve;n l&agrave;m tăng th&ecirc;m t&iacute;nh thẩm mỹ cho g&oacute;c gaming.</p>
', 749000, 16, 2, N'/images/dareUem901x.jpg', 2003, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'GGS_4969343342Ear96', N'AKKO 3087 Silent', N'<p>🔴&nbsp;B&agrave;n ph&iacute;m cơ AKKO 3087 Silent Akko Blue switch</p>

<p>🔴 Ph&iacute;m sử dụng Switch AKKO</p>

<p>🔴&nbsp;108 ph&iacute;m chuẩn ANSI</p>

<p>🔴&nbsp;Keycap PBT si&ecirc;u bền K&yacute; tự in Dye-Sub cao cấp</p>

<p>🔴&nbsp;Hỗ trợ multimedia, macro v&agrave; c&oacute; thể kh&oacute;a ph&iacute;m Windows D&acirc;y c&oacute; thể th&aacute;o rời</p>

<p>🔴&nbsp;Phụ kiện: 1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + keycap tặng k&egrave;m + 1 d&acirc;y&nbsp;</p>
', 1100000, 6, 1, N'/images/ako0387silent1.jpg', 2002, N'@@/images/FILES/ako3087silent3.jpg@@/images/FILES/ako3087silent3.jpg@@/images/FILES/ako3087silent3.jpg@@')
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'hpx_00000001', N'HyperX Cloud Stinger S 7.1', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;Tai nghe Kingston HyperX Cloud Stinger S 7.1</strong></h2>

<h3><strong>Giả lập &acirc;m thanh v&ograve;m 7.1</strong></h3>

<p>Tai nghe máy tính&nbsp;gi&uacute;p bạn ch&igrave;m đắm s&acirc;u hơn v&agrave; c&oacute; được &acirc;m thanh vị tr&iacute; tốt hơn với &acirc;m thanh v&ograve;m ảo 7.1 được cung cấp bởi phần mềm HyperX NGENUITY.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-kingston-hyperx-cloud-stinger-s-7-1-6_c905861f8d1c450bb0d2c1471e15aaa3_grande.jpg" /></p>

<p><strong>&Acirc;m thanh game đa chiều</strong></p>

<p>M&agrave;ng loa 50mm được đặt song song với tai để cho chất lượng &acirc;m thanh tối ưu. &Acirc;m trầm cải tiến được t&aacute;i tạo với &acirc;m cao r&otilde; n&eacute;t, &acirc;m trung trong v&agrave; &acirc;m thấp phong ph&uacute; gi&uacute;p bạn đắm ch&igrave;m trong từng trận đấu.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-kingston-hyperx-cloud-stinger-s-7-1-2_febcca4dcce84d16b4f68ec973f1d126_grande.jpg" /></p>

<p><strong>Cảm giác thoải m&aacute;i đặc trưng của HyperX</strong></p>

<p>&nbsp;</p>

<p>Lớp giả da mềm dẻo v&agrave; m&uacute;t hoạt t&iacute;nh đặc sử dụng dễ chịu ngay cả trong những trận game d&agrave;i mi&ecirc;n man.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-kingston-hyperx-cloud-stinger-s-7-1-3_fb4f3ecc6a3f4d7f90cb8b94d42b5651_grande.jpg" /></p>

<p><strong>Nhẹ nh&agrave;ng&nbsp;với chụp tai xoay 90&deg;</strong></p>

<p>Tai nghe nhẹ n&ecirc;n sẽ kh&ocirc;ng l&agrave;m bạn mỏi mệt trong những trận game d&agrave;i.&nbsp;Với chụp tai xoay được, bạn c&oacute; thể để tai nghe thoải m&aacute;i quanh cổ trong giờ giải lao.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-kingston-hyperx-cloud-stinger-s-7-1-5_cb8e999f9b6448ce9aa7f6ac048a31c3_grande.jpg" /></p>

<p><strong>Thanh trượt bằng th&eacute;p dễ điều chỉnh, c&oacute; độ bền cao</strong></p>

<p>Được chế tạo với chất lượng vượt trội nhờ thanh trượt bằng th&eacute;p cứng c&aacute;p c&oacute; thể điều chỉnh để mang lại cảm gi&aacute;c vừa vặn, thoải m&aacute;i nhất.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-kingston-hyperx-cloud-stinger-s-7-1-7_9889074251524935a15ae343e7da25ae_grande.jpg" /></p>

<p><strong>Mic khử ồn c&oacute; thể xoay để tắt tiếng</strong></p>

<p>Mic khử ồn linh hoạt sẽ mang đến cho bạn khả năng li&ecirc;n lạc r&otilde; r&agrave;ng với đồng đội v&agrave; c&oacute; thể dễ d&agrave;ng tắt tiếng bằng c&aacute;ch xoay l&ecirc;n tr&ecirc;n.</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-kingston-hyperx-cloud-stinger-s-7-1-4_0cf758fe51ed4fb68ed4f5342ec9c8ca_grande.jpg" /></p>
', 1290000, 0, 5, N'/images/HyperXCloudStringerS7.1.jpg', 2008, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'hpx_00000002', N'HyperX Cloud Stinger S 7.1', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe kh&ocirc;ng d&acirc;y HyperX Cloud Buds</strong></h2>

<p>Với sự ph&aacute;t triển của c&ocirc;ng nghệ ng&agrave;y một đa dạng, c&aacute;c d&ograve;ng sản phẩm như chu&ocirc;̣t kh&ocirc;ng d&acirc;y, loa, bàn phím kh&ocirc;ng d&acirc;y&nbsp;cho đến c&aacute;c thiết bị tai nghe lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu của người ti&ecirc;u d&ugrave;ng. Trong đ&oacute;,&nbsp;<strong>tai nghe HyperX Cloud Buds</strong>&nbsp;l&agrave; một trong những sự lựa chọn của h&agrave;ng triệu game thủ tr&ecirc;n thế giới.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-khong-day-hyperx-cloud-buds_7816a4d0a85b41e69e55ba5271a25504_1024x1024.jpeg" /></p>

<p>&nbsp;</p>

<p>HyperX Cloud Buds sẽ l&agrave; một trong những d&ograve;ng tai nghe máy tính&nbsp;m&agrave; người bạn đồng h&agrave;nh cho những ai c&oacute; cuộc sống hay di chuyển. Tai nghe Bluetooth n&agrave;y rất tuyệt vời cho việc nghe nhạc, stream c&aacute;c chương tr&igrave;nh y&ecirc;u th&iacute;ch hoặc chơi một số tr&ograve; chơi để giết thời gian. D&acirc;y đeo cổ linh hoạt nhẹ nh&agrave;ng c&oacute; mic tr&ecirc;n d&acirc;y v&agrave; n&uacute;t đa chức năng để bạn c&oacute; thể trả lời cuộc gọi, điều khiển b&agrave;i h&aacute;t v&agrave; k&iacute;ch hoạt trợ l&yacute; kỹ thuật số một c&aacute;ch dễ d&agrave;ng.&nbsp;</p>

<p>&nbsp;</p>

<h3><strong>Trải nghiệm sự tự do kh&ocirc;ng d&acirc;y với c&aacute;c thiết bị phương tiện hỗ trợ Bluetooth.</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-khong-day-hyperx-cloud-buds-1_c80d90a88bb54919a2f99005d7fc35ce_1024x1024.jpeg" /></p>

<p>&nbsp;</p>

<p>Tai nghe gaming sở hữu c&ocirc;ng nghệ kh&ocirc;ng d&acirc;y mới nhất, với phi&ecirc;n&nbsp;bản bluetooth 5,1 mang đến cho người d&ugrave;ng sự trải nghiệm kết nối kh&ocirc;ng d&acirc;y tốt nhất hiện nay. Bạn c&oacute; thể thoải m&aacute;i sử dụng tai nghe khi di chuyển trong qu&aacute; tr&igrave;nh tập luyện, chơi game v&agrave; đối thoại nhiều giờ li&ecirc;n m&agrave; kh&ocirc;ng sợ t&iacute;nh hiệu chập chờn.</p>

<h3><strong>Thời lượng pin d&agrave;i</strong></h3>

<p>Thưởng thức &acirc;m nhạc v&agrave; video &iacute;t bị ngắt qu&atilde;ng hơn với thời lượng pin l&ecirc;n đến 10 giờ trong một lần sạc duy nhất. Thời gian pin mang đến sự ổn định trong qu&aacute; tr&igrave;nh sử dụng, người giờ c&oacute; thể sử dụng nhiều giờ liền đ&aacute;p ứng tốt nhu cầu sử dụng của hầu hết mục đ&iacute;ch sử dụng hiện nay.</p>

<h3><strong>&Acirc;m thanh HyperX cao cấp</strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-khong-day-hyperx-cloud-buds-2_3b1ae0f3c2c248339457a95a01de21d5_1024x1024.jpeg" /></p>

<p>Trang bị m&agrave;ng loa 14mm để gi&uacute;p bạn ch&igrave;m đắm v&agrave;o kh&ocirc;ng gian giải tr&iacute; ri&ecirc;ng m&igrave;nh. Đ&acirc;y được xem l&agrave; một trong những ưu điểm nổi bật tr&ecirc;n d&ograve;ng tai nghe kh&ocirc;ng d&acirc;y HyperX Cluod Buds, mang đến tai người d&ugrave;ng &acirc;m thanh chất lượng. Tận hưởng kh&ocirc;ng gian &acirc;m nhạc cực đỉnh c&ugrave;ng hiệu năng chơi game tr&ecirc;n thiết bị di động.</p>

<h3><strong>Cảm giác thoải m&aacute;i đặc trưng của HyperX</strong></h3>

<p>Một trong những d&ograve;ng tai nghe in-ear&nbsp;được trang bi th&ecirc;m c&aacute;c n&uacute;t tai bằng silicone độc quyền được thiết kế để mang lại sự thoải m&aacute;i vừa vặn. C&oacute; ba k&iacute;ch cỡ đi k&egrave;m để lắp vừa với nhiều h&igrave;nh d&aacute;ng v&agrave; k&iacute;ch cỡ tai kh&aacute;c nhau.</p>

<h3><strong>Mic tr&ecirc;n d&acirc;y v&agrave; n&uacute;t điều khiển &acirc;m thanh</strong></h3>

<p>Mic tr&ecirc;n d&acirc;y v&agrave; n&uacute;t đa chức năng cho ph&eacute;p bạn c&oacute; thể trả lời cuộc gọi, điều khiển b&agrave;i h&aacute;t v&agrave; k&iacute;ch hoạt trợ l&yacute; kỹ thuật số một c&aacute;ch dễ d&agrave;ng.</p>
', 1390000, 0, 5, N'/images/HyperXCloudBud.jpg', 2008, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'KBLO082', N'Logitech G Pro X RGB Lightsync', N'<p><strong>Th&ocirc;ng số sản phẩm</strong></p>

<ul>
	<li>B&agrave;n ph&iacute;m cơ Logitech G Pro X RGB</li>
	<li>Thiết kế 87 ph&iacute;m gọn nhẹ</li>
	<li>Sử dụng switch GX với khả năng hotswap (Thay switch tức th&igrave; kh&ocirc;ng cần th&aacute;o mạch)</li>
	<li>Đ&egrave;n led RGB với c&ocirc;ng nghệ LightSync c&oacute; khả năng lập tr&igrave;nh</li>
	<li>D&acirc;y c&aacute;p th&aacute;o rời tiện lợi</li>
	<li>12 ph&iacute;m d&atilde;y h&agrave;ng F c&oacute; khả năng lập tr&igrave;nh Macro</li>
</ul>

<p>&nbsp;</p>

<p><img alt="Bàn phím cơ Logitech G Pro X RGB Lightsync (USB/Blue Clicky sw/đen) 2" src="https://hanoicomputercdn.com/media/lib/25-06-2022/ban-phim-co-logitech-g-pro-x-rgb-lightsync-usb-blue-clicky-sw-den-003.jpg" style="height:200px; width:400px" /></p>

<h3><strong>GX Switch</strong><br />
<img alt="Bàn phím cơ Logitech G Pro X RGB Lightsync (USB/Blue Clicky sw/đen) 3" src="https://hanoicomputercdn.com/media/lib/25-06-2022/ban-phim-co-logitech-g-pro-x-rgb-lightsync-usb-blue-clicky-sw-den-002.jpg" style="height:220px; width:400px" /></h3>

<h3><strong>C&ocirc;ng nghệ LIGHTSYNC</strong><br />
<img alt="Bàn phím cơ Logitech G Pro X RGB Lightsync (USB/Blue Clicky sw/đen) 4" src="https://hanoicomputercdn.com/media/lib/25-06-2022/ban-phim-co-logitech-g-pro-x-rgb-lightsync-usb-blue-clicky-sw-den-004.jpg" style="height:196px; width:400px" /></h3>

<h3><strong>Ph&iacute;m chức năng Macro&nbsp;</strong></h3>

<p>Sử dụng Logitech G HUB để lập tr&igrave;nh c&aacute;c ph&iacute;m macro t&ugrave;y chỉnh từ F1-F12 nhằm gi&uacute;p tốc độ g&otilde; ph&iacute;m của bạn dễ d&agrave;ng v&agrave; nhanh hơn.<br />
<img alt="Bàn phím cơ Logitech G Pro X RGB Lightsync (USB/Blue Clicky sw/đen) 5" src="https://hanoicomputercdn.com/media/lib/25-06-2022/ban-phim-co-logitech-g-pro-x-rgb-lightsync-usb-blue-clicky-sw-den-005.png" style="height:120px; width:400px" /></p>

<h3><strong>D&acirc;y c&aacute;p c&oacute; thể th&aacute;o rời</strong><br />
<img alt="Bàn phím cơ Logitech G Pro X RGB Lightsync (USB/Blue Clicky sw/đen) 6" src="https://hanoicomputercdn.com/media/lib/25-06-2022/ban-phim-co-logitech-g-pro-x-rgb-lightsync-usb-blue-clicky-sw-den-006.jpg" style="height:198px; width:400px" /></h3>
', 2390000, 0, 1, N'/images/logitechGproLightsync.png', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'lgt_00000002', N'Logitech G PRO KDA', N'<h3><strong>Ph&iacute;m được sử dụng switch tactile GX brown</strong></h3>

<p>C&aacute;c ph&iacute;m switch&nbsp;cơ học&nbsp;GX Tactile ti&ecirc;n tiến được chế tạo để tăng hiệu suất, độ nhạy v&agrave; độ bền, với phản hồi nhấn ph&iacute;m ph&aacute;t ra &acirc;m thanh, c&oacute; thể cảm nhận được.<br />
<img src="https://file.hstatic.net/1000026716/file/ban-phim-gaming-logitech-pro-kda-usbrgbden-tranggx-brown-sw-1_2a676f13828d4683b126206b6984b329.jpeg" style="height:264px; width:400px" /></p>

<h3><strong>Nhỏ gọn si&ecirc;u di động</strong></h3>

<p>Thiết kế kh&ocirc;ng c&oacute; b&agrave;n ph&iacute;m số v&agrave; d&acirc;y c&oacute; thể th&aacute;o rời c&oacute; nghĩa l&agrave; c&oacute; nhiều kh&ocirc;ng gian hơn để di chuột v&agrave; dễ d&agrave;ng mang tới c&aacute;c cuộc thi đấu tr&ecirc;n khắp thế giới.<br />
<img src="https://file.hstatic.net/1000026716/file/gearvn_d76a0fde3a4c458cb5b55dfb4003d1db.jpeg" style="height:711px; width:400px" /></p>

<h3><strong>Lightsync RGB</strong></h3>

<p>T&ocirc; s&aacute;ng c&aacute;c ph&iacute;m quan trọng, hay chỉ thể hiện niềm tự h&agrave;o cho nh&oacute;m của bạn. T&ugrave;y chỉnh &aacute;nh s&aacute;ng v&agrave; h&igrave;nh động bằng phần mềm HUB G, v&agrave; lưu c&aacute;c thiết kế &aacute;nh s&aacute;ng tĩnh v&agrave;o bộ nhớ trong cho c&aacute;c hệ thống thi đấu.<br />
<img src="https://file.hstatic.net/1000026716/file/g_pro_kda_13_90161ae82ff847c787625a852f18a4f2.jpeg" style="height:240px; width:400px" /></p>
', 2590000, 0, 1, N'/images/kdaGPro.jpg', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'lgt_00000003', N'Logitech G304 Lightspeed Wireless White', N'<p><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></p>

<table border="0" cellpadding="1" cellspacing="1" style="width:500px">
	<tbody>
		<tr>
			<td>K&iacute;ch thước</td>
			<td>116.6 x 62.15 x 38.2 ( mm ) ( D&agrave;i x Rộng x Cao )</td>
		</tr>
		<tr>
			<td>Trọng lượng</td>
			<td>99g</td>
		</tr>
	</tbody>
</table>

<h2><strong>Một số đ&aacute;nh gi&aacute; chi tiết chuột Logitech G304 Lightspeed Wireless White</strong></h2>

<p>G304 l&agrave; một trong những d&ograve;ng sản phẩm chuột gaming sở hữu c&ocirc;ng nghệ&nbsp;LIGHTSPEED, mang đến những trải nghiệm chơi game th&uacute; vị. Với&nbsp;thiết kế chu&ocirc;̣t kh&ocirc;ng d&acirc;y&nbsp;mang đến&nbsp;hiệu suất thực sự với c&aacute;c đột ph&aacute; c&ocirc;ng nghệ mới nhất ở&nbsp;mức gi&aacute; th&agrave;nh ph&ugrave; hợp. Đ&oacute; l&agrave; chơi game kh&ocirc;ng d&acirc;y thế hệ mới, hiện đ&atilde; sẵn s&agrave;ng cho mọi game thủ.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g304-lightspeed-wireless-white-1_e488e35afa1447bf97ead5ceeaa44d1c.jpg" style="height:600px; width:600px" /><br />
&nbsp;</p>

<h3><strong>Thời gian sử dụng pin si&ecirc;u d&agrave;i l&ecirc;n đến 250 giờ</strong></h3>

<p>Cảm biến HERO v&agrave; c&ocirc;ng nghệ LIGHTSPEED kh&ocirc;ng d&acirc;y đem lại hiệu suất đỉnh cao cho ph&eacute;p bạn chơi game trong h&agrave;ng th&aacute;ng. Một trong những d&ograve;ng&nbsp;<a href="https://gearvn.com/collections/chuot-logitech" title="chuột không dây logitech">c</a>hu&ocirc;̣t kh&ocirc;ng d&acirc;y logitech&nbsp;đem lại đến 250 giờ hoạt động chỉ tr&ecirc;n một quả pin AA. N&oacute; c&oacute; thể được điều chỉnh để sử dụng trong tới 9 th&aacute;ng ở mức th&ocirc;ng thường trong chế độ Bền.</p>

<p>&nbsp;</p>

<h3><strong>G304&nbsp;sở hữu mắt cảm biến HERO</strong></h3>

<p>HERO l&agrave; cảm biến quang học đổi mới được thiết kế bởi Logitech G để mang lại hiệu suất đẳng cấp dẫn đầu v&agrave; tiết kiệm năng lượng tới 10 lần (so với hệ thệ trước). Cảm biến HERO mang lại hiệu suất ổn định v&agrave; ch&iacute;nh x&aacute;c vượt trội với khả năng l&agrave;m mượt, lọc v&agrave; tăng tốc từ 200 tới 12.000 DPI. G304 c&oacute; thể lưu tới 5 cấu h&igrave;nh với tối đa 5 cấp độ DPI tr&ecirc;n bộ nhớ t&iacute;ch hợp.<br />
<img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g304-lightspeed-wireless-white-5_4_637d3f843c0d413da8bd92c60a4acc7e_grande.jpg" style="height:480px; width:600px" /></p>

<h3><strong>G304&nbsp;được thiết lập với 6 n&uacute;t lập tr&igrave;nh t&ugrave;y biến</strong></h3>

<p>C&aacute;c ph&iacute;m ch&iacute;nh của&nbsp;<strong>G304</strong>, cả ở b&ecirc;n tr&aacute;i v&agrave; phải, được đ&aacute;nh gi&aacute; 10 triệu lần nhấp.&nbsp;<strong>G304</strong>&nbsp;cũng c&oacute; n&uacute;t giữa, n&uacute;t DPI v&agrave; hai n&uacute;t b&ecirc;n c&oacute; thể được lập tr&igrave;nh t&ugrave;y theo sở th&iacute;ch của bạn bằng G HUB của Logitech. Do đ&oacute;, bạn c&oacute; thể tuỳ chỉnh c&aacute;c n&uacute;t bấm nhằm ph&ugrave; hợp với nhu cầu sử dụng, mang đến cảm gi&aacute;c chơi game tốt nhất.<br />
<img src="https://file.hstatic.net/1000026716/file/gearvn-chuot-logitech-g304-lightspeed-wireless-white-4_f5be38aec622415fabd251662dc24967.jpg" style="height:480px; width:600px" /></p>
', 790000, 0, 2, N'/images/logitechG304.jpg', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'lgt_00000007', N'Logitech G735 Off White', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Logitech G735 Off White</strong></h2>

<p>Logitech G735 với phối m&agrave;u Off White được đ&aacute;nh gi&aacute; l&agrave; d&ograve;ng sản phẩm nổi bật nhất trong bộ sưu tập Aurora từ nh&agrave; Logitech. Với t&ocirc;ng m&agrave;u nhẹ nh&agrave;ng kết hợp với kiểu d&aacute;ng thanh lịch, trang nh&atilde; gi&uacute;p chiếc&nbsp;<a href="https://gearvn.com/collections/tai-nghe-logitech" target="_blank">tai nghe Logitech</a>&nbsp;th&ecirc;m phần nổi bật.&nbsp;</p>

<h3><strong>Logitech G735 Off White sở hữu thiết kế sang trọng, tinh tế</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g735-off-white" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g735-off-white_477cf83977ae4f83bcdc349a5741bbdb_grande.png" /></p>

<p>&nbsp;</p>

<p>Kh&ocirc;ng thể phủ nhận được sự cuốn h&uacute;t từ c&aacute;c d&ograve;ng sản phẩm từ bàn phím, chu&ocirc;̣t máy tính&nbsp;v&agrave; cả tai nghe trong bộ sưu tập Aurora. Người chơi ho&agrave;n to&agrave;n c&oacute; thể cảm nhận điều đ&oacute; qua tai nghe Logitech G735 Off White.&nbsp;</p>

<p>Với t&ocirc;ng m&agrave;u trắng chủ đạo kết hợp với hệ thống LED RGB độc đ&aacute;o tăng th&ecirc;m phần độc đ&aacute;o v&agrave; ấn tượng. Logitech đ&atilde; mang n&acirc;ng tầm thiết kế v&agrave; m&agrave;u sắc của c&aacute;c thiết bị Gaming Gear&nbsp;l&ecirc;n một tầm cao mới, thay v&igrave; phải sở hữu thiết kế hầm hố c&aacute;c d&ograve;ng sản phẩm Logitech Aurora lại mang tr&ecirc;n m&igrave;nh thiết kế v&ocirc; c&ugrave;ng mềm mại v&agrave; ngọt ng&agrave;o.&nbsp;</p>

<h3><strong>Kết nối qua c&ocirc;ng nghệ Bluetooth si&ecirc;u nhanh</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g735-off-white" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g735-off-white-1_b4dc1933196043ba977cc58d66b8720b_grande.png" /></p>

<p>&nbsp;</p>

<p>Để tăng th&ecirc;m t&iacute;nh tiện lợi cho sản phẩm Logitech G735 Off White, h&atilde;ng sản xuất đ&atilde; t&iacute;ch hợp c&ocirc;ng nghệ kết nối Bluetooth si&ecirc;u nhanh, độ trễ cực thấp v&agrave; phạm vi kết nối rộng l&ecirc;n đến 20m.&nbsp;Đặc biệt, với c&ocirc;ng nghệ LIGHTSPEED si&ecirc;u nhạy bạn sẽ c&oacute; những trải nghiệm ấn tượng c&ugrave;ng Logitech G735&nbsp; .</p>

<h3><strong>Hệ thống LED chiếu s&aacute;ng độc đ&aacute;o</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g735-off-white" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g735-off-white-3_7bf7f32fff2c4df9adeaddb8ba9a44cc_grande.png" /></p>

<p>&nbsp;</p>

<p>Sẽ rất thiếu s&oacute;t khi kh&ocirc;ng điểm qua hệ thống LED RGB tr&ecirc;n d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/tai-nghe-may-tinh" target="_blank">t</a>ai nghe&nbsp;mới nhất từ Logitech. Để tăng th&ecirc;m sự tinh tế v&agrave; cuốn h&uacute;t, Logitech đ&atilde; trang bị d&atilde;y đ&egrave;n LED RGB sống động tr&ecirc;n phần chụp tai. Bạn c&oacute; thể dễ d&agrave;ng t&ugrave;y chỉnh th&ocirc;ng qua phần mềm G HUB để c&aacute; nh&acirc;n h&oacute;a chiếc tai nghe.&nbsp;</p>

<h3><strong>Thời lượng pin sử dụng Logitech G735 Off White l&ecirc;n đến 56 giờ</strong></h3>

<p>&nbsp;</p>

<p><img alt="GEARVN-tai-nghe-logitech-g735-off-white" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g735-off-white-2_8a4d4177f2cb4d6ea9628b26728efbd5_grande.png" /></p>

<p>&nbsp;</p>

<p>Kh&ocirc;ng dừng lại ở thiết kế nhỏ gọn trọng lượng si&ecirc;u nhẹ, Logitech G735 Off White l&agrave; d&ograve;ng tai nghe Bluetooth chơi game&nbsp;tr&ecirc;n thị trường sở hữu thời lượng pin ấn tượng l&ecirc;n đến 56&nbsp;giờ sử dụng li&ecirc;n tục&nbsp;để bạn c&oacute; thể sử dụng ở bất kỳ đ&acirc;u.</p>
', 3990000, 0, 5, N'/images/LogitechG735.jpg', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'lgt_00000008', N'Logitech G333', N'<h3><strong><strong>M&agrave;ng loa động k&eacute;p n&acirc;ng tầm trải nghiệm</strong></strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g333-8_ee35a0e4532340408d935a57a2065490_1024x1024.jpeg" /></p>

<p>Logitech G333 l&agrave; d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/tai-nghe-may-tinh" target="_blank">t</a>ai nghe máy tính&nbsp;sử dụng dễ d&agrave;ng tr&ecirc;n nhiều nền tảng kết nối kh&aacute;c nhau từ điện thoại cho đến PC được thiết kế đặc biệt d&agrave;nh cho trải nghiệm chơi game tối ưu. C&aacute;c m&agrave;ng loa &acirc;m thanh k&eacute;p chuy&ecirc;n dụng, một cho &acirc;m cao/&acirc;m trung v&agrave; một cho &acirc;m trầm, cung cấp &acirc;m thanh phong ph&uacute; chi tiết để t&aacute;i tạo ch&iacute;nh x&aacute;c thế giới game.</p>

<h3><strong><strong>Mic v&agrave; n&uacute;t điều khiển t&iacute;ch hợp</strong></strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g333-7_a61ef6ea5e984065849931347535392e_1024x1024.jpeg" /></p>

<p>Tai Nghe Logitech G333 Black c&oacute; Micr&ocirc; tr&ecirc;n d&acirc;y chất lượng cao đem đến th&ocirc;ng tin li&ecirc;n lạc v&agrave; tr&ograve; chuyện r&otilde; r&agrave;ng, trong khi c&aacute;c n&uacute;t điều khiển t&iacute;ch hợp cho ph&eacute;p bạn ph&aacute;t, tạm dừng v&agrave; điều khiển &acirc;m lượng một c&aacute;ch liền mạch. Micr&ocirc; cũng cho ph&eacute;p bạn giao tiếp trong tr&ograve; chơi, cũng như nhận cuộc gọi khi bạn chơi game tr&ecirc;n điện thoại của m&igrave;nh.</p>

<h3><strong><strong>T&ugrave;y chỉnh linh hoạt v&agrave; sự bền bỉ tuyệt vời</strong></strong></h3>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g333-6_4363bca3e03246608225a045e6d9941c_1024x1024.jpeg" /></p>

<p>Chọn giữa c&aacute;c k&iacute;ch cỡ đầu n&uacute;t silicon mềm dẻo đi k&egrave;m để vừa vặn v&agrave; nằm nhẹ nh&agrave;ng b&ecirc;n trong tai của bạn. Vỏ nh&ocirc;m chắc chắn đ&aacute;ng tin cậy v&agrave; bền với lớp ho&agrave;n thiện hấp dẫn.</p>

<h3><strong><strong>Tương th&iacute;ch nhiều nền tảng</strong></strong></h3>

<p>Tai nghe có d&acirc;y&nbsp;với kiểu d&aacute;ng nh&eacute;t tai Logitech G333 Black c&oacute; khả năng tương th&iacute;ch với rất nhiều tảng như: PC, mobile, Xbox, PlayStation, Nintendo, etc... th&ocirc;ng qua 2 đầu cắm aux 3,5 mm hoặc cổng USB-C đi k&egrave;m.</p>

<h3><strong>Đa dạng m&agrave;u sắc đa dạng lựa chọn</strong></h3>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-logitech-g333_97aebe80cde447569cb1a9deef115918_1024x1024.jpeg" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3><strong><strong>Trong hộp c&oacute; g&igrave;?</strong></strong></h3>

<p>Hiểu đối tượng người d&ugrave;ng trong hộp của Logitech G333 c&oacute; đầy đủ những thứ phụ kiện hữu &iacute;ch m&agrave; bạn chắc chắn sẽ cần cho một chiếc tai nghe chơi game dưới 1 tri&ecirc;̣u.&nbsp;Bao gồm: G333 Gaming Earphones x1, sizes of ear t&iacute;p (S,M,L) x3, USB-C dongle x1,t&uacute;i đựng tai nghe x1, hướng dấn sử dụng.</p>

<p>&nbsp;</p>
', 800000, 0, 5, N'/images/LogitechG333.jpg', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'lgt_0000006', N' Logitech G703 Hero Lightspeed Wireless Gaming', N'<h3><strong>Thiết kế thoải m&aacute;i v&agrave; chất lượng</strong></h3>

<p>Logitech G703 l&agrave; mẫu chu&ocirc;̣t máy tính&nbsp;c&oacute; thiết kế thoải m&aacute;i k&egrave;m theo trọng lượng nhẹ, với tay cầm cao su gi&uacute;p tăng th&ecirc;m khả năng di chuột của bạn. Ngo&agrave;i ra bạn c&oacute; thể t&ugrave;y chỉnh được trọng lượng của chuột với t&ugrave;y chọn 10g gi&uacute;p bạn linh động hơn trong việc sử dụng.<br />
<img src="https://hanoicomputercdn.com/media/product/48076_tong_the_mouse_logitech_g703_lightspeed_wireless_gaming_hero.jpg" style="height:600px; width:600px" /></p>

<h3><strong>Trang bị cảm biến HERO</strong></h3>

<p>Logitech G703 được trang bị cảm biến 16K HERO thế hệ mới hiện đại. Gi&uacute;p cho chuột của bạn l&ecirc;n một tầm cao mới với khả năng theo d&otilde;i 1:1, độ nhạy DPI tối đa 100-16.000DPI, k&egrave;m theo l&agrave; t&iacute;nh năng l&agrave;m mịn v&agrave; lọc tăng tốc.<br />
<img alt="Chuột Logitech G703 được trang bị cảm biến 16K HERO thế hệ mới hiện đại" src="https://hanoicomputercdn.com/media/lib/48076_mouse-logitech-g703-lightspeed-wireless-gaming-hero-1.jpg" style="height:338px; width:600px" /></p>

<h3><strong>Lightsync RGB</strong></h3>

<p>Đ&egrave;n LED RGB to&agrave;n dải quang phổ được lấy cảm hứng từ c&aacute;c tr&ograve; chơi h&agrave;nh động, c&ugrave;ng c&aacute;c phản ứng, &acirc;m thanh trong tr&ograve; chơi, m&agrave;u sắc từ m&agrave;n h&igrave;nh đồng bộ h&oacute;a với thiết bị. Bạn c&oacute; thể t&ugrave;y chỉnh c&aacute;c hiệu ứng &aacute;nh s&aacute;ng l&ecirc;n đến 16,8 triệu m&agrave;u bằng phần mềm HUB G v&agrave; c&aacute; nh&acirc;n h&oacute;a để ph&ugrave; hợp với m&igrave;nh hơn.<br />
<img alt="Logitech G703 Đèn LED RGB toàn dải quang phổ được lấy cảm hứng từ các trò chơi hành động" src="https://hanoicomputercdn.com/media/lib/48076_mouse-logitech-g703-lightspeed-wireless-gaming-hero-2.jpg" style="height:338px; width:600px" /></p>

<h3><strong>Vị tr&iacute; dễ k&iacute;ch hoạt</strong></h3>

<p>Hệ thống ứng lực n&uacute;t bằng l&ograve; xo kim loại ti&ecirc;n tiến gi&uacute;p cho c&aacute;c n&uacute;t chuột tr&aacute;i v&agrave; phải ở vị tr&iacute; sẵn s&agrave;ng k&iacute;ch hoạt với &iacute;t lực hơn, c&oacute; nghĩa l&agrave; đem lại cảm gi&aacute;c n&uacute;t, độ nhạy v&agrave; độ ổn định tuyệt vời mỗi lần bạn nhấn ph&iacute;m.<br />
<img alt="Logitech G703 có hệ thống ứng lực nút bằng lò xo kim loại tiên tiến giúp cho các nút chuột trái và phải ở vị trí sẵn sàng kích hoạt với ít lực hơn" src="https://hanoicomputercdn.com/media/lib/48076_mouse-logitech-g703-lightspeed-wireless-gaming-hero-3.jpg" style="height:338px; width:600px" /></p>

<h3><strong>Sạc kh&ocirc;ng d&acirc;y tiện lợi</strong></h3>

<p>Thời lượng pin sẽ kh&ocirc;ng phải l&agrave; điều bạn cần lo lắng. Kết hợp với hệ thống sạc kh&ocirc;ng d&acirc;y POWERPLAY để cho G703 được sạc trong khi bạn kh&ocirc;ng sử dụng. Chỉ cần gắn hệ thống sạc POWERCORE.<br />
<img alt=" Logitech G703 Hero có sạc không dây tiện lợi" src="https://hanoicomputercdn.com/media/lib/48076_mouse-logitech-g703-lightspeed-wireless-gaming-hero-4.png" style="height:101px; width:600px" /></p>
', 1749000, 3, 2, N'/images/logitechG903.jpg', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'lgt_10000001', N'Logitech G102 Prodigy RGB', N'<p><strong>Chuột Logitech G102 Prodigy RGB sở hữu thiết kế cổ điển&nbsp;</strong><br />
<img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102_391e1911534e4c578e98141b3a8e5eb6.jpg" style="height:300px; width:400px" /><br />
&nbsp;</p>

<p>Được x&acirc;y dựng hướng đền ph&acirc;n kh&uacute;c phổ th&ocirc;ng, ch&iacute;nh v&igrave; Logitech G102 l&agrave; một trong những d&ograve;ng chu&ocirc;̣t gaming giá rẻ&nbsp;đ&aacute;p ứng tốt c&aacute;c nhu cầu cơ bản của game thủ hiện v&agrave; người ti&ecirc;u d&ugrave;ng hiện nay.&nbsp;</p>

<p>Lấy cảm hứng từ thiết kế huyền thoại của chuột chơi game G100S của Logitech. Được c&aacute;c game thủ tr&ecirc;n khắp thế giới y&ecirc;u th&iacute;ch v&agrave; l&agrave; m&oacute;n đồ ưa chuộng của những người chơi thể thao điện tử chuy&ecirc;n nghiệp, đ&oacute; l&agrave; thiết kế cổ điển m&agrave; ch&uacute;ng t&ocirc;i đ&atilde; chế tạo lại v&agrave; tối ưu h&oacute;a từ trong ra ngo&agrave;i để c&oacute; trọng lượng nhẹ, bền bỉ v&agrave; thoải m&aacute;i. Chuột c&oacute; thết kế đối xứng ở cả 2 b&ecirc;n, kh&aacute; thon gọn v&agrave; nhỏ nhắn.&nbsp;</p>

<h3><strong>Hiệu năng chơi game được n&acirc;ng cấp</strong><br />
<img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102-1_51a3f63e68694f3f9cb7a088fb63fe92.jpg" style="height:300px; width:400px" /></h3>

<p>Logitech G102&nbsp;c&oacute; tốc độ phản hồi 1000Hz mỗi gi&acirc;y, nhanh hơn gấp 8 lần so với chuột ti&ecirc;u chuẩn.&nbsp;Nhờ vậy, với bất k&igrave; thao t&aacute;c di hay mỗi c&uacute; click chuột n&agrave;o bạn sẽ nhanh ch&oacute;ng thấy được phản hồi ngay lập tức.</p>

<p>Với cảm biến quang học c&oacute; DPI t&ugrave;y biến từ 200 cho tới 8000 DPI,&nbsp;Logitech G102 Gaming&nbsp;cho bạn thao t&aacute;c khả năng xử l&iacute; t&igrave;nh huống nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c trong bất k&igrave; tựa game n&agrave;o. Hơn nữa, bạn c&oacute; thể ho&agrave;n to&agrave;n t&ugrave;y chỉnh mức DPI ph&ugrave; hợp với khả năng cũng như tr&ograve; chơi của m&igrave;nh.&nbsp;</p>

<h3><strong>Ứng dụng 6 n&uacute;t cơ học</strong><br />
<img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102-3_bbb512982085457cb6bf28c6551c2d94.jpg" style="height:300px; width:400px" /><br />
Chu&ocirc;̣t chơi game&nbsp;Logitech G102 Gaming USB Black&nbsp;sử dụng hệ thống ứng lực n&uacute;t cơ học sử dụng l&ograve; xo kim loại để gi&uacute;p giữ cho c&aacute;c n&uacute;t chuột tr&aacute;i v&agrave; phải bật l&ecirc;n ngay lập tức khi nhấp, gi&uacute;p giảm lực t&aacute;c động cần thiết. Kết hợp với c&aacute;c n&uacute;t tr&aacute;i v&agrave; phải, n&oacute; l&agrave;m tăng độ ổn định v&agrave; mang lại cảm gi&aacute;c cũng như phản hồi nhấp tuyệt vời.</h3>

<h3><strong>T&iacute;ch hợp t&ugrave;y chỉnh bằng LIGHTSYNC RGB</strong><br />
<img src="https://file.hstatic.net/1000026716/file/gearvn-logitech-g102-4_df8bfb889aff40babbe59b19d4d78a49.jpg" style="height:300px; width:400px" /><br />
&nbsp;</h3>

<p>Điểm nhấn ấn tượng nhất của t&ocirc;i đối với ch&uacute; chuột G102 đ&oacute; ch&iacute;nh l&agrave; hệ thống đ&egrave;n Led cực đẹp với 16,8 triệu m&agrave;u. Đ&egrave;n Led RGB của chuột G102 đi v&ograve;ng qua quanh th&acirc;n với logo ở ngay giữa th&acirc;n chuột, tạo cảm gi&aacute;c nổi bật v&agrave; cực bắt mắt.</p>

<p>C&ocirc;ng nghệ LIGHTSYNC cung cấp khả năng chiếu s&aacute;ng RGB thế hệ mới, đồng bộ h&oacute;a &aacute;nh s&aacute;ng v&agrave; c&aacute;c cấu h&igrave;nh tr&ograve; chơi với nội dung của bạn. T&ugrave;y chỉnh từ to&agrave;n bộ quang phổ gồm gần 16,8 triệu m&agrave;u v&agrave; đồng bộ h&oacute;a hiệu ứng v&agrave; h&igrave;nh chiếu s&aacute;ng động với thiết bị&nbsp;chuột Logitech G102 Prodigy RGB&nbsp;của bạn.&nbsp;</p>

<div class="ddict_btn" style="left:952.444px; top:29.8889px"><img src="chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png" /></div>
', 350000, 10, 2, N'/images/logitechG102.jpg', 1, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'RK68PROR', N'RK68 Pro ', N'<p><strong>Royal Kludge RK68 Pro - Một n&acirc;ng cấp ho&agrave;n hảo cho RK G68 quốc d&acirc;n</strong></p>

<p>Th&ocirc;ng số kỹ thuật:<br />
- Case nh&ocirc;m CNC nguy&ecirc;n khối<br />
- Kết nối Three-Modes: Type C - Bluetooth 5.0 - Wireless 2.4G<br />
- Switch: RK Blue/Brown/Red<br />
- Kailh Hotswap thay n&oacute;ng switch m&agrave; kh&ocirc;ng cần r&atilde; h&agrave;n<br />
- Led RGB 16.8 triệu m&agrave;u, c&oacute; phần mềm điều chỉnh<br />
- Pin 1800mAh</p>

<p>I. Đập hộp<br />
Phụ kiện trong hộp của&nbsp;<strong>RK68 Pro</strong>&nbsp;kh&ocirc;ng kh&aacute;c g&igrave; so với c&aacute;c sản phẩm kh&aacute;c của RK. Vẫn bao gồm C&aacute;p Type C, Switch-Keypuller 2 in 1, Switch RK dự ph&ograve;ng. Kh&aacute;c với RK G68, receiver 2.4G của RK68 Pro sẽ kh&ocirc;ng c&oacute; chỗ để gắn nam ch&acirc;m tr&ecirc;n case m&agrave; sẽ đặt rời ở ngo&agrave;i</p>

<p>II. Thiết kế<br />
RK68 Pro c&oacute; khung thiết kế c&oacute; thể n&oacute;i kh&ocirc;ng kh&aacute;c g&igrave; nhiều so với RK G68. Chỉ đơn giản l&agrave; thay to&agrave;n bộ bằng nh&ocirc;m nguy&ecirc;n khối. Nh&ocirc;m tuy mỏng nhưng được gia c&ocirc;ng kh&aacute; tốt v&agrave; chắc chắn. Cầm ph&iacute;m tr&ecirc;n tay thấy rất đầm, chắc, mịn, khắc phục nhược điểm về sự chắc chắn của RK G68</p>

<p>III. Chi tiết</p>

<p>Phi&ecirc;n bản shop đang c&oacute; tr&ecirc;n tay l&agrave; một chiếc ph&iacute;m đầy đủ, sử dụng switch do RK tự sản xuất v&agrave; keycap ABS Doubleshot xuy&ecirc;n led. RK switch th&igrave; c&oacute; chất lượng kh&ocirc;ng qu&aacute; tốt, ph&ugrave; hợp để d&ugrave;ng chống ch&aacute;y với những ai tạm thời chưa c&oacute; đủ kinh ph&iacute; để n&acirc;ng cấp th&ecirc;m. Tương tự th&igrave; keycap ABS của RK cũng kh&aacute; mỏng, cảm gi&aacute;c g&otilde; chỉ cơ bản m&agrave; th&ocirc;i.&nbsp;</p>

<p>RK68 Pro chỉ đơn giản l&agrave; n&acirc;ng cấp về case so với RK G68, do đ&oacute; PCB v&agrave; Plate gần như kh&ocirc;ng kh&aacute;c biệt, chỉ thay đổi một số vị tr&iacute; về lỗ bắt ốc để ph&ugrave; hợp hơn với case.</p>

<p>Case nh&ocirc;m ho&agrave;n thiện tốt. Trong tầm tiền dưới 2.000.000VND th&igrave; kh&ocirc;ng thể đ&ograve;i hỏi một chất lượng ho&agrave;n thiện cao hơn. Nh&ocirc;m mỏng nhưng rất cứng c&aacute;p v&agrave; chắc chắn. Ho&agrave;n thiện cắt CNC ổn. Sờ v&agrave;o case thấy kh&aacute; mịn v&agrave; m&aacute;t. L&ograve;ng case c&oacute; độ rỗng rất &iacute;t, c&oacute; lẽ l&agrave; kh&ocirc;ng cần thiết phải l&oacute;t foam. Nếu l&oacute;t th&igrave; chỉ n&ecirc;n d&ugrave;ng foam mỏng v&agrave; đ&agrave;n hồi tốt như cao su lưu h&oacute;a để kh&ocirc;ng ảnh hưởng tới việc gắn PCB v&agrave; Plate v&agrave;o case.</p>
', 1750000, 5, 1, N'/images/rk68Pro.jpg', 2, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'rzer_0000001', N'Razer Barracuda X 2022', N'<h2><strong>Đ&aacute;nh gi&aacute; chi tiết tai nghe Razer Barracuda X 2022</strong></h2>

<p>Razer, thương hiệu nổi tiếng với những sản phẩm gaming gear chất lượng. Chất build chắc chắn, thiết kế đẹp mắt đem lại trải nghiệm sử dụng tuyệt vời, đ&oacute; cũng sẽ l&agrave; tất cả những g&igrave; Razer Barracuda X 2022 sẽ mang đến h&ocirc;m nay. C&ugrave;ng GEARVN t&igrave;m hiểu xem chiếc tai nghe wireless n&agrave;y c&ograve;n sở hữu những g&igrave; nữa nh&eacute; !</p>

<h3><strong>Trải nghiệm &acirc;m thanh cao cấp</strong></h3>

<p>Với driver &ldquo;c&acirc;y nh&agrave; l&aacute; vườn&rdquo; sở hữu c&aacute;i t&ecirc;n Razer Triforce 40mm, bao gồm 3 driver gi&uacute;p xử l&yacute; &acirc;m thanh nhằm tạo ra c&aacute;c &acirc;m sắc từ thấp đến cao m&agrave; kh&ocirc;ng bị &ldquo;ch&oacute;i tay&rdquo;. Razer Barracuda X 2022 vừa đem lại trải nghiệm chơi game đỉnh cao vừa sở hữu khả năng phục vụ tốt nhất cho những nhu cầu giải tr&iacute; như nghe nhạc, xem phim/video,...</p>

<p><img alt="GEARVN - Tai nghe Razer Barracuda X 2022" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-razer-barracuda-x-2022-13_5b4a72fffc3d46edb68aa7d2d18244a7_1024x1024.jpg" /></p>

<p>Đi k&egrave;m với Razer Barracuda X 2022 l&agrave; chiếc micro&nbsp;rời Razer Hyperclear Cardioid. Chiếc mic c&oacute; khả năng khử tiếng ồn từ m&ocirc;i trường xung quanh v&agrave; được tăng cường khả năng thu &acirc;m giọng n&oacute;i đem lại chất lượng cuộc gọi tốt nhất hay l&agrave; những pha giao tiếp đỉnh cao khi chơi game c&ugrave;ng bạn b&egrave;. Chiếc micro của Razer Barracuda X 2022 c&oacute; thể th&aacute;o rời để bạn dễ d&agrave;ng v&agrave; tiện lợi trong qu&aacute; tr&igrave;nh di chuyển.</p>

<h3><strong>Thao t&aacute;c thuận tiện</strong></h3>

<p>Razer Barracuda X 2022 cung cấp khả năng điều khiển linh hoạt với 3 thao t&aacute;c:</p>

<ul>
	<li>
	<p>Chạm 1 lần: Ph&aacute;t hoặc tạm dừng / Nghe hoặc kết th&uacute;c cuộc gọi.</p>
	</li>
	<li>
	<p>Chạm 2 lần: Bỏ qua (skip) b&agrave;i nhạc.</p>
	</li>
	<li>
	<p>Chạm 3 lần: Chuyển đổi nhanh giữa 2 chế độ Razer HyperSpeed Wireless v&agrave; Bluetooth.</p>
	</li>
</ul>

<p>&nbsp;</p>

<p><img alt="GEARVN - Tai nghe Razer Barracuda X 2022" src="https://file.hstatic.net/1000026716/file/gearvn-tai-nghe-razer-barracuda-x-2022-15_78fa36f8db7c4b63bb5086599de54b2c_1024x1024.jpg" /></p>

<p>&nbsp;</p>

<p>Ngo&agrave;i ra, bạn c&oacute; thể tối khả năng sử dụng c&ugrave;ng kiểm so&aacute;t t&igrave;nh trạng của chiếc tai nghe Razer Barracuda X 2022 th&ocirc;ng qua phần mềm Razer Audio.</p>

<div class="ddict_btn" style="left:1883px; top:104px"><img src="chrome-extension://cianljdimgjlpmjllcbahmpdnicglaap/logo/48.png" /></div>
', 2290, 0, 5, N'/images/RAZER_BARRACUDA_X.png', 2007, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'rzer_0000002', N'Razer Hammerhead PRO V2', N'<p><strong>Trải nghiệm sử dụng tuyệt vời</strong></p>

<p>Phần được rất nhiều game thủ quan t&acirc;m đối với một chiếc tai nghe, thường người d&ugrave;ng quan t&acirc;m đến chất &acirc;m cả khi chơi game v&agrave; nghe nhạc.</p>

<p>Tuy nhi&ecirc;n, c&aacute;c tai nghe in-ear n&oacute;i ri&ecirc;ng lại mang thiết kế nhỏ gọn v&agrave; thường xuy&ecirc;n được game thủ mang theo b&ecirc;n m&igrave;nh, nhu cầu nghe nhạc l&uacute;c rảnh rỗi l&agrave; kh&ocirc;ng thể kh&ocirc;ng t&iacute;nh đến. V&agrave; HammerHead Pro v2 l&agrave; một trong những tai nghe gaming gi&aacute; rẻ đ&atilde; thể hiện rất tốt khi trung h&ograve;a được 2 nhu cầu đối lập đ&oacute;.</p>

<p><img src="https://hstatic.net/716/1000026716/10/2016/7-17/lifestyle-razer-hammerhead-pro-v2-4.jpg" /></p>

<p>Chất &acirc;m đặc trưng của d&ograve;ng HammerHead vẫn được giữ nguy&ecirc;n, đ&oacute; l&agrave; dải bass đầy đủ cả chất v&agrave; lượng. Đối với c&aacute;c fan của thể loại nhạc EDM, Pop v&agrave; Hip-hop, chắc chắn HammerHead Pro v2 sẽ thỏa m&atilde;n đ&ocirc;i tai của bạn.</p>

<p><img src="https://hstatic.net/716/1000026716/10/2016/7-17/lifestyle-razer-hammerhead-pro-v2-7.jpg" /></p>

<h3><strong>Kh&ocirc;ng thua k&eacute;m c&aacute;c loại tai nghe over-ear</strong></h3>

<p>C&aacute;c game hiện tại tập trung rất nhiều v&agrave;o dải bass với tiếng bom đạn, ch&aacute;y nổ hay giọng trầm của nh&acirc;n vật, HammerHead Pro v2 thể hiện cực tốt khi mang lại trải nghiệm mạnh mẽ v&agrave; cuốn h&uacute;t.</p>

<p>Do đặc điểm l&agrave; tai nghe in-ear, &acirc;m trường của HammerHead Pro v2 thể thể xuất sắc như những tai nghe tr&ugrave;m đầu cỡ lớn, nhưng Razer cũng đ&atilde; rất cố gắng khi mở rộng &acirc;m trường hơn kh&aacute; nhiều so với phi&ecirc;n bản cũ.</p>

<p><img src="https://hstatic.net/716/1000026716/10/2016/7-17/lifestyle-razer-hammerhead-pro-v2-10.jpg" /></p>

<p>Micro l&agrave; điểm mạnh của Razer HammerHead từ phi&ecirc;n bản đầu ti&ecirc;n, v&agrave; kh&ocirc;ng c&oacute; l&yacute; do g&igrave; m&agrave; HammerHead Pro v2 kh&ocirc;ng kế thừa ưu điểm đ&oacute;. Với khả năng lọc &acirc;m tuyệt vời, kể cả khi đang đi đường, xe cộ ầm ĩ th&igrave; HammerHead Pro v2 vẫn đảm bảo khả năng truyền đạt &acirc;m thanh cực tốt.</p>
', 750000, 0, 5, N'/images/RazorHammerHeadProV2.jpg', 2007, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'xxx00000001', N'HyperX Hamster', N'<p><img alt="Cute Hamster Wallpaper - WallpaperSafari" src="https://th.bing.com/th/id/OIP.Y0a6__0fUEYdOlWRpbOrgwHaFn?pid=ImgDet&amp;w=1024&amp;h=776&amp;rs=1" /></p>
', 10000000, 1, 2, N'/images/OIP.jpeg', 2008, NULL)
INSERT [dbo].[SanPham] ([maSanPham], [tenSanPham], [moTaSanPham], [giaSanPham], [soLuongSanPham], [theLoaiSanPham], [hinhAnhSanPham], [maHangSanXuat], [hinhAnhSanPhamPath]) VALUES (N'ZOOM65V2-3', N'Zoom65 EE V2 - Ivory Cream', N'<p><strong>SẢN PHẨM ZOOM65 EE V2 L&Agrave; BỘ KIT, CHƯA BAO GỒM SWITCH V&Agrave; KEYCAP.</strong></p>

<p><strong>Vui l&ograve;ng xem kỹ ảnh bộ sản phẩm ở b&ecirc;n dưới</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/322/files/packaging-details-web.jpg?v=1674453684206" style="height:400px; width:707px" /></p>

<p>🛠 Th&ocirc;ng số kỹ thuật:</p>

<p>- Case nh&ocirc;m CNC, Gasket mount. Thiết kế seamless design<br />
- Mặt lưng Glass (k&iacute;nh) hoặc SS PVD (Th&eacute;p kh&ocirc;ng rỉ mạ b&oacute;ng PVD)<br />
- Layout 65%<br />
- PCB 1.2mm Hotswap Multi Layout, RGB, Bluetooth 5.0, VIA Keymap. Daughtherboard Ai03<br />
- Ho&agrave;n thiện bề mặt: electrostatic sprayed (c&aacute;c m&agrave;u kh&aacute;c), nano coated (với m&agrave;u GT Silver)<br />
- Plate mặc định: PC</p>

<p>&nbsp;</p>

<p><img alt="" src="https://bizweb.dktcdn.net/100/438/322/files/c1-giam-dung-luong.jpg?v=1674452889156" style="height:400px; width:711px" /><br />
<img alt="" src="https://bizweb.dktcdn.net/100/438/322/files/zoom65v2-exploded2-giam-dung-luong.jpg?v=1674452941073" style="height:400px; width:711px" /><br />
<img alt="" src="https://bizweb.dktcdn.net/100/438/322/files/plate.jpg?v=1674699308073" style="height:400px; width:711px" /></p>
', 4500000, 0, 1, N'/images/111.jpeg', 1002, NULL)
GO
SET IDENTITY_INSERT [dbo].[TrangThaiDonHang] ON 

INSERT [dbo].[TrangThaiDonHang] ([maTrangThai], [tenTranThai]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([maTrangThai], [tenTranThai]) VALUES (2, N'Chuẩn bị hàng')
INSERT [dbo].[TrangThaiDonHang] ([maTrangThai], [tenTranThai]) VALUES (3, N'Đang vận chuyển')
INSERT [dbo].[TrangThaiDonHang] ([maTrangThai], [tenTranThai]) VALUES (4, N'Đã giao hàng')
INSERT [dbo].[TrangThaiDonHang] ([maTrangThai], [tenTranThai]) VALUES (5, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[TrangThaiDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[WebUser] ON 

INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (13, N'hquan261203', N'hquan261203', N'hquan2612@gmail.com', CAST(N'2021-12-26T00:00:00' AS SmallDateTime), N'/images/FILES/pexels-photo-1266808.jpeg', 1, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (14, N'admin', N'1', N'admin@hdu.comm', CAST(N'2022-12-26T00:00:00' AS SmallDateTime), N'/images/avatars/ah7.jpg', 1, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (15, N'dinhlong1', N'1', NULL, CAST(N'2023-02-25T00:00:00' AS SmallDateTime), N'/images/avatars/jinx.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (16, N'dohuy', N'1', NULL, CAST(N'2023-02-27T03:07:00' AS SmallDateTime), N'/images/avatars/jinx.jpg', 1, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (17, N'hquan2612', N'1', NULL, CAST(N'2023-02-27T03:07:00' AS SmallDateTime), N'/images/avatars/si.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (1013, N'admin2', N'1', NULL, CAST(N'2023-03-02T10:45:00' AS SmallDateTime), N'/images/avatars/minoin.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (1015, N'hdu', N'1', NULL, CAST(N'2023-03-02T11:05:00' AS SmallDateTime), N'/images/avatars/si.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (1016, N'hdu2', N'1', NULL, CAST(N'2023-03-02T11:06:00' AS SmallDateTime), N'/images/avatars/luuhuyavatar.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (1017, N'hdu3', N'1', NULL, CAST(N'2023-03-02T11:07:00' AS SmallDateTime), N'/images/avatars/Gearvn_Cyberpunk anime_ (21).jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (1018, N'doluuvanhuy', N'2', NULL, CAST(N'2023-03-02T11:10:00' AS SmallDateTime), N'/images/avatars/UnknownAvatar.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (2013, N'sati', N'1', NULL, CAST(N'2023-03-03T10:02:00' AS SmallDateTime), N'/images/avatars/UnknownAvatar.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (2014, N'raucon', N'1', NULL, CAST(N'2023-03-03T10:04:00' AS SmallDateTime), N'/images/avatars/si.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (3017, N'hyoangname', N'1', NULL, CAST(N'2023-03-22T08:59:00' AS SmallDateTime), N'/images/avatars/UnknownAvatar.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (4013, N'', N'', NULL, CAST(N'2023-03-27T18:10:00' AS SmallDateTime), N'/images/avatars/UnknownAvatar.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (4014, N'qwewqe', N'1', NULL, CAST(N'2023-03-27T18:12:00' AS SmallDateTime), N'/images/avatars/UnknownAvatar.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (4015, N'quanhoang', N'1', NULL, CAST(N'2023-03-27T18:12:00' AS SmallDateTime), N'/images/avatars/UnknownAvatar.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[WebUser] ([id], [UserName], [PassWord], [gmail], [ngayTaoTaiKhoan], [avatarPath], [isAdmin], [diaChi], [dienThoai], [hoTen]) VALUES (4016, N'tester', N'1', NULL, CAST(N'2023-03-27T18:13:00' AS SmallDateTime), N'/images/avatars/unnamed.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[WebUser] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [ChiTietDonHang_DonHang] FOREIGN KEY([maDonHang])
REFERENCES [dbo].[DonHang] ([maDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [ChiTietDonHang_SanPham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [DonHang_TrangThai] FOREIGN KEY([trangThaiDonHang])
REFERENCES [dbo].[TrangThaiDonHang] ([maTrangThai])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [DonHang_TrangThai]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Payment] FOREIGN KEY([phuongThucThanhToan])
REFERENCES [dbo].[Payment] ([maPhuongThuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Payment]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_WebUser] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[WebUser] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_WebUser]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_ChucNang] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[ChucNang] ([MaChucNang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_ChucNang]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_WebUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[WebUser] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_WebUser]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([maHangSanXuat])
REFERENCES [dbo].[HangSanXuat] ([maHangSanXuat])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([theLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([maTheLoai])
GO
ALTER TABLE [dbo].[SanPham_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_YeuThich_SanPham] FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([maSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham_YeuThich] CHECK CONSTRAINT [FK_SanPham_YeuThich_SanPham]
GO
ALTER TABLE [dbo].[SanPham_YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_YeuThich_WebUser] FOREIGN KEY([User_ID])
REFERENCES [dbo].[WebUser] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham_YeuThich] CHECK CONSTRAINT [FK_SanPham_YeuThich_WebUser]
GO
