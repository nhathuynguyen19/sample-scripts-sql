USE [GiaoTrinhDB_QuanLyDaoTao]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 19/02/2024 7:23:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaDonVi] [nvarchar](50) NOT NULL,
	[TenDonVi] [nvarchar](255) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[MaDonViCapTren] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGiangVien] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[DiDong] [nvarchar](50) NOT NULL,
	[MaDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocPhan]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhan](
	[MaHocPhan] [nvarchar](50) NOT NULL,
	[TenHocPhan] [nvarchar](255) NOT NULL,
	[SoTinChi] [int] NOT NULL,
	[MaDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_HocPhan] PRIMARY KEY CLUSTERED 
(
	[MaHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKhoaHoc] [nvarchar](50) NOT NULL,
	[TenKhoaHoc] [nvarchar](255) NOT NULL,
	[NamTuyenSinh] [int] NOT NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[MaKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc_NganhDaoTao]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc_NganhDaoTao](
	[MaKhoaHoc] [nvarchar](50) NOT NULL,
	[MaNganh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhoaHoc_NganhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaKhoaHoc] ASC,
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[MaLopHocPhan] [nvarchar](50) NOT NULL,
	[TenLopHocPhan] [nvarchar](255) NOT NULL,
	[MaHocPhan] [nvarchar](50) NOT NULL,
	[HocKy] [int] NOT NULL,
	[NamHoc] [nvarchar](10) NOT NULL,
	[HsDiemQTHT] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_LopHocPhan] PRIMARY KEY CLUSTERED 
(
	[MaLopHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan_GiangVien]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan_GiangVien](
	[MaLopHocPhan] [nvarchar](50) NOT NULL,
	[MaGiangVien] [nvarchar](50) NOT NULL,
	[SoGioDay] [int] NOT NULL,
 CONSTRAINT [PK_LopHocPhan_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaLopHocPhan] ASC,
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan_SinhVien]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan_SinhVien](
	[MaLopHocPhan] [nvarchar](50) NOT NULL,
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[DiemQTHT] [decimal](10, 2) NULL,
	[DiemThiLan1] [decimal](10, 2) NULL,
	[DiemThiLan2] [decimal](10, 2) NULL,
 CONSTRAINT [PK_LopHocPhan_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaLopHocPhan] ASC,
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NganhDaoTao]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NganhDaoTao](
	[MaNganh] [nvarchar](50) NOT NULL,
	[TenNganh] [nvarchar](255) NOT NULL,
	[MaDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NganhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 19/02/2024 7:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](255) NULL,
	[MaKhoaHoc] [nvarchar](50) NULL,
	[MaNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0100', N'Khoa Toán học', N'0234.3822704', N'khoatoan@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0101', N'Bộ môn Toán lý thuyết', NULL, NULL, N'HUSC0100')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0102', N'Bộ môn Toán ứng dụng', NULL, NULL, N'HUSC0100')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0103', N'Bộ môn Xác suất - Thống kê', NULL, NULL, N'HUSC0100')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0200', N'Khoa Công nghệ thông tin', N'0234.3826767', N'khoacntt@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0201', N'Bộ môn Khoa học máy tính', NULL, NULL, N'HUSC0200')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0202', N'Bộ môn Công nghệ phần mềm', NULL, NULL, N'HUSC0200')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0203', N'Bộ môn Mạng và truyền thông', NULL, NULL, N'HUSC0200')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0300', N'Khoa Điện, Điện tử và Công nghệ vật liệu', N'0234.3849610', N'khoaddtcnvl@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0301', N'Bộ môn Vật lý công nghệ', NULL, NULL, N'HUSC0300')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0302', N'Bộ môn Điện tử Viễn thông và Kỹ thuật máy tính', NULL, NULL, N'HUSC0300')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0400', N'Khoa Hóa học', N'0234.3823951', N'khoahoa@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0401', N'Bộ môn Hóa phân tích', NULL, NULL, N'HUSC0400')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0402', N'Bộ môn Hóa Lý', NULL, NULL, N'HUSC0400')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0403', N'Bộ môn Vô cơ - Hữu cơ', NULL, NULL, N'HUSC0400')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0500', N'Khoa Sinh học', N'0234 3822934', N'khoasinh@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0501', N'Bộ môn Tài nguyên sinh vật và môi trường', NULL, NULL, N'HUSC0500')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0502', N'Bộ môn Công nghệ sinh học', NULL, NULL, N'HUSC0500')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0503', N'Bộ môn Sinh học ứng dụng', NULL, NULL, N'HUSC0500')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0600', N'Khoa Địa lý - Địa chất', N'0234.3823837', N'khoadia@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0601', N'Bộ môn Địa chất công trình và địa chất thủy văn', NULL, NULL, N'HUSC0600')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0602', N'Bộ môn Quản lý tài nguyên môi trường và địa thông tin', NULL, NULL, N'HUSC0600')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0603', N'Bộ môn Địa chất', NULL, NULL, N'HUSC0600')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0700', N'Khoa Môi trường', N'0234.3848977', N'khoamoitruong@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0701', N'Bộ môn Quản lý Tài nguyên Môi trường và Biến đổi khí hậu', NULL, NULL, N'HUSC0700')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0702', N'Bộ môn Khoa học và Kỹ thuật Môi trường', NULL, NULL, N'HUSC0700')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0800', N'Khoa Kiến trúc', N'0234.3833530', N'khoakientruc@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0801', N'Bộ môn Quy hoạch, bảo tồn và cảnh quan', NULL, NULL, N'HUSC0800')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0802', N'Bộ môn Kiến trúc dân dụng và công nghiệp', NULL, NULL, N'HUSC0800')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0900', N'Khoa Ngữ văn', N'0234.3821133', N'khoavan@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0901', N'Bộ môn Văn học Việt Nam', NULL, NULL, N'HUSC0900')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0902', N'Bộ môn Lý luận văn học và văn học nước ngoài', NULL, NULL, N'HUSC0900')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC0903', N'Bộ môn Ngôn ngữ Hán Nôm', NULL, NULL, N'HUSC0900')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1000', N'Khoa Lịch sử', N'0234.3823833', N'khoalichsu@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1001', N'Bộ môn Lịch sử Việt Nam', NULL, NULL, N'HUSC1000')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1002', N'Bộ môn Nhân học, khảo cổ học, văn hóa du lịch', NULL, NULL, N'HUSC1000')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1003', N'Bộ môn Lịch sử thế giới và Đông phương học', NULL, NULL, N'HUSC1000')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1100', N'Khoa Lý luận chính trị', N'0234.3825698', N'khoachinhtri@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1101', N'Bộ môn Triết học và quản lý nhà nước', NULL, NULL, N'HUSC1100')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1102', N'Bộ môn Chủ nghĩa xã hội khoa học và kinh tế chính trị', NULL, NULL, N'HUSC1100')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1103', N'Bộ môn Lịch sử Đảng và Tư tưởng Hồ Chí Minh', NULL, NULL, N'HUSC1100')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1200', N'Khoa Báo chí - Truyền thông', N'0234.3883744', N'khoabaochi@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1201', N'Bộ môn Báo chí', NULL, NULL, N'HUSC1200')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1202', N'Bộ môn Truyển thông', NULL, NULL, N'HUSC1200')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1300', N'Khoa Xã hội học và Công tác xã hội', N'0234.3833790', N'khoaxhh@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1301', N'Bộ môn Xã hội học', NULL, NULL, N'HUSC1300')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1302', N'Bộ môn Công tác xã hội', NULL, NULL, N'HUSC1300')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1303', N'Bộ môn Quản lý xã hội', NULL, NULL, N'HUSC1300')
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1400', N'Phòng Đào tạo và Công tác sinh viên', N'0234.3846490', N'phongdaotao@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1500', N'Phòng Khảo thí', N'0234.3834837', N'phongkhaothi@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1600', N'Phòng Kế hoạch tài chính và Cơ sở vật chất', N'0234.3821247', N'phongkhtc@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1700', N'Phòng Tổ chức - Hành chính', N'0234.3846598', N'phongtchc@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1800', N'Phòng Khoa học Công nghệ và Hợp tác quốc tế', N'0234.3837847', N'phongkhcn@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC1900', N'Trung tâm Thông tin và Thư viện', N'0234.3832447', N'thuvien@husc.edu.vn', NULL)
GO
INSERT [dbo].[DonVi] ([MaDonVi], [TenDonVi], [DienThoai], [Email], [MaDonViCapTren]) VALUES (N'HUSC2000', N'Trung tâm Tin học', N'0234.3827272', N'trungtamtinhoc@husc.edu.vn', NULL)
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0101', N'Trần Văn Tiến', N'tranvantien@husc.edu.vn', N'0905541047', N'HUSC0100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0102', N'Trần Thị Xuân Hiền', N'tranthixuanhien@husc.edu.vn', N'0914513001', N'HUSC0100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0103', N'Trần Gia Linh', N'trangialinh@husc.edu.vn', N'0983551029', N'HUSC0100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0104', N'Lê Thị Thuyết', N'lethithuyet@husc.edu.vn', N'0905531030', N'HUSC0100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0105', N'Trương Thanh Bảo Trân', N'truongthanhbaotran@husc.edu.vn', N'0914110325', N'HUSC0100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0106', N'Hoàng Thị Diệu Hiền', N'hoangthidieuhien@husc.edu.vn', N'0905031001', N'HUSC0100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0201', N'Trần Nguyên Phong', N'tnphong@husc.edu.vn', N'0914172116', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0202', N'Nguyễn Hoàng Hà', N'nhha@husc.edu.vn', N'0983511147', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0203', N'Nguyễn Văn Trung', N'nvtrung@husc.edu.vn', N'0905031030', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0204', N'Hoàng Thị Thủy', N'hoangthithuy@husc.edu.vn', N'0914511149', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0205', N'Nguyễn Ngọc Thủy', N'nguyenngocthuy@husc.edu.vn', N'0983510005', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0206', N'Phan Thị Thanh Hiền', N'phanthithanhhien@husc.edu.vn', N'0905510090', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0207', N'Trần Văn Nam', N'tranvannam@husc.edu.vn', N'0983011085', N'HUSC0200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0301', N'Nguyễn Thị Tường Vi', N'nguyenthituongvi@husc.edu.vn', N'0914511186', N'HUSC0300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0302', N'Nguyễn Văn Vỹ', N'nguyenvanvy@husc.edu.vn', N'0983110302', N'HUSC0300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0303', N'Nguyễn Thị Dạ Thảo', N'nguyenthidathao@husc.edu.vn', N'0905011177', N'HUSC0300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0304', N'Hồ Thị Quỳnh Như', N'hothiquynhnhu@husc.edu.vn', N'0905011141', N'HUSC0300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0305', N'Lê Mỹ Cẩm', N'lemycam@husc.edu.vn', N'0914551004', N'HUSC0300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0401', N'Dương Thị Mỹ Vân', N'duongthimyvan@husc.edu.vn', N'0983511174', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0402', N'Hồ Hoàng Anh', N'hohoanganh@husc.edu.vn', N'0905511006', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0403', N'Hoàng Thị Ánh Hồng', N'hoangthianhhong@husc.edu.vn', N'0914511058', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0404', N'Lê Thị Thanh Tâm', N'lethithanhtam@husc.edu.vn', N'0983011125', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0405', N'Nguyễn Thị Thu Hà', N'nguyenthithuha@husc.edu.vn', N'0905110040', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0406', N'Phạm Thị Lệ Thuyên', N'phamthilethuyen@husc.edu.vn', N'0914061016', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0407', N'Lê Giang Nguyên', N'legiangnguyen@husc.edu.vn', N'0983511169', N'HUSC0400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0501', N'Châu Viết Duy', N'chauvietduy@husc.edu.vn', N'0905011029', N'HUSC0500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0502', N'Đặng Hương Giang', N'danghuonggiang@husc.edu.vn', N'0914551011', N'HUSC0500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0503', N'Hồ Thị Bích', N'hothibich@husc.edu.vn', N'0983061002', N'HUSC0500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0504', N'Trần Thị Chuyên', N'tranthichuyen@husc.edu.vn', N'0905511021', N'HUSC0500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0505', N'Hồ Thị Ngọc Trâm', N'hothingoctram@husc.edu.vn', N'0914061043', N'HUSC0500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0601', N'Nguyễn Mạnh Hùng', N'nguyenmanhhung@husc.edu.vn', N'0983041011', N'HUSC0600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0602', N'Nguyễn Thị Như Sao', N'nguyenthinhusao@husc.edu.vn', N'0905511209', N'HUSC0600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0603', N'Trình Nguyễn Ngọc Hạnh', N'trinhnguyenngochanh@husc.edu.vn', N'0914531006', N'HUSC0600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0604', N'Trần Văn Tư', N'tranvantu@husc.edu.vn', N'0983410114', N'HUSC0600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0605', N'Hồ Thị Đoài', N'hothidoai@husc.edu.vn', N'0905541010', N'HUSC0600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0701', N'Trần Minh Tâm', N'tranminhtam@husc.edu.vn', N'0914511215', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0702', N'Phạm Thị Quỳnh Trân', N'phamthiquynhtran@husc.edu.vn', N'0983511213', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0703', N'Lê Thị Nô', N'lethino@husc.edu.vn', N'0905531011', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0704', N'Trần Thị Thanh Thuý', N'tranthithanhthuy@husc.edu.vn', N'0914511244', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0705', N'Bùi Thị Thanh Lam', N'buithithanhlam@husc.edu.vn', N'0983410017', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0706', N'Nguyễn Thị Thuý', N'nguyenthithuy@husc.edu.vn', N'0905551099', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0707', N'Nguyễn Thị Thùy Linh', N'nguyenthithuylinh@husc.edu.vn', N'0914110118', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0708', N'Bùi Thị Như Hằng', N'buithinhuhang@husc.edu.vn', N'0983051009', N'HUSC0700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0801', N'Lê Thị Kim Anh', N'lethikimanh@husc.edu.vn', N'0905011003', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0802', N'Lê Thị Thu Thảo', N'lethithuthao@husc.edu.vn', N'0914110275', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0803', N'Nguyễn Thị Diệu Tân', N'nguyenthidieutan@husc.edu.vn', N'0914511244', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0804', N'Phạm Thị Luyến', N'phamthiluyen@husc.edu.vn', N'0983531021', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0805', N'Đỗ Thị Kim Thoa', N'dothikimthoa@husc.edu.vn', N'0905110239', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0806', N'Nguyễn Thị Ngọc Hoàn', N'nguyenthingochoan@husc.edu.vn', N'0914561014', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0807', N'Hoàng Thị Bảo Ngọc', N'hoangthibaongoc@husc.edu.vn', N'0983511115', N'HUSC0800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0901', N'Trần Thị Thu Phương', N'tranthithuphuong@husc.edu.vn', N'0905110239', N'HUSC0900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0902', N'Nguyễn Lê Anh Trâm', N'nguyenleanhtram@husc.edu.vn', N'0914061044', N'HUSC0900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0903', N'Lê Thị Ánh Nguyệt', N'lethianhnguyet@husc.edu.vn', N'0983011101', N'HUSC0900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0904', N'Nguyễn Thị Hàn Ni', N'nguyenthihanni@husc.edu.vn', N'0905031057', N'HUSC0900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0905', N'Nguyễn Thị Anh Thi', N'nguyenthianhthi@husc.edu.vn', N'0914541067', N'HUSC0900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC0906', N'Cao Ngọc Anh Thư', N'caongocanhthu@husc.edu.vn', N'0983031012', N'HUSC0900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1001', N'Lê Thị Ái Nhi', N'lethiainhi@husc.edu.vn', N'0905110167', N'HUSC1000')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1002', N'Trần Thị Phương', N'tranthiphuong@husc.edu.vn', N'0914011245', N'HUSC1000')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1003', N'Lê Thị Mai Trang', N'lethimaitrang@husc.edu.vn', N'0983051069', N'HUSC1000')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1004', N'Lê Thị Cẩm', N'lethicam@husc.edu.vn', N'0905541001', N'HUSC1000')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1005', N'Trần Thị Phương', N'tranthiphuong@husc.edu.vn', N'0914511201', N'HUSC1000')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1101', N'Ngô Thị Ngọc Giàu', N'ngothingocgiau@husc.edu.vn', N'0905551096', N'HUSC1100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1102', N'Trịnh Thị Thu Thương', N'trinhthithuthuong@husc.edu.vn', N'0914511159', N'HUSC1100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1103', N'Phan Thị Thuỳ Trang', N'phanthithuytrang@husc.edu.vn', N'0983011237', N'HUSC1100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1104', N'Nguyễn Thị Diệu Lài', N'nguyenthidieulai@husc.edu.vn', N'0905011123', N'HUSC1100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1105', N'Đinh Tú Cẩm', N'dinhtucam@husc.edu.vn', N'0914561002', N'HUSC1100')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1201', N'Hồ Thị Thuỳ Chung', N'hothithuychung@husc.edu.vn', N'0983510013', N'HUSC1200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1202', N'Nguyễn Thị Thắm', N'nguyenthitham@husc.edu.vn', N'0905051058', N'HUSC1200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1203', N'Nguyễn Thị Thảo Phương', N'nguyenthithaophuong@husc.edu.vn', N'0914110198', N'HUSC1200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1204', N'Phan Thị Thùy Linh', N'phanthithuylinh@husc.edu.vn', N'0983531010', N'HUSC1200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1205', N'Phan Thị Tuyết Hường', N'phanthituyethuong@husc.edu.vn', N'0905561009', N'HUSC1200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1206', N'Nguyễn Thị Hiền', N'nguyenthihien@husc.edu.vn', N'0914051026', N'HUSC1200')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1301', N'Trần Song Hy Chin', N'transonghychin@husc.edu.vn', N'0983561005', N'HUSC1300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1302', N'Ngô Thị Hồng', N'ngothihong@husc.edu.vn', N'0905561035', N'HUSC1300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1303', N'Lê Thị Diệu Thoa', N'lethidieuthoa@husc.edu.vn', N'0914110242', N'HUSC1300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1304', N'Nguyễn Thị Kim Uyên', N'nguyenthikimuyen@husc.edu.vn', N'0983511173', N'HUSC1300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1305', N'Nguyễn Thị Thu Sương', N'nguyenthithusuong@husc.edu.vn', N'0905011139', N'HUSC1300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1306', N'Khương Thị Nga', N'khuongthinga@husc.edu.vn', N'0914511095', N'HUSC1300')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1401', N'Trần Lê Khánh My', N'tranlekhanhmy@husc.edu.vn', N'0983011105', N'HUSC1400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1402', N'Lê Thị Ngọc Mai', N'lethingocmai@husc.edu.vn', N'0905561025', N'HUSC1400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1403', N'Nguyễn Thị Thuỳ Dương', N'nguyenthithuyduong@husc.edu.vn', N'0914031005', N'HUSC1400')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1501', N'Vũ Thị Ngân', N'vuthingan@husc.edu.vn', N'0983551064', N'HUSC1500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1502', N'Lê Thị Minh Nguyệt', N'lethiminhnguyet@husc.edu.vn', N'0905551050', N'HUSC1500')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1601', N'Ngô Thị Trường Sinh', N'ngothitruongsinh@husc.edu.vn', N'0914511210', N'HUSC1600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1602', N'Phan Thị Yến', N'phanthiyen@husc.edu.vn', N'0983511187', N'HUSC1600')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1701', N'Lê Thị Thúy Ngọc', N'lethithuyngoc@husc.edu.vn', N'0905511162', N'HUSC1700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1702', N'Hoàng Thị Phúc', N'hoangthiphuc@husc.edu.vn', N'0914511130', N'HUSC1700')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1801', N'Trần Thị Ý Nhi', N'tranthiynhi@husc.edu.vn', N'0983511170', N'HUSC1800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1802', N'Bùi Thị Oanh', N'buithioanh@husc.edu.vn', N'0905511135', N'HUSC1800')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1901', N'Phan Thị Thanh Nhàn', N'phanthithanhnhan@husc.edu.vn', N'0914011126', N'HUSC1900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1902', N'Dương Quốc Bảo', N'duongquocbao@husc.edu.vn', N'0983051001', N'HUSC1900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC1903', N'Trần Thị Hồng Phượng', N'tranthihongphuong@husc.edu.vn', N'0905511204', N'HUSC1900')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [HoTen], [Email], [DiDong], [MaDonVi]) VALUES (N'HUSC2001', N'Trần Thị Ngọc Anh', N'tranthingocanh@husc.edu.vn', N'0914511013', N'HUSC2000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3082', N'Kỹ thuật viết phóng sự', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3092', N'Công tác biên tập báo chí', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3112', N'Kỹ năng điều tra', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3132', N'Nhập môn báo in', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3152', N'Thiết kế Website báo điện tử', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3192', N'Các thể loại báo chí thông tấn', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3292', N'Truyền thông xã hội', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO3362', N'Phỏng vấn truyền hình', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4053', N'Báo điện tử', 3, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4102', N'Các thể loại báo chí phát thanh', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4172', N'Sản xuất các sản phẩm báo mạng', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4282', N'Sản xuất chương trình phát thanh', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4292', N'Kịch bản và biên tập chương trình phát thanh', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4322', N'Kỹ thuật Audio', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO4382', N'Kỹ năng sản xuất sản phẩm báo chí đa nền tảng', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO5082', N'Chiến lược truyền thông', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAO5092', N'Hệ thống liên kết trong văn bản báo chí', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'BAT4012', N'Quản trị truyền thông trong khủng hoảng', 2, N'HUSC1200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CNS3022', N'Sinh học biển', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CNS4022', N'Công nghệ chuyển gen', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CNS4133', N'Cơ sở dữ liệu sinh học', 3, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTR1042', N'Chính trị học đại cương', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTR1073', N'Triết học Mác - Lênin 2', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX3032', N'Sức khoẻ cộng đồng', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX3083', N'Nhập môn công tác xã hội', 3, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX4022', N'Phương pháp công tác xã hội', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX4033', N'Công tác xã hội với nhóm', 3, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX4044', N'Dịch vụ công tác xã hội tại cộng đồng và các cơ sở trợ giúp xã hội', 4, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX4094', N'Các phương pháp giao tiếp thay thế và hỗ trợ', 4, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX4222', N'Công tác xã hội với người khuyết tật', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'CTX4262', N'Công tác xã hội với gia đình', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DCH2042', N'Thạch học đá magma', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DCH3272', N'Cơ sở tuyển khoáng', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DCT2013', N'Môi trường địa chất và đánh giá tác động môi trường', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DCT3142', N'Công trình xây dựng', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DKX2012', N'Đồ án địa chất công trình', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DKX2013', N'Vật liệu xây dựng', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DKX3062', N'Địa mạo ứng dụng', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DLY1012', N'Ðịa lý học đại cương', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DLY1023', N'Địa lý tự nhiên Việt Nam', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DLY3052', N'Cơ sở thổ nhưỡng và địa lý thổ nhưỡng', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DLY3162', N'Quy hoạch sử dụng đất', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DPH3142', N'Lịch sử - văn hóa phương Tây đại cương', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DPH3153', N'Các tôn giáo trên thế giới', 3, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DPH3182', N'Văn hóa phương Tây đại cương', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DPH3192', N'Một số vấn đề lễ tân và ngoại giao', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DPH4012', N'Một số vấn đề về lịch sử - văn hoá Indonesia', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DPH4113', N'Tiếng Anh chuyên đề_Lịch sử - văn hóa Đông Nam Á', 3, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV2012', N'Thiết kế mạch in', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV2082', N'Lý thuyết trường điện từ', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3013', N'Đo lường điện tử viễn thông', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3033', N'Xử lí số tín hiệu', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3093', N'Điện tử ứng dụng', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3132', N'Cơ sở kỹ thuật truyền số liệu', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3222', N'Nguồn điện', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3332', N'Kỹ thuật truyền hình', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV3412', N'Kỹ thuật siêu cao tần', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV4332', N'Thiết kế phần cứng hệ thống nhúng', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'DTV4383', N'Thiết kế mạch tích hợp tương tự', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HAN3063', N'Văn bản học Hán Nôm', 3, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HAN4023', N'Hán văn thời Lê', 3, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HAN4052', N'Luận ngữ', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HAN4242', N'Phân tích văn bản chữ Nôm', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HAN5052', N'Văn bản học Hán Nôm', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA3073', N'Hóa học phân tích 2', 3, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA3112', N'Hóa sinh', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA3192', N'Phân tích cấu trúc vật liệu', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA4102', N'Các phương pháp tách', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA4252', N'Kỹ thuật các quá trình dị thể', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA4272', N'Kỹ thuật tổng hợp hữu cơ và hóa dầu', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA4452', N'Hoá môi trường nước', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOA4552', N'Kỹ thuật nghiên cứu xúc tác trong chế biến dầu mỏ', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOC1022', N'Kỹ thuật nhiệt', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOC3142', N'Một số phương pháp hóa lý phân tích vật liệu rắn', 2, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOC4013', N'Thiết bị nhiệt', 3, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOC4033', N'Hóa lý silicate 2', 3, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOC4103', N'Công nghệ sản xuất polymer', 3, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'HOC4113', N'Công nghệ sản xuất vật liệu chịu lửa', 3, N'HUSC0400')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH1013', N'Hình học họa hình', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH1042', N'Bố cục không gian, nghệ thuật sắp đặt', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH2042', N'Lịch sử đô thị', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH3052', N'Thiết kế đô thị', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH3062', N'Quy hoạch xây dựng nông thôn', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH3182', N'Nghệ thuật hoa viên', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KQH4042', N'Quy hoạch hạ tầng kỹ thuật đô thị', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR2022', N'Sức bền vật liệu', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR2063', N'Thi công công trình', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR2073', N'Kỹ thuật đô thị', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR2082', N'Quản lý đô thị', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR3033', N'Cơ học lý thuyết', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR3072', N'Kiến trúc nhà công cộng', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR3193', N'Vật lý kiến trúc', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR3203', N'Thiết bị kỹ thuật kiến trúc công trình', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR3232', N'Bảo tồn kiến trúc công trình', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR4012', N'Đồ án nội ngoại thất', 2, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'KTR4033', N'Đồ án kiến trúc nhà công cộng quy mô trung bình 2', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'LIS3292', N'Lịch sử Thế giới cổ trung đại II', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'LIS3322', N'Sử liệu học', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'LIS4122', N'Một số vấn đề về lịch sử Trung Quốc', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'LIS4222', N'Các tộc người trên thế giới', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'LIS4442', N'Văn hóa vùng và phân vùng văn hóa Việt Nam', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'LIS5022', N'Các di tích lịch sử - văn hóa và danh thắng Việt Nam', 2, N'HUSC1000')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTH2023', N'Mỹ thuật', 3, N'HUSC0800')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTK2012', N'Vi sinh môi trường', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTK3023', N'Độc học và sức khỏe môi trường', 3, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTK4062', N'Kỹ thuật xử lý ô nhiễm đất', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTK4072', N'Kỹ thuật lò đốt chất thải', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTK4122', N'Xử lý nước thải công nghiệp', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTR3063', N'Quản trị các dự án tài nguyên và môi trường', 3, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTR3102', N'Thống kê ứng dụng trong môi trường', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTR3132', N'Sản xuất sạch hơn', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTR4022', N'Kỹ thuật xử lý nước thải', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTR4232', N'Quan trắc và đánh giá các hệ sinh thái', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTR4282', N'Kiểm soát ô nhiễm không khí đô thị và khu công nghiệp', 2, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTS3013', N'Nhập môn an toàn, sức khỏe và môi trường', 3, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'MTS4033', N'Quản lý an toàn nhiệt, điện và thiết bị', 3, N'HUSC0700')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'NNH5013', N'Văn học Việt Nam trung đại', 3, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QLN3022', N'Kỹ thuật xây dựng văn bản', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QLN3092', N'Nghiệp vụ văn thư lưu trữ', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QLN4042', N'Quan hệ công chúng và giao tiếp công vụ', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QLN4043', N'Tổ chức nhân sự trong cơ quan hành chính', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QLN4063', N'Quản lý nhà nước về an sinh xã hội', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QLN4073', N'Tổ chức bộ máy hành chính nhà nước', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QTM2072', N'Thiết kế và biên tập bản đồ tài nguyên và môi trường', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QTM3142', N'Phát triển, quản lý và sử dụng nguồn nhân lực', 2, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'QTM4083', N'Quản lý tài nguyên và môi trường nước', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIK3012', N'Các nguyên lý và quá trình sinh học', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIK3023', N'Kỹ thuật di truyền', 3, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIK4052', N'Dược sinh học', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIK4073', N'Công nghệ sản xuất vaccine', 3, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIK4092', N'Kỹ thuật nuôi cấy mô tế bào động vật', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN2032', N'Sinh học phát triển', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN3102', N'Quang sinh học', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN4282', N'Sinh học và sinh thái bò sát', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN4482', N'Quang hợp và năng suất cây trồng', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN4642', N'Hệ sinh thái rừng và đồi', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN4702', N'Nguồn lợi thủy vực', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN4712', N'Sinh học các loài động vật có xương sống ở nước', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN4982', N'Sinh học lưỡng cư bò sát', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN6072', N'Ứng dụng công nghệ sinh học trong xử lý môi trường', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'SIN6102', N'Sinh thái và quản lý động vật hoang dã', 2, N'HUSC0500')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN1093', N'Nhập môn lập trình', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN1103', N'Lập trình Python', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN3013', N'Lập trình nâng cao', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN3072', N'Các hệ quản trị cơ sở dữ liệu', 2, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN3084', N'Cấu trúc dữ liệu và thuật toán', 4, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN3102', N'Kỹ nghệ phần mềm', 2, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN3393', N'Java cơ bản', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4024', N'Phát triển ứng dụng IoT', 4, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4052', N'Hệ hỗ trợ quyết định', 2, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4153', N'Lập trình mạng', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4183', N'Kiểm định phần mềm', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4213', N'Ngôn ngữ truy vấn có cấu trúc', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4222', N'Xử lý ngôn ngữ tự nhiên', 2, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4263', N'Nhập môn cơ sở dữ liệu', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4282', N'Mạng máy tính', 2, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4313', N'Lập trình phân tán', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4392', N'Phát triển ứng dụng di động', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4393', N'Phát triển ứng dụng web', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4503', N'Đồ án công nghệ phần mềm', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4583', N'Lập trình hướng đối tượng', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TIN4603', N'Phân tích dữ liệu với ngôn ngữ R', 3, N'HUSC0200')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TLH2012', N'Tâm lý học xã hội', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA1092', N'Phép tính vi tích phân hàm nhiều biến', 2, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA2212', N'Lý thuyết độ đo và tích phân', 2, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA3043', N'Giải tích', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA4092', N'Đại số tuyến tính', 2, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA4153', N'Quá trình ngẫu nhiên', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA4242', N'Phương trình đạo hàm riêng', 2, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA4253', N'Lập trình trên ngôn ngữ hình thức', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOA4343', N'Mô hình phân tích và định giá tài sản', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOK2012', N'Xác suất thống kê', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOK2063', N'Kinh tế vĩ mô', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOK4012', N'Khai phá dữ liệu thống kê', 2, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOQ2013', N'Nhập môn khoa học dữ liệu', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TOQ3023', N'Phân tích hồi quy và mô hình dự báo', 3, N'HUSC0100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRD3043', N'Môi trường trong trắc địa và đánh giá tác động môi trường', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRD3063', N'Bản đồ số và độ chính xác bản đồ', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRD3173', N'Phương pháp nghiên cứu khoa học trong trắc địa - bản đồ', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRD5013', N'Quản lý dự án trắc địa', 3, N'HUSC0600')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI1014', N'Triết học Mác - Lênin', 4, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI2013', N'Lôgíc hình thức', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI3082', N'Sự ra đời và phát triển của triết học Mác-Lênin', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI3143', N'Lịch sử triết học Tây Âu phục hưng - cận đại', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4032', N'Lịch sử triết học phương Tây cổ trung đại', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4042', N'Một số tác phẩm triết học của Mác, Ăngghen, Lênin 1', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4053', N'Lịch sử triết học phương Đông', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4093', N'Đạo đức học đại cương', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4103', N'Cơ sở khoa học của con đường đi lên chủ nghĩa xã hội ở Việt Nam', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4113', N'Cách mạng khoa học kỹ thuật và lực lượng sản xuất hiện đại', 3, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'TRI4252', N'Triết học với sự nghiệp đổi mới ở Việt Nam', 2, N'HUSC1100')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN3012', N'Lý luận văn học', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN3053', N'Văn hóa Huế', 3, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN3252', N'Ngôn ngữ báo chí và ngôn ngữ văn chương', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN3272', N'Văn học Việt Nam 1930-1945', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN4102', N'Sự vận động của thi pháp văn học Việt Nam từ trung đại đến hiện đại', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN4152', N'Phê bình tác phẩm nghệ thuật trên báo chí', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN4192', N'Các hướng tiếp cận tác phẩm văn học trong chương trình phổ thông', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN4272', N'Thị trường sách văn học ở Việt Nam', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN4312', N'Nghiên cứu văn học Mỹ từ lý thuyết phê bình luân lý học văn học', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN5022', N'Tiểu thuyết Việt Nam hiện đại', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN5062', N'Văn học hậu hiện đại', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VAN5092', N'Văn học Việt Nam đại cương', 2, N'HUSC0900')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VLY1023', N'Vật lý đại cương', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VLY2023', N'Nhiệt học', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VLY3063', N'Vật lý chất rắn', 3, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VLY4202', N'Cấu trúc phổ nguyên tử', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'VLY4232', N'Vật lý phát quang', 2, N'HUSC0300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH3063', N'Anh văn chuyên ngành', 3, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4032', N'Xã hội học Văn hoá', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4033', N'Xã hội học nông thôn', 3, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4062', N'Xã hội học Giới và phát triển', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4103', N'Dự án nghiên cứu xã hội', 3, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4172', N'Xã hội học nông thôn và đô thị', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4192', N'Xã hội học Giáo dục', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4242', N'Giáo dục giới tính và định hướng sức khỏe vị thành niên', 2, N'HUSC1300')
GO
INSERT [dbo].[HocPhan] ([MaHocPhan], [TenHocPhan], [SoTinChi], [MaDonVi]) VALUES (N'XHH4332', N'Dự án xã hội và quản lý dự án xã hội', 2, N'HUSC1300')
GO
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc], [NamTuyenSinh]) VALUES (N'K44', N'Khóa 44', 2020)
GO
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc], [NamTuyenSinh]) VALUES (N'K45', N'Khóa 45', 2021)
GO
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc], [NamTuyenSinh]) VALUES (N'K46', N'Khóa 46', 2022)
GO
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc], [NamTuyenSinh]) VALUES (N'K47', N'Khóa 47', 2023)
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7229010')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7229030')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7440112')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7440301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7480107')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7480201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K44', N'7580211')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7229010')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7229030')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7310301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7420201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7440112')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7440301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7480107')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7480201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7580101')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K45', N'7580211')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7229010')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7229030')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7310301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7420201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7440112')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7440301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7480107')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7480201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7510302')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7580101')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K46', N'7580211')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7229010')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7310205')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7310301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7320109')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7420201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7440112')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7440301')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7480107')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7480201')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7510302')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7580101')
GO
INSERT [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh]) VALUES (N'K47', N'7580211')
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.DCH2042.01', N'Thạch học đá magma (Nhóm 1)', N'DCH2042', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.DCH3272.01', N'Cơ sở tuyển khoáng (Nhóm 1)', N'DCH3272', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.DCT2013.01', N'Môi trường địa chất và đánh giá tác động môi trường (Nhóm 1)', N'DCT2013', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.DPH3142.01', N'Lịch sử - văn hóa phương Tây đại cương (Nhóm 1)', N'DPH3142', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.DPH3153.01', N'Các tôn giáo trên thế giới (Nhóm 1)', N'DPH3153', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.HAN3063.01', N'Văn bản học Hán Nôm (Nhóm 1)', N'HAN3063', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.HAN4023.01', N'Hán văn thời Lê (Nhóm 1)', N'HAN4023', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.HAN4052.01', N'Luận ngữ (Nhóm 1)', N'HAN4052', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.HOA3073.01', N'Hóa học phân tích 2 (Nhóm 1)', N'HOA3073', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.HOA3112.01', N'Hóa sinh (Nhóm 1)', N'HOA3112', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.HOA3192.01', N'Phân tích cấu trúc vật liệu (Nhóm 1)', N'HOA3192', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.MTK2012.01', N'Vi sinh môi trường (Nhóm 1)', N'MTK2012', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.MTK3023.01', N'Độc học và sức khỏe môi trường (Nhóm 1)', N'MTK3023', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.MTK4062.01', N'Kỹ thuật xử lý ô nhiễm đất (Nhóm 1)', N'MTK4062', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN1093.01', N'Nhập môn lập trình (Nhóm 1)', N'TIN1093', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN1093.02', N'Nhập môn lập trình (Nhóm 2)', N'TIN1093', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN1103.01', N'Lập trình Python (Nhóm 1)', N'TIN1103', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN1103.02', N'Lập trình Python (Nhóm 2)', N'TIN1103', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN3013.01', N'Lập trình nâng cao (Nhóm 1)', N'TIN3013', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN3013.02', N'Lập trình nâng cao (Nhóm 2)', N'TIN3013', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN3072.01', N'Các hệ quản trị cơ sở dữ liệu (Nhóm 1)', N'TIN3072', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TIN3072.02', N'Các hệ quản trị cơ sở dữ liệu (Nhóm 2)', N'TIN3072', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TOA1092.01', N'Phép tính vi tích phân hàm nhiều biến (Nhóm 1)', N'TOA1092', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TOA2212.01', N'Lý thuyết độ đo và tích phân (Nhóm 1)', N'TOA2212', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.1.TOA3043.01', N'Giải tích (Nhóm 1)', N'TOA3043', 1, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.DCT3142.01', N'Công trình xây dựng (Nhóm 1)', N'DCT3142', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.DKX2012.01', N'Đồ án địa chất công trình (Nhóm 1)', N'DKX2012', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.DKX2013.01', N'Vật liệu xây dựng (Nhóm 1)', N'DKX2013', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.DPH3182.01', N'Văn hóa phương Tây đại cương (Nhóm 1)', N'DPH3182', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.DPH3192.01', N'Một số vấn đề lễ tân và ngoại giao (Nhóm 1)', N'DPH3192', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.HAN4242.01', N'Phân tích văn bản chữ Nôm (Nhóm 1)', N'HAN4242', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.HAN5052.01', N'Văn bản học Hán Nôm (Nhóm 1)', N'HAN5052', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.HOA4102.01', N'Các phương pháp tách (Nhóm 1)', N'HOA4102', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.HOA4252.01', N'Kỹ thuật các quá trình dị thể (Nhóm 1)', N'HOA4252', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.HOA4272.01', N'Kỹ thuật tổng hợp hữu cơ và hóa dầu (Nhóm 1)', N'HOA4272', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.MTK4072.01', N'Kỹ thuật lò đốt chất thải (Nhóm 1)', N'MTK4072', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.MTK4122.01', N'Xử lý nước thải công nghiệp (Nhóm 1)', N'MTK4122', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.NNH5013.01', N'Văn học Việt Nam trung đại (Nhóm 1)', N'NNH5013', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN3084.01', N'Cấu trúc dữ liệu và thuật toán (Nhóm 1)', N'TIN3084', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN3084.02', N'Cấu trúc dữ liệu và thuật toán (Nhóm 2)', N'TIN3084', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN3102.01', N'Kỹ nghệ phần mềm (Nhóm 1)', N'TIN3102', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN3102.02', N'Kỹ nghệ phần mềm (Nhóm 2)', N'TIN3102', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN3393.01', N'Java cơ bản (Nhóm 1)', N'TIN3393', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN3393.02', N'Java cơ bản (Nhóm 2)', N'TIN3393', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN4024.01', N'Phát triển ứng dụng IoT (Nhóm 1)', N'TIN4024', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TIN4024.02', N'Phát triển ứng dụng IoT (Nhóm 2)', N'TIN4024', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TOA4092.01', N'Đại số tuyến tính (Nhóm 1)', N'TOA4092', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2020-2021.2.TOA4153.01', N'Quá trình ngẫu nhiên (Nhóm 1)', N'TOA4153', 2, N'2020-2021', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.CNS3022.01', N'Sinh học biển (Nhóm 1)', N'CNS3022', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.CNS4022.01', N'Công nghệ chuyển gen (Nhóm 1)', N'CNS4022', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.CNS4133.01', N'Cơ sở dữ liệu sinh học (Nhóm 1)', N'CNS4133', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.CTX3032.01', N'Sức khoẻ cộng đồng (Nhóm 1)', N'CTX3032', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.CTX3083.01', N'Nhập môn công tác xã hội (Nhóm 1)', N'CTX3083', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.CTX4022.01', N'Phương pháp công tác xã hội (Nhóm 1)', N'CTX4022', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DKX3062.01', N'Địa mạo ứng dụng (Nhóm 1)', N'DKX3062', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DLY1012.01', N'Ðịa lý học đại cương (Nhóm 1)', N'DLY1012', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DLY1023.01', N'Địa lý tự nhiên Việt Nam (Nhóm 1)', N'DLY1023', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DPH3142.01', N'Lịch sử - văn hóa phương Tây đại cương (Nhóm 1)', N'DPH3142', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DPH3153.01', N'Các tôn giáo trên thế giới (Nhóm 1)', N'DPH3153', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DPH4012.01', N'Một số vấn đề về lịch sử - văn hoá Indonesia (Nhóm 1)', N'DPH4012', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.DPH4113.01', N'Tiếng Anh chuyên đề_Lịch sử - văn hóa Đông Nam Á (Nhóm 1)', N'DPH4113', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HAN3063.01', N'Văn bản học Hán Nôm (Nhóm 1)', N'HAN3063', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HAN4023.01', N'Hán văn thời Lê (Nhóm 1)', N'HAN4023', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HAN4052.01', N'Luận ngữ (Nhóm 1)', N'HAN4052', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HOA3073.01', N'Hóa học phân tích 2 (Nhóm 1)', N'HOA3073', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HOA3112.01', N'Hóa sinh (Nhóm 1)', N'HOA3112', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HOA3192.01', N'Phân tích cấu trúc vật liệu (Nhóm 1)', N'HOA3192', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HOA4452.01', N'Hoá môi trường nước (Nhóm 1)', N'HOA4452', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.HOA4552.01', N'Kỹ thuật nghiên cứu xúc tác trong chế biến dầu mỏ (Nhóm 1)', N'HOA4552', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.KQH1013.01', N'Hình học họa hình (Nhóm 1)', N'KQH1013', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.KQH1042.01', N'Bố cục không gian, nghệ thuật sắp đặt (Nhóm 1)', N'KQH1042', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.KQH2042.01', N'Lịch sử đô thị (Nhóm 1)', N'KQH2042', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.KQH3052.01', N'Thiết kế đô thị (Nhóm 1)', N'KQH3052', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.MTK2012.01', N'Vi sinh môi trường (Nhóm 1)', N'MTK2012', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.MTK3023.01', N'Độc học và sức khỏe môi trường (Nhóm 1)', N'MTK3023', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.MTK4062.01', N'Kỹ thuật xử lý ô nhiễm đất (Nhóm 1)', N'MTK4062', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.MTR3063.01', N'Quản trị các dự án tài nguyên và môi trường (Nhóm 1)', N'MTR3063', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.MTR3102.01', N'Thống kê ứng dụng trong môi trường (Nhóm 1)', N'MTR3102', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN1093.01', N'Nhập môn lập trình (Nhóm 1)', N'TIN1093', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN1093.02', N'Nhập môn lập trình (Nhóm 2)', N'TIN1093', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN1103.01', N'Lập trình Python (Nhóm 1)', N'TIN1103', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN1103.02', N'Lập trình Python (Nhóm 2)', N'TIN1103', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN3013.01', N'Lập trình nâng cao (Nhóm 1)', N'TIN3013', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN3013.02', N'Lập trình nâng cao (Nhóm 2)', N'TIN3013', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN3072.01', N'Các hệ quản trị cơ sở dữ liệu (Nhóm 1)', N'TIN3072', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN3072.02', N'Các hệ quản trị cơ sở dữ liệu (Nhóm 2)', N'TIN3072', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4052.01', N'Hệ hỗ trợ quyết định (Nhóm 1)', N'TIN4052', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4052.02', N'Hệ hỗ trợ quyết định (Nhóm 2)', N'TIN4052', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4153.01', N'Lập trình mạng (Nhóm 1)', N'TIN4153', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4153.02', N'Lập trình mạng (Nhóm 2)', N'TIN4153', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4183.01', N'Kiểm định phần mềm (Nhóm 1)', N'TIN4183', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4183.02', N'Kiểm định phần mềm (Nhóm 2)', N'TIN4183', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4213.01', N'Ngôn ngữ truy vấn có cấu trúc (Nhóm 1)', N'TIN4213', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TIN4213.02', N'Ngôn ngữ truy vấn có cấu trúc (Nhóm 2)', N'TIN4213', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TOA1092.01', N'Phép tính vi tích phân hàm nhiều biến (Nhóm 1)', N'TOA1092', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TOA2212.01', N'Lý thuyết độ đo và tích phân (Nhóm 1)', N'TOA2212', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TOA3043.01', N'Giải tích (Nhóm 1)', N'TOA3043', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TOA4242.01', N'Phương trình đạo hàm riêng (Nhóm 1)', N'TOA4242', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.TOA4253.01', N'Lập trình trên ngôn ngữ hình thức (Nhóm 1)', N'TOA4253', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.VAN3012.01', N'Lý luận văn học (Nhóm 1)', N'VAN3012', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.VAN3053.01', N'Văn hóa Huế (Nhóm 1)', N'VAN3053', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.1.VAN3252.01', N'Ngôn ngữ báo chí và ngôn ngữ văn chương (Nhóm 1)', N'VAN3252', 1, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.CTX4033.01', N'Công tác xã hội với nhóm (Nhóm 1)', N'CTX4033', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.CTX4044.01', N'Dịch vụ công tác xã hội tại cộng đồng và các cơ sở trợ giúp xã hội (Nhóm 1)', N'CTX4044', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.CTX4094.01', N'Các phương pháp giao tiếp thay thế và hỗ trợ (Nhóm 1)', N'CTX4094', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.DLY3052.01', N'Cơ sở thổ nhưỡng và địa lý thổ nhưỡng (Nhóm 1)', N'DLY3052', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.DLY3162.01', N'Quy hoạch sử dụng đất (Nhóm 1)', N'DLY3162', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.DPH3182.01', N'Văn hóa phương Tây đại cương (Nhóm 1)', N'DPH3182', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.DPH3192.01', N'Một số vấn đề lễ tân và ngoại giao (Nhóm 1)', N'DPH3192', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HAN4242.01', N'Phân tích văn bản chữ Nôm (Nhóm 1)', N'HAN4242', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HAN5052.01', N'Văn bản học Hán Nôm (Nhóm 1)', N'HAN5052', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HOA4102.01', N'Các phương pháp tách (Nhóm 1)', N'HOA4102', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HOA4252.01', N'Kỹ thuật các quá trình dị thể (Nhóm 1)', N'HOA4252', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HOA4272.01', N'Kỹ thuật tổng hợp hữu cơ và hóa dầu (Nhóm 1)', N'HOA4272', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HOC1022.01', N'Kỹ thuật nhiệt (Nhóm 1)', N'HOC1022', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.HOC3142.01', N'Một số phương pháp hóa lý phân tích vật liệu rắn (Nhóm 1)', N'HOC3142', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.KQH3062.01', N'Quy hoạch xây dựng nông thôn (Nhóm 1)', N'KQH3062', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.KQH3182.01', N'Nghệ thuật hoa viên (Nhóm 1)', N'KQH3182', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.KQH4042.01', N'Quy hoạch hạ tầng kỹ thuật đô thị (Nhóm 1)', N'KQH4042', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.LIS3292.01', N'Lịch sử Thế giới cổ trung đại II (Nhóm 1)', N'LIS3292', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.LIS3322.01', N'Sử liệu học (Nhóm 1)', N'LIS3322', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.MTK4072.01', N'Kỹ thuật lò đốt chất thải (Nhóm 1)', N'MTK4072', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.MTK4122.01', N'Xử lý nước thải công nghiệp (Nhóm 1)', N'MTK4122', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.MTR3132.01', N'Sản xuất sạch hơn (Nhóm 1)', N'MTR3132', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.MTR4022.01', N'Kỹ thuật xử lý nước thải (Nhóm 1)', N'MTR4022', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.NNH5013.01', N'Văn học Việt Nam trung đại (Nhóm 1)', N'NNH5013', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.QTM2072.01', N'Thiết kế và biên tập bản đồ tài nguyên và môi trường (Nhóm 1)', N'QTM2072', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.SIK3012.01', N'Các nguyên lý và quá trình sinh học (Nhóm 1)', N'SIK3012', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.SIK3023.01', N'Kỹ thuật di truyền (Nhóm 1)', N'SIK3023', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.SIK4052.01', N'Dược sinh học (Nhóm 1)', N'SIK4052', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN3084.01', N'Cấu trúc dữ liệu và thuật toán (Nhóm 1)', N'TIN3084', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN3084.02', N'Cấu trúc dữ liệu và thuật toán (Nhóm 2)', N'TIN3084', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN3102.01', N'Kỹ nghệ phần mềm (Nhóm 1)', N'TIN3102', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN3102.02', N'Kỹ nghệ phần mềm (Nhóm 2)', N'TIN3102', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN3393.01', N'Java cơ bản (Nhóm 1)', N'TIN3393', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN3393.02', N'Java cơ bản (Nhóm 2)', N'TIN3393', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4024.01', N'Phát triển ứng dụng IoT (Nhóm 1)', N'TIN4024', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4024.02', N'Phát triển ứng dụng IoT (Nhóm 2)', N'TIN4024', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4222.01', N'Xử lý ngôn ngữ tự nhiên (Nhóm 1)', N'TIN4222', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4222.02', N'Xử lý ngôn ngữ tự nhiên (Nhóm 2)', N'TIN4222', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4263.01', N'Nhập môn cơ sở dữ liệu (Nhóm 1)', N'TIN4263', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4263.02', N'Nhập môn cơ sở dữ liệu (Nhóm 2)', N'TIN4263', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4282.01', N'Mạng máy tính (Nhóm 1)', N'TIN4282', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TIN4282.02', N'Mạng máy tính (Nhóm 2)', N'TIN4282', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TOA4092.01', N'Đại số tuyến tính (Nhóm 1)', N'TOA4092', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TOA4153.01', N'Quá trình ngẫu nhiên (Nhóm 1)', N'TOA4153', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TOA4343.01', N'Mô hình phân tích và định giá tài sản (Nhóm 1)', N'TOA4343', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.TOK2012.01', N'Xác suất thống kê (Nhóm 1)', N'TOK2012', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.VAN3272.01', N'Văn học Việt Nam 1930-1945 (Nhóm 1)', N'VAN3272', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.VAN4102.01', N'Sự vận động của thi pháp văn học Việt Nam từ trung đại đến hiện đại (Nhóm 1)', N'VAN4102', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2021-2022.2.VAN4152.01', N'Phê bình tác phẩm nghệ thuật trên báo chí (Nhóm 1)', N'VAN4152', 2, N'2021-2022', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CNS3022.01', N'Sinh học biển (Nhóm 1)', N'CNS3022', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CNS4022.01', N'Công nghệ chuyển gen (Nhóm 1)', N'CNS4022', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CNS4133.01', N'Cơ sở dữ liệu sinh học (Nhóm 1)', N'CNS4133', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CTX3032.01', N'Sức khoẻ cộng đồng (Nhóm 1)', N'CTX3032', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CTX3083.01', N'Nhập môn công tác xã hội (Nhóm 1)', N'CTX3083', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CTX4022.01', N'Phương pháp công tác xã hội (Nhóm 1)', N'CTX4022', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CTX4222.01', N'Công tác xã hội với người khuyết tật (Nhóm 1)', N'CTX4222', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.CTX4262.01', N'Công tác xã hội với gia đình (Nhóm 1)', N'CTX4262', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DCH2042.01', N'Thạch học đá magma (Nhóm 1)', N'DCH2042', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DCH3272.01', N'Cơ sở tuyển khoáng (Nhóm 1)', N'DCH3272', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DCT2013.01', N'Môi trường địa chất và đánh giá tác động môi trường (Nhóm 1)', N'DCT2013', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DPH3142.01', N'Lịch sử - văn hóa phương Tây đại cương (Nhóm 1)', N'DPH3142', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DPH3153.01', N'Các tôn giáo trên thế giới (Nhóm 1)', N'DPH3153', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DPH4012.01', N'Một số vấn đề về lịch sử - văn hoá Indonesia (Nhóm 1)', N'DPH4012', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DPH4113.01', N'Tiếng Anh chuyên đề_Lịch sử - văn hóa Đông Nam Á (Nhóm 1)', N'DPH4113', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DTV2012.01', N'Thiết kế mạch in (Nhóm 1)', N'DTV2012', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DTV2082.01', N'Lý thuyết trường điện từ (Nhóm 1)', N'DTV2082', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.DTV3013.01', N'Đo lường điện tử viễn thông (Nhóm 1)', N'DTV3013', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HAN3063.01', N'Văn bản học Hán Nôm (Nhóm 1)', N'HAN3063', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HAN4023.01', N'Hán văn thời Lê (Nhóm 1)', N'HAN4023', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HAN4052.01', N'Luận ngữ (Nhóm 1)', N'HAN4052', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOA3073.01', N'Hóa học phân tích 2 (Nhóm 1)', N'HOA3073', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOA3112.01', N'Hóa sinh (Nhóm 1)', N'HOA3112', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOA3192.01', N'Phân tích cấu trúc vật liệu (Nhóm 1)', N'HOA3192', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOA4452.01', N'Hoá môi trường nước (Nhóm 1)', N'HOA4452', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOA4552.01', N'Kỹ thuật nghiên cứu xúc tác trong chế biến dầu mỏ (Nhóm 1)', N'HOA4552', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOC4013.01', N'Thiết bị nhiệt (Nhóm 1)', N'HOC4013', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.HOC4033.01', N'Hóa lý silicate 2 (Nhóm 1)', N'HOC4033', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KQH1013.01', N'Hình học họa hình (Nhóm 1)', N'KQH1013', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KQH1042.01', N'Bố cục không gian, nghệ thuật sắp đặt (Nhóm 1)', N'KQH1042', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KQH2042.01', N'Lịch sử đô thị (Nhóm 1)', N'KQH2042', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KQH3052.01', N'Thiết kế đô thị (Nhóm 1)', N'KQH3052', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KTR2022.01', N'Sức bền vật liệu (Nhóm 1)', N'KTR2022', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KTR2063.01', N'Thi công công trình (Nhóm 1)', N'KTR2063', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.KTR2073.01', N'Kỹ thuật đô thị (Nhóm 1)', N'KTR2073', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.LIS4122.01', N'Một số vấn đề về lịch sử Trung Quốc (Nhóm 1)', N'LIS4122', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.LIS4222.01', N'Các tộc người trên thế giới (Nhóm 1)', N'LIS4222', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTK2012.01', N'Vi sinh môi trường (Nhóm 1)', N'MTK2012', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTK3023.01', N'Độc học và sức khỏe môi trường (Nhóm 1)', N'MTK3023', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTK4062.01', N'Kỹ thuật xử lý ô nhiễm đất (Nhóm 1)', N'MTK4062', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTR3063.01', N'Quản trị các dự án tài nguyên và môi trường (Nhóm 1)', N'MTR3063', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTR3102.01', N'Thống kê ứng dụng trong môi trường (Nhóm 1)', N'MTR3102', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTR4232.01', N'Quan trắc và đánh giá các hệ sinh thái (Nhóm 1)', N'MTR4232', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.MTR4282.01', N'Kiểm soát ô nhiễm không khí đô thị và khu công nghiệp (Nhóm 1)', N'MTR4282', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.QTM3142.01', N'Phát triển, quản lý và sử dụng nguồn nhân lực (Nhóm 1)', N'QTM3142', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.QTM4083.01', N'Quản lý tài nguyên và môi trường nước (Nhóm 1)', N'QTM4083', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.SIK4073.01', N'Công nghệ sản xuất vaccine (Nhóm 1)', N'SIK4073', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.SIK4092.01', N'Kỹ thuật nuôi cấy mô tế bào động vật (Nhóm 1)', N'SIK4092', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.SIN2032.01', N'Sinh học phát triển (Nhóm 1)', N'SIN2032', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN1093.01', N'Nhập môn lập trình (Nhóm 1)', N'TIN1093', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN1093.02', N'Nhập môn lập trình (Nhóm 2)', N'TIN1093', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN1103.01', N'Lập trình Python (Nhóm 1)', N'TIN1103', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN1103.02', N'Lập trình Python (Nhóm 2)', N'TIN1103', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN3013.01', N'Lập trình nâng cao (Nhóm 1)', N'TIN3013', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN3013.02', N'Lập trình nâng cao (Nhóm 2)', N'TIN3013', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN3072.01', N'Các hệ quản trị cơ sở dữ liệu (Nhóm 1)', N'TIN3072', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN3072.02', N'Các hệ quản trị cơ sở dữ liệu (Nhóm 2)', N'TIN3072', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4052.01', N'Hệ hỗ trợ quyết định (Nhóm 1)', N'TIN4052', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4052.02', N'Hệ hỗ trợ quyết định (Nhóm 2)', N'TIN4052', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4153.01', N'Lập trình mạng (Nhóm 1)', N'TIN4153', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4153.02', N'Lập trình mạng (Nhóm 2)', N'TIN4153', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4183.01', N'Kiểm định phần mềm (Nhóm 1)', N'TIN4183', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4183.02', N'Kiểm định phần mềm (Nhóm 2)', N'TIN4183', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4213.01', N'Ngôn ngữ truy vấn có cấu trúc (Nhóm 1)', N'TIN4213', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4213.02', N'Ngôn ngữ truy vấn có cấu trúc (Nhóm 2)', N'TIN4213', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4313.01', N'Lập trình phân tán (Nhóm 1)', N'TIN4313', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4313.02', N'Lập trình phân tán (Nhóm 2)', N'TIN4313', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4392.01', N'Phát triển ứng dụng di động (Nhóm 1)', N'TIN4392', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4392.02', N'Phát triển ứng dụng di động (Nhóm 2)', N'TIN4392', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4393.01', N'Phát triển ứng dụng web (Nhóm 1)', N'TIN4393', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TIN4393.02', N'Phát triển ứng dụng web (Nhóm 2)', N'TIN4393', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TLH2012.01', N'Tâm lý học xã hội (Nhóm 1)', N'TLH2012', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOA1092.01', N'Phép tính vi tích phân hàm nhiều biến (Nhóm 1)', N'TOA1092', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOA2212.01', N'Lý thuyết độ đo và tích phân (Nhóm 1)', N'TOA2212', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOA3043.01', N'Giải tích (Nhóm 1)', N'TOA3043', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOA4242.01', N'Phương trình đạo hàm riêng (Nhóm 1)', N'TOA4242', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOA4253.01', N'Lập trình trên ngôn ngữ hình thức (Nhóm 1)', N'TOA4253', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOK2063.01', N'Kinh tế vĩ mô (Nhóm 1)', N'TOK2063', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TOK4012.01', N'Khai phá dữ liệu thống kê (Nhóm 1)', N'TOK4012', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.TRD3043.01', N'Môi trường trong trắc địa và đánh giá tác động môi trường (Nhóm 1)', N'TRD3043', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.VAN3012.01', N'Lý luận văn học (Nhóm 1)', N'VAN3012', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.VAN3053.01', N'Văn hóa Huế (Nhóm 1)', N'VAN3053', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.VAN3252.01', N'Ngôn ngữ báo chí và ngôn ngữ văn chương (Nhóm 1)', N'VAN3252', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.VAN4192.01', N'Các hướng tiếp cận tác phẩm văn học trong chương trình phổ thông (Nhóm 1)', N'VAN4192', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.VAN4272.01', N'Thị trường sách văn học ở Việt Nam (Nhóm 1)', N'VAN4272', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.1.VAN4312.01', N'Nghiên cứu văn học Mỹ từ lý thuyết phê bình luân lý học văn học (Nhóm 1)', N'VAN4312', 1, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.CTX4033.01', N'Công tác xã hội với nhóm (Nhóm 1)', N'CTX4033', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.CTX4044.01', N'Dịch vụ công tác xã hội tại cộng đồng và các cơ sở trợ giúp xã hội (Nhóm 1)', N'CTX4044', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.CTX4094.01', N'Các phương pháp giao tiếp thay thế và hỗ trợ (Nhóm 1)', N'CTX4094', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DCT3142.01', N'Công trình xây dựng (Nhóm 1)', N'DCT3142', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DKX2012.01', N'Đồ án địa chất công trình (Nhóm 1)', N'DKX2012', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DKX2013.01', N'Vật liệu xây dựng (Nhóm 1)', N'DKX2013', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DPH3182.01', N'Văn hóa phương Tây đại cương (Nhóm 1)', N'DPH3182', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DPH3192.01', N'Một số vấn đề lễ tân và ngoại giao (Nhóm 1)', N'DPH3192', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DTV3033.01', N'Xử lí số tín hiệu (Nhóm 1)', N'DTV3033', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DTV3093.01', N'Điện tử ứng dụng (Nhóm 1)', N'DTV3093', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.DTV3132.01', N'Cơ sở kỹ thuật truyền số liệu (Nhóm 1)', N'DTV3132', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HAN4242.01', N'Phân tích văn bản chữ Nôm (Nhóm 1)', N'HAN4242', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HAN5052.01', N'Văn bản học Hán Nôm (Nhóm 1)', N'HAN5052', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOA4102.01', N'Các phương pháp tách (Nhóm 1)', N'HOA4102', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOA4252.01', N'Kỹ thuật các quá trình dị thể (Nhóm 1)', N'HOA4252', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOA4272.01', N'Kỹ thuật tổng hợp hữu cơ và hóa dầu (Nhóm 1)', N'HOA4272', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOC1022.01', N'Kỹ thuật nhiệt (Nhóm 1)', N'HOC1022', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOC3142.01', N'Một số phương pháp hóa lý phân tích vật liệu rắn (Nhóm 1)', N'HOC3142', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOC4103.01', N'Công nghệ sản xuất polymer (Nhóm 1)', N'HOC4103', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.HOC4113.01', N'Công nghệ sản xuất vật liệu chịu lửa (Nhóm 1)', N'HOC4113', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.KQH3062.01', N'Quy hoạch xây dựng nông thôn (Nhóm 1)', N'KQH3062', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.KQH3182.01', N'Nghệ thuật hoa viên (Nhóm 1)', N'KQH3182', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.KQH4042.01', N'Quy hoạch hạ tầng kỹ thuật đô thị (Nhóm 1)', N'KQH4042', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.KTR2082.01', N'Quản lý đô thị (Nhóm 1)', N'KTR2082', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.KTR3033.01', N'Cơ học lý thuyết (Nhóm 1)', N'KTR3033', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.KTR3072.01', N'Kiến trúc nhà công cộng (Nhóm 1)', N'KTR3072', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.LIS3292.01', N'Lịch sử Thế giới cổ trung đại II (Nhóm 1)', N'LIS3292', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.LIS3322.01', N'Sử liệu học (Nhóm 1)', N'LIS3322', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.LIS4442.01', N'Văn hóa vùng và phân vùng văn hóa Việt Nam (Nhóm 1)', N'LIS4442', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.LIS5022.01', N'Các di tích lịch sử - văn hóa và danh thắng Việt Nam (Nhóm 1)', N'LIS5022', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.MTK4072.01', N'Kỹ thuật lò đốt chất thải (Nhóm 1)', N'MTK4072', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.MTK4122.01', N'Xử lý nước thải công nghiệp (Nhóm 1)', N'MTK4122', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.MTR3132.01', N'Sản xuất sạch hơn (Nhóm 1)', N'MTR3132', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.MTR4022.01', N'Kỹ thuật xử lý nước thải (Nhóm 1)', N'MTR4022', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.MTS3013.01', N'Nhập môn an toàn, sức khỏe và môi trường (Nhóm 1)', N'MTS3013', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.MTS4033.01', N'Quản lý an toàn nhiệt, điện và thiết bị (Nhóm 1)', N'MTS4033', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.NNH5013.01', N'Văn học Việt Nam trung đại (Nhóm 1)', N'NNH5013', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.SIK3012.01', N'Các nguyên lý và quá trình sinh học (Nhóm 1)', N'SIK3012', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.SIK3023.01', N'Kỹ thuật di truyền (Nhóm 1)', N'SIK3023', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.SIK4052.01', N'Dược sinh học (Nhóm 1)', N'SIK4052', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.SIN3102.01', N'Quang sinh học (Nhóm 1)', N'SIN3102', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.SIN4282.01', N'Sinh học và sinh thái bò sát (Nhóm 1)', N'SIN4282', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.SIN4482.01', N'Quang hợp và năng suất cây trồng (Nhóm 1)', N'SIN4482', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN3084.01', N'Cấu trúc dữ liệu và thuật toán (Nhóm 1)', N'TIN3084', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN3084.02', N'Cấu trúc dữ liệu và thuật toán (Nhóm 2)', N'TIN3084', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN3102.01', N'Kỹ nghệ phần mềm (Nhóm 1)', N'TIN3102', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN3102.02', N'Kỹ nghệ phần mềm (Nhóm 2)', N'TIN3102', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN3393.01', N'Java cơ bản (Nhóm 1)', N'TIN3393', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN3393.02', N'Java cơ bản (Nhóm 2)', N'TIN3393', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4024.01', N'Phát triển ứng dụng IoT (Nhóm 1)', N'TIN4024', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4024.02', N'Phát triển ứng dụng IoT (Nhóm 2)', N'TIN4024', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4222.01', N'Xử lý ngôn ngữ tự nhiên (Nhóm 1)', N'TIN4222', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4222.02', N'Xử lý ngôn ngữ tự nhiên (Nhóm 2)', N'TIN4222', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4263.01', N'Nhập môn cơ sở dữ liệu (Nhóm 1)', N'TIN4263', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4263.02', N'Nhập môn cơ sở dữ liệu (Nhóm 2)', N'TIN4263', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4282.01', N'Mạng máy tính (Nhóm 1)', N'TIN4282', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4282.02', N'Mạng máy tính (Nhóm 2)', N'TIN4282', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4503.01', N'Đồ án công nghệ phần mềm (Nhóm 1)', N'TIN4503', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4503.02', N'Đồ án công nghệ phần mềm (Nhóm 2)', N'TIN4503', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4583.01', N'Lập trình hướng đối tượng (Nhóm 1)', N'TIN4583', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4583.02', N'Lập trình hướng đối tượng (Nhóm 2)', N'TIN4583', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4603.01', N'Phân tích dữ liệu với ngôn ngữ R (Nhóm 1)', N'TIN4603', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TIN4603.02', N'Phân tích dữ liệu với ngôn ngữ R (Nhóm 2)', N'TIN4603', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TOA4092.01', N'Đại số tuyến tính (Nhóm 1)', N'TOA4092', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TOA4153.01', N'Quá trình ngẫu nhiên (Nhóm 1)', N'TOA4153', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TOA4343.01', N'Mô hình phân tích và định giá tài sản (Nhóm 1)', N'TOA4343', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TOK2012.01', N'Xác suất thống kê (Nhóm 1)', N'TOK2012', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TOQ2013.01', N'Nhập môn khoa học dữ liệu (Nhóm 1)', N'TOQ2013', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TOQ3023.01', N'Phân tích hồi quy và mô hình dự báo (Nhóm 1)', N'TOQ3023', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TRD3063.01', N'Bản đồ số và độ chính xác bản đồ (Nhóm 1)', N'TRD3063', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TRD3173.01', N'Phương pháp nghiên cứu khoa học trong trắc địa - bản đồ (Nhóm 1)', N'TRD3173', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.TRD5013.01', N'Quản lý dự án trắc địa (Nhóm 1)', N'TRD5013', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.VAN3272.01', N'Văn học Việt Nam 1930-1945 (Nhóm 1)', N'VAN3272', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.VAN4102.01', N'Sự vận động của thi pháp văn học Việt Nam từ trung đại đến hiện đại (Nhóm 1)', N'VAN4102', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.VAN4152.01', N'Phê bình tác phẩm nghệ thuật trên báo chí (Nhóm 1)', N'VAN4152', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.VAN5022.01', N'Tiểu thuyết Việt Nam hiện đại (Nhóm 1)', N'VAN5022', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.VAN5062.01', N'Văn học hậu hiện đại (Nhóm 1)', N'VAN5062', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.VAN5092.01', N'Văn học Việt Nam đại cương (Nhóm 1)', N'VAN5092', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.XHH3063.01', N'Anh văn chuyên ngành (Nhóm 1)', N'XHH3063', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.XHH4032.01', N'Xã hội học Văn hoá (Nhóm 1)', N'XHH4032', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan] ([MaLopHocPhan], [TenLopHocPhan], [MaHocPhan], [HocKy], [NamHoc], [HsDiemQTHT]) VALUES (N'2022-2023.2.XHH4033.01', N'Xã hội học nông thôn (Nhóm 1)', N'XHH4033', 2, N'2022-2023', CAST(0.40 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.DCH2042.01', N'HUSC0602', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.DCH3272.01', N'HUSC0604', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.DCT2013.01', N'HUSC0605', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.DPH3142.01', N'HUSC1003', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.DPH3153.01', N'HUSC1005', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.HAN3063.01', N'HUSC0903', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.HAN4023.01', N'HUSC0903', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.HAN4052.01', N'HUSC0904', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.HOA3073.01', N'HUSC0405', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.HOA3112.01', N'HUSC0405', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.HOA3192.01', N'HUSC0402', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.MTK2012.01', N'HUSC0701', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.MTK3023.01', N'HUSC0701', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.MTK4062.01', N'HUSC0708', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN1093.01', N'HUSC0207', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN1093.02', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN1103.01', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN1103.02', N'HUSC0204', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN3013.01', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN3013.02', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN3072.01', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TIN3072.02', N'HUSC0206', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TOA1092.01', N'HUSC0101', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TOA2212.01', N'HUSC0104', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.1.TOA3043.01', N'HUSC0104', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.DCT3142.01', N'HUSC0604', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.DKX2012.01', N'HUSC0603', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.DKX2013.01', N'HUSC0603', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.DPH3182.01', N'HUSC1005', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.DPH3192.01', N'HUSC1004', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.HAN4242.01', N'HUSC0905', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.HAN5052.01', N'HUSC0906', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.HOA4102.01', N'HUSC0406', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.HOA4252.01', N'HUSC0402', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.HOA4272.01', N'HUSC0407', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.MTK4072.01', N'HUSC0701', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.MTK4122.01', N'HUSC0704', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.NNH5013.01', N'HUSC0901', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN3084.01', N'HUSC0205', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN3084.02', N'HUSC0204', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN3102.01', N'HUSC0206', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN3102.02', N'HUSC0202', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN3393.01', N'HUSC0204', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN3393.02', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN4024.01', N'HUSC0202', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TIN4024.02', N'HUSC0206', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TOA4092.01', N'HUSC0101', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2020-2021.2.TOA4153.01', N'HUSC0103', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.CNS3022.01', N'HUSC0505', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.CNS4022.01', N'HUSC0501', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.CNS4133.01', N'HUSC0502', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.CTX3032.01', N'HUSC1303', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.CTX3083.01', N'HUSC1306', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.CTX4022.01', N'HUSC1302', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DKX3062.01', N'HUSC0602', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DLY1012.01', N'HUSC0604', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DLY1023.01', N'HUSC0604', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DPH3142.01', N'HUSC1002', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DPH3153.01', N'HUSC1002', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DPH4012.01', N'HUSC1001', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.DPH4113.01', N'HUSC1001', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HAN3063.01', N'HUSC0901', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HAN4023.01', N'HUSC0906', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HAN4052.01', N'HUSC0904', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HOA3073.01', N'HUSC0402', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HOA3112.01', N'HUSC0402', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HOA3192.01', N'HUSC0402', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HOA4452.01', N'HUSC0401', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.HOA4552.01', N'HUSC0406', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.KQH1013.01', N'HUSC0802', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.KQH1042.01', N'HUSC0807', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.KQH2042.01', N'HUSC0804', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.KQH3052.01', N'HUSC0807', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.MTK2012.01', N'HUSC0704', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.MTK3023.01', N'HUSC0704', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.MTK4062.01', N'HUSC0701', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.MTR3063.01', N'HUSC0706', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.MTR3102.01', N'HUSC0707', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN1093.01', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN1093.02', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN1103.01', N'HUSC0207', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN1103.02', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN3013.01', N'HUSC0204', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN3013.02', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN3072.01', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN3072.02', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4052.01', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4052.02', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4153.01', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4153.02', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4183.01', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4183.02', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4213.01', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TIN4213.02', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TOA1092.01', N'HUSC0104', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TOA2212.01', N'HUSC0105', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TOA3043.01', N'HUSC0104', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TOA4242.01', N'HUSC0102', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.TOA4253.01', N'HUSC0104', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.VAN3012.01', N'HUSC0906', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.VAN3053.01', N'HUSC0903', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.1.VAN3252.01', N'HUSC0902', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.CTX4033.01', N'HUSC1304', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.CTX4044.01', N'HUSC1304', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.CTX4094.01', N'HUSC1304', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.DLY3052.01', N'HUSC0603', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.DLY3162.01', N'HUSC0605', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.DPH3182.01', N'HUSC1002', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.DPH3192.01', N'HUSC1001', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HAN4242.01', N'HUSC0903', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HAN5052.01', N'HUSC0903', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HOA4102.01', N'HUSC0401', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HOA4252.01', N'HUSC0404', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HOA4272.01', N'HUSC0401', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HOC1022.01', N'HUSC0402', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.HOC3142.01', N'HUSC0403', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.KQH3062.01', N'HUSC0806', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.KQH3182.01', N'HUSC0803', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.KQH4042.01', N'HUSC0802', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.LIS3292.01', N'HUSC1002', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.LIS3322.01', N'HUSC1003', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.MTK4072.01', N'HUSC0707', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.MTK4122.01', N'HUSC0706', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.MTR3132.01', N'HUSC0708', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.MTR4022.01', N'HUSC0704', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.NNH5013.01', N'HUSC0901', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.QTM2072.01', N'HUSC0601', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.SIK3012.01', N'HUSC0504', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.SIK3023.01', N'HUSC0505', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.SIK4052.01', N'HUSC0504', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN3084.01', N'HUSC0205', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN3084.02', N'HUSC0206', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN3102.01', N'HUSC0201', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN3102.02', N'HUSC0206', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN3393.01', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN3393.02', N'HUSC0207', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4024.01', N'HUSC0201', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4024.02', N'HUSC0203', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4222.01', N'HUSC0207', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4222.02', N'HUSC0206', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4263.01', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4263.02', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4282.01', N'HUSC0206', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TIN4282.02', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TOA4092.01', N'HUSC0105', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TOA4153.01', N'HUSC0106', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TOA4343.01', N'HUSC0103', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.TOK2012.01', N'HUSC0101', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.VAN3272.01', N'HUSC0903', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.VAN4102.01', N'HUSC0906', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2021-2022.2.VAN4152.01', N'HUSC0905', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CNS3022.01', N'HUSC0501', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CNS4022.01', N'HUSC0501', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CNS4133.01', N'HUSC0505', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CTX3032.01', N'HUSC1306', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CTX3083.01', N'HUSC1305', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CTX4022.01', N'HUSC1303', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CTX4222.01', N'HUSC1301', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.CTX4262.01', N'HUSC1305', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DCH2042.01', N'HUSC0603', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DCH3272.01', N'HUSC0601', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DCT2013.01', N'HUSC0602', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DPH3142.01', N'HUSC1003', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DPH3153.01', N'HUSC1005', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DPH4012.01', N'HUSC1003', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DPH4113.01', N'HUSC1003', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DTV2012.01', N'HUSC0301', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DTV2082.01', N'HUSC0305', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.DTV3013.01', N'HUSC0302', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HAN3063.01', N'HUSC0905', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HAN4023.01', N'HUSC0903', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HAN4052.01', N'HUSC0902', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOA3073.01', N'HUSC0405', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOA3112.01', N'HUSC0406', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOA3192.01', N'HUSC0404', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOA4452.01', N'HUSC0407', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOA4552.01', N'HUSC0403', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOC4013.01', N'HUSC0401', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.HOC4033.01', N'HUSC0405', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KQH1013.01', N'HUSC0805', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KQH1042.01', N'HUSC0802', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KQH2042.01', N'HUSC0804', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KQH3052.01', N'HUSC0806', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KTR2022.01', N'HUSC0801', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KTR2063.01', N'HUSC0806', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.KTR2073.01', N'HUSC0806', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.LIS4122.01', N'HUSC1005', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.LIS4222.01', N'HUSC1005', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTK2012.01', N'HUSC0703', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTK3023.01', N'HUSC0704', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTK4062.01', N'HUSC0703', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTR3063.01', N'HUSC0703', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTR3102.01', N'HUSC0704', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTR4232.01', N'HUSC0703', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.MTR4282.01', N'HUSC0704', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.QTM3142.01', N'HUSC0604', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.QTM4083.01', N'HUSC0601', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.SIK4073.01', N'HUSC0503', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.SIK4092.01', N'HUSC0505', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.SIN2032.01', N'HUSC0503', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN1093.01', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN1093.02', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN1103.01', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN1103.02', N'HUSC0204', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN3013.01', N'HUSC0207', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN3013.02', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN3072.01', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN3072.02', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4052.01', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4052.02', N'HUSC0205', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4153.01', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4153.02', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4183.01', N'HUSC0206', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4183.02', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4213.01', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4213.02', N'HUSC0204', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4313.01', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4313.02', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4392.01', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4392.02', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4393.01', N'HUSC0207', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TIN4393.02', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TLH2012.01', N'HUSC1305', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOA1092.01', N'HUSC0102', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOA2212.01', N'HUSC0104', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOA3043.01', N'HUSC0104', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOA4242.01', N'HUSC0105', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOA4253.01', N'HUSC0103', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOK2063.01', N'HUSC0103', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TOK4012.01', N'HUSC0105', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.TRD3043.01', N'HUSC0603', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.VAN3012.01', N'HUSC0901', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.VAN3053.01', N'HUSC0906', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.VAN3252.01', N'HUSC0906', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.VAN4192.01', N'HUSC0904', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.VAN4272.01', N'HUSC0905', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.1.VAN4312.01', N'HUSC0903', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.CTX4033.01', N'HUSC1304', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.CTX4044.01', N'HUSC1305', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.CTX4094.01', N'HUSC1304', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DCT3142.01', N'HUSC0602', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DKX2012.01', N'HUSC0603', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DKX2013.01', N'HUSC0601', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DPH3182.01', N'HUSC1001', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DPH3192.01', N'HUSC1002', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DTV3033.01', N'HUSC0303', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DTV3093.01', N'HUSC0302', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.DTV3132.01', N'HUSC0303', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HAN4242.01', N'HUSC0903', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HAN5052.01', N'HUSC0901', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOA4102.01', N'HUSC0407', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOA4252.01', N'HUSC0405', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOA4272.01', N'HUSC0401', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOC1022.01', N'HUSC0404', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOC3142.01', N'HUSC0405', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOC4103.01', N'HUSC0407', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.HOC4113.01', N'HUSC0406', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.KQH3062.01', N'HUSC0801', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.KQH3182.01', N'HUSC0802', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.KQH4042.01', N'HUSC0805', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.KTR2082.01', N'HUSC0801', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.KTR3033.01', N'HUSC0802', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.KTR3072.01', N'HUSC0802', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.LIS3292.01', N'HUSC1005', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.LIS3322.01', N'HUSC1004', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.LIS4442.01', N'HUSC1003', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.LIS5022.01', N'HUSC1005', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.MTK4072.01', N'HUSC0701', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.MTK4122.01', N'HUSC0707', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.MTR3132.01', N'HUSC0707', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.MTR4022.01', N'HUSC0704', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.MTS3013.01', N'HUSC0708', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.MTS4033.01', N'HUSC0707', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.NNH5013.01', N'HUSC0905', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.SIK3012.01', N'HUSC0502', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.SIK3023.01', N'HUSC0501', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.SIK4052.01', N'HUSC0501', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.SIN3102.01', N'HUSC0501', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.SIN4282.01', N'HUSC0502', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.SIN4482.01', N'HUSC0502', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN3084.01', N'HUSC0207', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN3084.02', N'HUSC0206', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN3102.01', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN3102.02', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN3393.01', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN3393.02', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4024.01', N'HUSC0202', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4024.02', N'HUSC0202', 60)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4222.01', N'HUSC0201', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4222.02', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4263.01', N'HUSC0203', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4263.02', N'HUSC0205', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4282.01', N'HUSC0203', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4282.02', N'HUSC0204', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4503.01', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4503.02', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4583.01', N'HUSC0207', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4583.02', N'HUSC0202', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4603.01', N'HUSC0201', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TIN4603.02', N'HUSC0204', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TOA4092.01', N'HUSC0102', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TOA4153.01', N'HUSC0101', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TOA4343.01', N'HUSC0103', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TOK2012.01', N'HUSC0101', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TOQ2013.01', N'HUSC0102', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TOQ3023.01', N'HUSC0106', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TRD3063.01', N'HUSC0604', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TRD3173.01', N'HUSC0602', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.TRD5013.01', N'HUSC0601', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.VAN3272.01', N'HUSC0904', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.VAN4102.01', N'HUSC0902', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.VAN4152.01', N'HUSC0902', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.VAN5022.01', N'HUSC0902', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.VAN5062.01', N'HUSC0903', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.VAN5092.01', N'HUSC0906', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.XHH3063.01', N'HUSC1301', 45)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.XHH4032.01', N'HUSC1302', 30)
GO
INSERT [dbo].[LopHocPhan_GiangVien] ([MaLopHocPhan], [MaGiangVien], [SoGioDay]) VALUES (N'2022-2023.2.XHH4033.01', N'HUSC1306', 45)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCH2042.01', N'DHT001017', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCH2042.01', N'DHT001019', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCH2042.01', N'DHT001056', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCH3272.01', N'DHT001017', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCH3272.01', N'DHT001019', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCH3272.01', N'DHT001056', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCT2013.01', N'DHT001017', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCT2013.01', N'DHT001019', CAST(9.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DCT2013.01', N'DHT001056', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001003', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001010', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001043', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001044', CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001049', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001068', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001069', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3142.01', N'DHT001071', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001003', CAST(7.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001010', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001043', CAST(3.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001044', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001049', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001068', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001069', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.DPH3153.01', N'DHT001071', CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN3063.01', N'DHT001006', CAST(2.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN3063.01', N'DHT001015', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN3063.01', N'DHT001067', CAST(10.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN3063.01', N'DHT001072', CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN3063.01', N'DHT001074', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4023.01', N'DHT001006', CAST(3.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4023.01', N'DHT001015', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4023.01', N'DHT001067', CAST(10.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4023.01', N'DHT001072', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4023.01', N'DHT001074', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4052.01', N'DHT001006', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4052.01', N'DHT001015', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4052.01', N'DHT001067', CAST(9.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4052.01', N'DHT001072', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HAN4052.01', N'DHT001074', CAST(10.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001005', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001008', CAST(7.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001040', CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001047', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001048', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001061', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3073.01', N'DHT001078', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001005', CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001008', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001040', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001047', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001048', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001061', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3112.01', N'DHT001078', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001005', CAST(9.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001008', CAST(9.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001040', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001047', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001048', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001061', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.HOA3192.01', N'DHT001078', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK2012.01', N'DHT001002', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK2012.01', N'DHT001014', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK2012.01', N'DHT001033', CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK2012.01', N'DHT001045', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK2012.01', N'DHT001050', CAST(10.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK2012.01', N'DHT001055', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK3023.01', N'DHT001002', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK3023.01', N'DHT001014', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK3023.01', N'DHT001033', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK3023.01', N'DHT001045', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK3023.01', N'DHT001050', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK3023.01', N'DHT001055', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK4062.01', N'DHT001002', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK4062.01', N'DHT001014', CAST(4.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK4062.01', N'DHT001033', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK4062.01', N'DHT001045', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK4062.01', N'DHT001050', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.MTK4062.01', N'DHT001055', CAST(7.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001001', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001004', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001016', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001022', CAST(6.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001023', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001025', CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001027', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001034', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001036', CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001037', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001039', CAST(8.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001041', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001051', CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001057', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001058', CAST(6.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001060', CAST(0.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001073', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.01', N'DHT001077', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001009', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001011', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001012', CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001013', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001018', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001020', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001031', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001038', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001042', CAST(2.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001046', CAST(7.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001052', CAST(8.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001059', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001065', CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001070', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001076', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1093.02', N'DHT001079', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001001', CAST(5.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001004', CAST(1.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001012', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001016', CAST(4.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001018', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001020', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001025', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001031', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001034', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001038', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001039', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001046', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001052', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001057', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001058', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001060', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001065', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.01', N'DHT001079', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001009', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001011', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001013', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001022', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001023', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001027', CAST(8.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001036', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001037', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001041', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001042', CAST(5.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001051', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001059', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001070', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001073', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001076', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN1103.02', N'DHT001077', CAST(5.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001011', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001012', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001013', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001031', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001034', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001036', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001037', CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001039', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001041', CAST(4.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001042', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001051', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001052', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001058', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001059', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001065', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001073', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001076', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.01', N'DHT001077', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001001', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001004', CAST(5.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001009', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001016', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001018', CAST(10.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001020', CAST(6.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001022', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001023', CAST(3.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001025', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001027', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001038', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001046', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001057', CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001060', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001070', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3013.02', N'DHT001079', CAST(8.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001001', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001011', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001020', CAST(5.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001022', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001023', CAST(6.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001025', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001031', CAST(5.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001036', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001037', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001039', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001041', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001042', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001046', CAST(5.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001051', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001052', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001058', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001076', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.01', N'DHT001077', CAST(0.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001004', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001009', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001012', CAST(9.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001013', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001016', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001018', CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001027', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001034', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001038', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001057', CAST(8.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001059', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001060', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001065', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001070', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001073', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TIN3072.02', N'DHT001079', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA1092.01', N'DHT001026', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA1092.01', N'DHT001028', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA1092.01', N'DHT001053', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA1092.01', N'DHT001063', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA2212.01', N'DHT001026', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA2212.01', N'DHT001028', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA2212.01', N'DHT001053', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA2212.01', N'DHT001063', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA3043.01', N'DHT001026', CAST(5.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA3043.01', N'DHT001028', CAST(4.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA3043.01', N'DHT001053', CAST(5.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.1.TOA3043.01', N'DHT001063', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DCT3142.01', N'DHT001017', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DCT3142.01', N'DHT001019', CAST(6.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DCT3142.01', N'DHT001056', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DKX2012.01', N'DHT001017', CAST(4.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DKX2012.01', N'DHT001019', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DKX2012.01', N'DHT001056', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DKX2013.01', N'DHT001017', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DKX2013.01', N'DHT001019', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DKX2013.01', N'DHT001056', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001003', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001010', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001043', CAST(0.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001044', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001049', CAST(7.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001068', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001069', CAST(7.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3182.01', N'DHT001071', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001003', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001010', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001043', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001044', CAST(9.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001049', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001068', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001069', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.DPH3192.01', N'DHT001071', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN4242.01', N'DHT001006', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN4242.01', N'DHT001015', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN4242.01', N'DHT001067', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN4242.01', N'DHT001072', CAST(3.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN4242.01', N'DHT001074', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN5052.01', N'DHT001006', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN5052.01', N'DHT001015', CAST(4.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN5052.01', N'DHT001067', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN5052.01', N'DHT001072', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HAN5052.01', N'DHT001074', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001005', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001008', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001040', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001047', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001048', CAST(8.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001061', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4102.01', N'DHT001078', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001005', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001008', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001040', CAST(8.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001047', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001048', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001061', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4252.01', N'DHT001078', CAST(5.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001005', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001008', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001040', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001047', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001048', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001061', CAST(8.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.HOA4272.01', N'DHT001078', CAST(9.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4072.01', N'DHT001002', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4072.01', N'DHT001014', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4072.01', N'DHT001033', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4072.01', N'DHT001045', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4072.01', N'DHT001050', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4072.01', N'DHT001055', CAST(6.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4122.01', N'DHT001002', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4122.01', N'DHT001014', CAST(4.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4122.01', N'DHT001033', CAST(5.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4122.01', N'DHT001045', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4122.01', N'DHT001050', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.MTK4122.01', N'DHT001055', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.NNH5013.01', N'DHT001006', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.NNH5013.01', N'DHT001015', CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.NNH5013.01', N'DHT001067', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.NNH5013.01', N'DHT001072', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.NNH5013.01', N'DHT001074', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001009', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001011', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001012', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001013', CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001020', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001022', CAST(6.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001025', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001031', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001036', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001037', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001039', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001042', CAST(3.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001046', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001059', CAST(5.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001060', CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001065', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001076', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.01', N'DHT001077', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001001', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001004', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001016', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001018', CAST(5.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001023', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001027', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001034', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001038', CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001041', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001051', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001052', CAST(3.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001057', CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001058', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001070', CAST(2.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001073', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3084.02', N'DHT001079', CAST(6.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001009', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001011', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001012', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001016', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001018', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001022', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001023', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001036', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001037', CAST(10.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001042', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001046', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001058', CAST(9.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001059', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001060', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001065', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001076', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001077', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.01', N'DHT001079', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001001', CAST(1.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001004', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001013', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001020', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001025', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001027', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001031', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001034', CAST(6.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001038', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001039', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001041', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001051', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001052', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001057', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001070', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3102.02', N'DHT001073', CAST(7.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001001', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001012', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001022', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001025', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001034', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001037', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001038', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001042', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001046', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001052', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001057', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001058', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001059', CAST(0.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001060', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001065', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001073', CAST(8.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001076', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.01', N'DHT001079', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001004', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001009', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001011', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001013', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001016', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001018', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001020', CAST(9.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001023', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001027', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001031', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001036', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001039', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001041', CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001051', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001070', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN3393.02', N'DHT001077', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001009', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001011', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001013', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001016', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001018', CAST(4.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001022', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001023', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001025', CAST(7.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001034', CAST(3.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001036', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001037', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001038', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001042', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001052', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001057', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001058', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001059', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.01', N'DHT001065', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001001', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001004', CAST(8.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001012', CAST(8.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001020', CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001027', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001031', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001039', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001041', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001046', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001051', CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001060', CAST(9.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001070', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001073', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001076', CAST(9.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001077', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TIN4024.02', N'DHT001079', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4092.01', N'DHT001026', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4092.01', N'DHT001028', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4092.01', N'DHT001053', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4092.01', N'DHT001063', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4153.01', N'DHT001026', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4153.01', N'DHT001028', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4153.01', N'DHT001053', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2020-2021.2.TOA4153.01', N'DHT001063', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS3022.01', N'DHT001089', CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS3022.01', N'DHT001169', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS3022.01', N'DHT001176', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS3022.01', N'DHT001181', CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4022.01', N'DHT001089', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4022.01', N'DHT001169', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4022.01', N'DHT001176', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4022.01', N'DHT001181', CAST(6.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4133.01', N'DHT001089', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4133.01', N'DHT001169', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4133.01', N'DHT001176', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CNS4133.01', N'DHT001181', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3032.01', N'DHT001095', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3032.01', N'DHT001120', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3032.01', N'DHT001123', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3032.01', N'DHT001135', CAST(5.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3032.01', N'DHT001146', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3083.01', N'DHT001095', CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3083.01', N'DHT001120', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3083.01', N'DHT001123', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3083.01', N'DHT001135', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX3083.01', N'DHT001146', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX4022.01', N'DHT001095', CAST(7.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX4022.01', N'DHT001120', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX4022.01', N'DHT001123', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX4022.01', N'DHT001135', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.CTX4022.01', N'DHT001146', CAST(7.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DKX3062.01', N'DHT001017', CAST(4.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DKX3062.01', N'DHT001019', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DKX3062.01', N'DHT001056', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DLY1012.01', N'DHT001017', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DLY1012.01', N'DHT001019', CAST(6.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DLY1012.01', N'DHT001056', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DLY1023.01', N'DHT001017', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DLY1023.01', N'DHT001019', CAST(8.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DLY1023.01', N'DHT001056', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001085', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001088', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001097', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001101', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001109', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001118', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001154', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001171', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3142.01', N'DHT001182', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001085', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001088', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001097', CAST(5.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001101', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001109', CAST(3.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001118', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001154', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001171', CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH3153.01', N'DHT001182', CAST(5.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001003', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001010', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001043', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001044', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001049', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001068', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001069', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4012.01', N'DHT001071', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001003', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001010', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001043', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001044', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001049', CAST(6.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001068', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001069', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.DPH4113.01', N'DHT001071', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN3063.01', N'DHT001086', CAST(8.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN3063.01', N'DHT001105', CAST(10.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN3063.01', N'DHT001108', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN3063.01', N'DHT001119', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN3063.01', N'DHT001127', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN3063.01', N'DHT001161', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4023.01', N'DHT001086', CAST(5.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4023.01', N'DHT001105', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4023.01', N'DHT001108', CAST(6.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4023.01', N'DHT001119', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4023.01', N'DHT001127', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4023.01', N'DHT001161', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4052.01', N'DHT001086', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4052.01', N'DHT001105', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4052.01', N'DHT001108', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4052.01', N'DHT001119', CAST(5.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4052.01', N'DHT001127', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HAN4052.01', N'DHT001161', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3073.01', N'DHT001100', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3073.01', N'DHT001106', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3073.01', N'DHT001144', CAST(5.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3073.01', N'DHT001160', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3073.01', N'DHT001162', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3112.01', N'DHT001100', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3112.01', N'DHT001106', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3112.01', N'DHT001144', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3112.01', N'DHT001160', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3112.01', N'DHT001162', CAST(10.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3192.01', N'DHT001100', CAST(8.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3192.01', N'DHT001106', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3192.01', N'DHT001144', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3192.01', N'DHT001160', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA3192.01', N'DHT001162', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001005', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001008', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001040', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001047', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001048', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001061', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4452.01', N'DHT001078', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001005', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001008', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001040', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001047', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001048', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001061', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.HOA4552.01', N'DHT001078', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001094', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001126', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001130', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001134', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001138', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001145', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001150', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001152', CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001164', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1013.01', N'DHT001174', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001094', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001126', CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001130', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001134', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001138', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001145', CAST(8.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001150', CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001152', CAST(2.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001164', CAST(3.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH1042.01', N'DHT001174', CAST(10.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001094', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001126', CAST(10.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001130', CAST(10.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001134', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001138', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001145', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001150', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001152', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001164', CAST(4.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH2042.01', N'DHT001174', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001094', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001126', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001130', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001134', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001138', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001145', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001150', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001152', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001164', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.KQH3052.01', N'DHT001174', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK2012.01', N'DHT001090', CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK2012.01', N'DHT001116', CAST(6.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK2012.01', N'DHT001147', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK2012.01', N'DHT001168', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK2012.01', N'DHT001178', CAST(3.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK3023.01', N'DHT001090', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK3023.01', N'DHT001116', CAST(7.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK3023.01', N'DHT001147', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK3023.01', N'DHT001168', CAST(0.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK3023.01', N'DHT001178', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK4062.01', N'DHT001090', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK4062.01', N'DHT001116', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK4062.01', N'DHT001147', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK4062.01', N'DHT001168', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTK4062.01', N'DHT001178', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3063.01', N'DHT001002', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3063.01', N'DHT001014', CAST(10.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3063.01', N'DHT001033', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3063.01', N'DHT001045', CAST(3.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3063.01', N'DHT001050', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3063.01', N'DHT001055', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3102.01', N'DHT001002', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3102.01', N'DHT001014', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3102.01', N'DHT001033', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3102.01', N'DHT001045', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3102.01', N'DHT001050', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.MTR3102.01', N'DHT001055', CAST(4.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001080', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001082', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001084', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001099', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001102', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001107', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001117', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001122', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001125', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001136', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001137', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001139', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001140', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001151', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001157', CAST(5.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001163', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001165', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.01', N'DHT001180', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001087', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001091', CAST(10.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001098', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001111', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001112', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001121', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001132', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001133', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001141', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001142', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001143', CAST(5.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001149', CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001155', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001156', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001159', CAST(8.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001173', CAST(7.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1093.02', N'DHT001179', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001080', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001082', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001084', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001098', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001111', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001121', CAST(9.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001122', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001133', CAST(4.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001136', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001137', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001140', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001143', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001149', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001151', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001155', CAST(5.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001157', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001159', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.01', N'DHT001173', CAST(9.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001087', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001091', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001099', CAST(8.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001102', CAST(8.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001107', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001112', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001117', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001125', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001132', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001139', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001141', CAST(10.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001142', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001156', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001163', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001165', CAST(7.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001179', CAST(7.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN1103.02', N'DHT001180', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001080', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001084', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001087', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001098', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001099', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001107', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001117', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001121', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001122', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001132', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001133', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001136', CAST(3.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001137', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001139', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001141', CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001143', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001155', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.01', N'DHT001159', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001082', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001091', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001102', CAST(6.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001111', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001112', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001125', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001140', CAST(0.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001142', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001149', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001151', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001156', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001157', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001163', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001165', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001173', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001179', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3013.02', N'DHT001180', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001087', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001091', CAST(8.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001098', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001099', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001107', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001112', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001121', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001122', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001133', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001136', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001139', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001141', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001143', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001149', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001157', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001159', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001163', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.01', N'DHT001165', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001080', CAST(7.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001082', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001084', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001102', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001111', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001117', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001125', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001132', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001137', CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001140', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001142', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001151', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001155', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001156', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001173', CAST(8.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001179', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN3072.02', N'DHT001180', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001009', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001011', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001013', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001016', CAST(8.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001020', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001022', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001023', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001027', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001036', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001037', CAST(7.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001039', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001041', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001051', CAST(2.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001052', CAST(4.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001057', CAST(5.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001058', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001065', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.01', N'DHT001073', CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001001', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001004', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001012', CAST(10.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001018', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001025', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001031', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001034', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001038', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001042', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001046', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001059', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001060', CAST(7.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001070', CAST(8.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001076', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001077', CAST(6.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4052.02', N'DHT001079', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001004', CAST(5.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001009', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001020', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001022', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001023', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001025', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001031', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001036', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001038', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001039', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001041', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001046', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001052', CAST(9.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001060', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001065', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001076', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001077', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.01', N'DHT001079', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001001', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001011', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001012', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001013', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001016', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001018', CAST(4.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001027', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001034', CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001037', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001042', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001051', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001057', CAST(3.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001058', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001059', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001070', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4153.02', N'DHT001073', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001001', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001009', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001011', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001012', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001013', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001022', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001027', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001031', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001036', CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001038', CAST(5.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001042', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001046', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001051', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001058', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001060', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001065', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001073', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.01', N'DHT001077', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001004', CAST(6.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001016', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001018', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001020', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001023', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001025', CAST(5.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001034', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001037', CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001039', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001041', CAST(9.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001052', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001057', CAST(7.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001059', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001070', CAST(4.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001076', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4183.02', N'DHT001079', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001001', CAST(5.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001004', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001009', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001011', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001012', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001013', CAST(6.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001016', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001018', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001022', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001031', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001039', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001046', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001051', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001052', CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001059', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001070', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001076', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.01', N'DHT001077', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001020', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001023', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001025', CAST(9.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001027', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001034', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001036', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001037', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001038', CAST(8.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001041', CAST(7.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001042', CAST(8.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001057', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001058', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001060', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001065', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001073', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TIN4213.02', N'DHT001079', CAST(4.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA1092.01', N'DHT001128', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA1092.01', N'DHT001148', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA1092.01', N'DHT001177', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA2212.01', N'DHT001128', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA2212.01', N'DHT001148', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA2212.01', N'DHT001177', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA3043.01', N'DHT001128', CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA3043.01', N'DHT001148', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA3043.01', N'DHT001177', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4242.01', N'DHT001026', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4242.01', N'DHT001028', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4242.01', N'DHT001053', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4242.01', N'DHT001063', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4253.01', N'DHT001026', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4253.01', N'DHT001028', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4253.01', N'DHT001053', CAST(4.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.TOA4253.01', N'DHT001063', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3012.01', N'DHT001006', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3012.01', N'DHT001015', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3012.01', N'DHT001067', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3012.01', N'DHT001072', CAST(5.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3012.01', N'DHT001074', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3053.01', N'DHT001006', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3053.01', N'DHT001015', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3053.01', N'DHT001067', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3053.01', N'DHT001072', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3053.01', N'DHT001074', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3252.01', N'DHT001006', CAST(7.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3252.01', N'DHT001015', CAST(9.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3252.01', N'DHT001067', CAST(7.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3252.01', N'DHT001072', CAST(6.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.1.VAN3252.01', N'DHT001074', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4033.01', N'DHT001095', CAST(9.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4033.01', N'DHT001120', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4033.01', N'DHT001123', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4033.01', N'DHT001135', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4033.01', N'DHT001146', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4044.01', N'DHT001095', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4044.01', N'DHT001120', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4044.01', N'DHT001123', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4044.01', N'DHT001135', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4044.01', N'DHT001146', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4094.01', N'DHT001095', CAST(7.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4094.01', N'DHT001120', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4094.01', N'DHT001123', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4094.01', N'DHT001135', CAST(2.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.CTX4094.01', N'DHT001146', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DLY3052.01', N'DHT001017', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DLY3052.01', N'DHT001019', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DLY3052.01', N'DHT001056', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DLY3162.01', N'DHT001017', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DLY3162.01', N'DHT001019', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DLY3162.01', N'DHT001056', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001085', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001088', CAST(5.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001097', CAST(4.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001101', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001109', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001118', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001154', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001171', CAST(5.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3182.01', N'DHT001182', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001085', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001088', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001097', CAST(7.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001101', CAST(2.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001109', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001118', CAST(2.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001154', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001171', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.DPH3192.01', N'DHT001182', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN4242.01', N'DHT001086', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN4242.01', N'DHT001105', CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN4242.01', N'DHT001108', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN4242.01', N'DHT001119', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN4242.01', N'DHT001127', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN4242.01', N'DHT001161', CAST(8.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN5052.01', N'DHT001086', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN5052.01', N'DHT001105', CAST(2.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN5052.01', N'DHT001108', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN5052.01', N'DHT001119', CAST(7.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN5052.01', N'DHT001127', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HAN5052.01', N'DHT001161', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4102.01', N'DHT001100', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4102.01', N'DHT001106', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4102.01', N'DHT001144', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4102.01', N'DHT001160', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4102.01', N'DHT001162', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4252.01', N'DHT001100', CAST(9.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4252.01', N'DHT001106', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4252.01', N'DHT001144', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4252.01', N'DHT001160', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4252.01', N'DHT001162', CAST(5.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4272.01', N'DHT001100', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4272.01', N'DHT001106', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4272.01', N'DHT001144', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4272.01', N'DHT001160', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOA4272.01', N'DHT001162', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001005', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001008', CAST(8.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001040', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001047', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001048', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001061', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC1022.01', N'DHT001078', CAST(7.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001005', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001008', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001040', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001047', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001048', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001061', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.HOC3142.01', N'DHT001078', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001094', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001126', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001130', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001134', CAST(1.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001138', CAST(6.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001145', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001150', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001152', CAST(9.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001164', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3062.01', N'DHT001174', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001094', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001126', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001130', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001134', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001138', CAST(6.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001145', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001150', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001152', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001164', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH3182.01', N'DHT001174', CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001094', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001126', CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001130', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001134', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001138', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001145', CAST(5.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001150', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001152', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001164', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.KQH4042.01', N'DHT001174', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001003', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001010', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001043', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001044', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001049', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001068', CAST(9.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001069', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3292.01', N'DHT001071', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001003', CAST(8.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001010', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001043', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001044', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001049', CAST(3.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001068', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001069', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.LIS3322.01', N'DHT001071', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4072.01', N'DHT001090', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4072.01', N'DHT001116', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4072.01', N'DHT001147', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4072.01', N'DHT001168', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4072.01', N'DHT001178', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4122.01', N'DHT001090', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4122.01', N'DHT001116', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4122.01', N'DHT001147', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4122.01', N'DHT001168', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTK4122.01', N'DHT001178', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR3132.01', N'DHT001002', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR3132.01', N'DHT001014', CAST(1.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR3132.01', N'DHT001033', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR3132.01', N'DHT001045', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR3132.01', N'DHT001050', CAST(9.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR3132.01', N'DHT001055', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR4022.01', N'DHT001002', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR4022.01', N'DHT001014', CAST(6.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR4022.01', N'DHT001033', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR4022.01', N'DHT001045', CAST(5.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR4022.01', N'DHT001050', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.MTR4022.01', N'DHT001055', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.NNH5013.01', N'DHT001086', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.NNH5013.01', N'DHT001105', CAST(6.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.NNH5013.01', N'DHT001108', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.NNH5013.01', N'DHT001119', CAST(6.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.NNH5013.01', N'DHT001127', CAST(5.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.NNH5013.01', N'DHT001161', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.QTM2072.01', N'DHT001017', CAST(9.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.QTM2072.01', N'DHT001019', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.QTM2072.01', N'DHT001056', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3012.01', N'DHT001089', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3012.01', N'DHT001169', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3012.01', N'DHT001176', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3012.01', N'DHT001181', CAST(5.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3023.01', N'DHT001089', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3023.01', N'DHT001169', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3023.01', N'DHT001176', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK3023.01', N'DHT001181', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK4052.01', N'DHT001089', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK4052.01', N'DHT001169', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK4052.01', N'DHT001176', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.SIK4052.01', N'DHT001181', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001082', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001091', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001098', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001099', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001102', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001111', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001112', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001117', CAST(5.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001121', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001132', CAST(9.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001136', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001139', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001140', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001142', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001156', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001159', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001163', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.01', N'DHT001173', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001080', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001084', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001087', CAST(2.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001107', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001122', CAST(6.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001125', CAST(10.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001133', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001137', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001141', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001143', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001149', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001151', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001155', CAST(0.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001157', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001165', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001179', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3084.02', N'DHT001180', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001080', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001098', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001107', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001117', CAST(2.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001132', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001133', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001136', CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001139', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001140', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001141', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001142', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001143', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001151', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001155', CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001157', CAST(6.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001163', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001173', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.01', N'DHT001180', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001082', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001084', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001087', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001091', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001099', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001102', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001111', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001112', CAST(5.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001121', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001122', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001125', CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001137', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001149', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001156', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001159', CAST(7.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001165', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3102.02', N'DHT001179', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001080', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001098', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001099', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001102', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001107', CAST(4.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001112', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001121', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001125', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001132', CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001136', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001137', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001139', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001140', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001141', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001151', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001157', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001165', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.01', N'DHT001179', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001082', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001084', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001087', CAST(9.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001091', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001111', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001117', CAST(6.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001122', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001133', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001142', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001143', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001149', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001155', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001156', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001159', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001163', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001173', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN3393.02', N'DHT001180', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001082', CAST(7.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001084', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001087', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001091', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001098', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001099', CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001121', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001122', CAST(7.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001136', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001137', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001139', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001141', CAST(6.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001142', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001149', CAST(9.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001151', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001156', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001159', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.01', N'DHT001163', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001080', CAST(9.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001102', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001107', CAST(7.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001111', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001112', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001117', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001125', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001132', CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001133', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001140', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001143', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001155', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001157', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001165', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001173', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001179', CAST(5.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4024.02', N'DHT001180', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001004', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001011', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001012', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001016', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001018', CAST(9.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001022', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001037', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001039', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001041', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001042', CAST(9.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001051', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001052', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001057', CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001059', CAST(9.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001060', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001076', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001077', CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.01', N'DHT001079', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001001', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001009', CAST(2.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001013', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001020', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001023', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001025', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001027', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001031', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001034', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001036', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001038', CAST(2.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001046', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001058', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001065', CAST(4.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001070', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4222.02', N'DHT001073', CAST(8.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001001', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001004', CAST(6.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001011', CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001018', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001025', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001027', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001031', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001034', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001036', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001037', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001038', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001039', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001051', CAST(10.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001052', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001060', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001073', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001076', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.01', N'DHT001079', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001009', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001012', CAST(7.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001013', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001016', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001020', CAST(4.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001022', CAST(5.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001023', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001041', CAST(1.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001042', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001046', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001057', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001058', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001059', CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001065', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001070', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4263.02', N'DHT001077', CAST(8.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001001', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001004', CAST(4.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001009', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001011', CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001013', CAST(3.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001020', CAST(2.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001023', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001031', CAST(9.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001039', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001041', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001042', CAST(6.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001046', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001051', CAST(9.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001052', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001058', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001060', CAST(7.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001065', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.01', N'DHT001079', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001012', CAST(1.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001016', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001018', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001022', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001025', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001027', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001034', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001036', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001037', CAST(6.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001038', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001057', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001059', CAST(8.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001070', CAST(9.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001073', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001076', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TIN4282.02', N'DHT001077', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4092.01', N'DHT001128', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4092.01', N'DHT001148', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4092.01', N'DHT001177', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4153.01', N'DHT001128', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4153.01', N'DHT001148', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4153.01', N'DHT001177', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4343.01', N'DHT001026', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4343.01', N'DHT001028', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4343.01', N'DHT001053', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOA4343.01', N'DHT001063', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOK2012.01', N'DHT001026', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOK2012.01', N'DHT001028', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOK2012.01', N'DHT001053', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.TOK2012.01', N'DHT001063', CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN3272.01', N'DHT001006', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN3272.01', N'DHT001015', CAST(4.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN3272.01', N'DHT001067', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN3272.01', N'DHT001072', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN3272.01', N'DHT001074', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4102.01', N'DHT001006', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4102.01', N'DHT001015', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4102.01', N'DHT001067', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4102.01', N'DHT001072', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4102.01', N'DHT001074', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4152.01', N'DHT001006', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4152.01', N'DHT001015', CAST(5.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4152.01', N'DHT001067', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4152.01', N'DHT001072', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2021-2022.2.VAN4152.01', N'DHT001074', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS3022.01', N'DHT001214', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS3022.01', N'DHT001235', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS3022.01', N'DHT001267', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS3022.01', N'DHT001294', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4022.01', N'DHT001214', CAST(8.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4022.01', N'DHT001235', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4022.01', N'DHT001267', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4022.01', N'DHT001294', CAST(0.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4133.01', N'DHT001214', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4133.01', N'DHT001235', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4133.01', N'DHT001267', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CNS4133.01', N'DHT001294', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3032.01', N'DHT001240', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3032.01', N'DHT001251', CAST(6.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3032.01', N'DHT001262', CAST(2.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3032.01', N'DHT001268', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3032.01', N'DHT001278', CAST(9.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3083.01', N'DHT001240', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3083.01', N'DHT001251', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3083.01', N'DHT001262', CAST(4.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3083.01', N'DHT001268', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX3083.01', N'DHT001278', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4022.01', N'DHT001240', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4022.01', N'DHT001251', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4022.01', N'DHT001262', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4022.01', N'DHT001268', CAST(7.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4022.01', N'DHT001278', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4222.01', N'DHT001095', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4222.01', N'DHT001120', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4222.01', N'DHT001123', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4222.01', N'DHT001135', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4222.01', N'DHT001146', CAST(7.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4262.01', N'DHT001095', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4262.01', N'DHT001120', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4262.01', N'DHT001123', CAST(3.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4262.01', N'DHT001135', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.CTX4262.01', N'DHT001146', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DCH2042.01', N'DHT001298', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DCH2042.01', N'DHT001305', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DCH3272.01', N'DHT001298', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DCH3272.01', N'DHT001305', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DCT2013.01', N'DHT001298', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DCT2013.01', N'DHT001305', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001213', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001225', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001254', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001279', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001283', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001293', CAST(8.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3142.01', N'DHT001304', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001213', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001225', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001254', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001279', CAST(8.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001283', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001293', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH3153.01', N'DHT001304', CAST(9.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001085', CAST(7.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001088', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001097', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001101', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001109', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001118', CAST(8.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001154', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001171', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4012.01', N'DHT001182', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001085', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001088', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001097', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001101', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001109', CAST(6.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001118', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001154', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001171', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DPH4113.01', N'DHT001182', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2012.01', N'DHT001219', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2012.01', N'DHT001222', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2012.01', N'DHT001260', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2012.01', N'DHT001273', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2012.01', N'DHT001286', CAST(10.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2082.01', N'DHT001219', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2082.01', N'DHT001222', CAST(1.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2082.01', N'DHT001260', CAST(5.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2082.01', N'DHT001273', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV2082.01', N'DHT001286', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV3013.01', N'DHT001219', CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV3013.01', N'DHT001222', CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV3013.01', N'DHT001260', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV3013.01', N'DHT001273', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.DTV3013.01', N'DHT001286', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN3063.01', N'DHT001186', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN3063.01', N'DHT001216', CAST(2.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN3063.01', N'DHT001249', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN3063.01', N'DHT001255', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN3063.01', N'DHT001284', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN3063.01', N'DHT001287', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4023.01', N'DHT001186', CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4023.01', N'DHT001216', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4023.01', N'DHT001249', CAST(6.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4023.01', N'DHT001255', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4023.01', N'DHT001284', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4023.01', N'DHT001287', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4052.01', N'DHT001186', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4052.01', N'DHT001216', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4052.01', N'DHT001249', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4052.01', N'DHT001255', CAST(5.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4052.01', N'DHT001284', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HAN4052.01', N'DHT001287', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3073.01', N'DHT001183', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3073.01', N'DHT001185', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3073.01', N'DHT001288', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3112.01', N'DHT001183', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3112.01', N'DHT001185', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3112.01', N'DHT001288', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3192.01', N'DHT001183', CAST(6.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3192.01', N'DHT001185', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA3192.01', N'DHT001288', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4452.01', N'DHT001100', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4452.01', N'DHT001106', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4452.01', N'DHT001144', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4452.01', N'DHT001160', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4452.01', N'DHT001162', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4552.01', N'DHT001100', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4552.01', N'DHT001106', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4552.01', N'DHT001144', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4552.01', N'DHT001160', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOA4552.01', N'DHT001162', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001005', CAST(4.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001008', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001040', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001047', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001048', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001061', CAST(4.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4013.01', N'DHT001078', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001005', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001008', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001040', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001047', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001048', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001061', CAST(8.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.HOC4033.01', N'DHT001078', CAST(5.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001195', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001203', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001215', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001217', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001220', CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001245', CAST(5.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001253', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001257', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001264', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001265', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001270', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001276', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001281', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001300', CAST(2.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1013.01', N'DHT001302', CAST(0.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001195', CAST(7.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001203', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001215', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001217', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001220', CAST(1.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001245', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001253', CAST(1.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001257', CAST(7.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001264', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001265', CAST(5.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001270', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001276', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001281', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001300', CAST(6.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH1042.01', N'DHT001302', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001195', CAST(2.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001203', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001215', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001217', CAST(2.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001220', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001245', CAST(9.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001253', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001257', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001264', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001265', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001270', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001276', CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001281', CAST(8.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001300', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH2042.01', N'DHT001302', CAST(4.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001195', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001203', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001215', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001217', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001220', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001245', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001253', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001257', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001264', CAST(1.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001265', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001270', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001276', CAST(8.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001281', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001300', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KQH3052.01', N'DHT001302', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001094', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001126', CAST(9.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001130', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001134', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001138', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001145', CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001150', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001152', CAST(4.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001164', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2022.01', N'DHT001174', CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001094', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001126', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001130', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001134', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001138', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001145', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001150', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001152', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001164', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2063.01', N'DHT001174', CAST(1.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001094', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001126', CAST(3.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001130', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001134', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001138', CAST(9.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001145', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001150', CAST(6.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001152', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001164', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.KTR2073.01', N'DHT001174', CAST(9.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001003', CAST(6.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001010', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001043', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001044', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001049', CAST(0.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001068', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001069', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4122.01', N'DHT001071', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001003', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001010', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001043', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001044', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001049', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001068', CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001069', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.LIS4222.01', N'DHT001071', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK2012.01', N'DHT001198', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK2012.01', N'DHT001233', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK2012.01', N'DHT001282', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK2012.01', N'DHT001295', CAST(10.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK3023.01', N'DHT001198', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK3023.01', N'DHT001233', CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK3023.01', N'DHT001282', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK3023.01', N'DHT001295', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK4062.01', N'DHT001198', CAST(9.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK4062.01', N'DHT001233', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK4062.01', N'DHT001282', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTK4062.01', N'DHT001295', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3063.01', N'DHT001090', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3063.01', N'DHT001116', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3063.01', N'DHT001147', CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3063.01', N'DHT001168', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3063.01', N'DHT001178', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3102.01', N'DHT001090', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3102.01', N'DHT001116', CAST(8.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3102.01', N'DHT001147', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3102.01', N'DHT001168', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR3102.01', N'DHT001178', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4232.01', N'DHT001002', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4232.01', N'DHT001014', CAST(5.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4232.01', N'DHT001033', CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4232.01', N'DHT001045', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4232.01', N'DHT001050', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4232.01', N'DHT001055', CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4282.01', N'DHT001002', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4282.01', N'DHT001014', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4282.01', N'DHT001033', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4282.01', N'DHT001045', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4282.01', N'DHT001050', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.MTR4282.01', N'DHT001055', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.QTM3142.01', N'DHT001017', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.QTM3142.01', N'DHT001019', CAST(5.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.QTM3142.01', N'DHT001056', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.QTM4083.01', N'DHT001017', CAST(10.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.QTM4083.01', N'DHT001019', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.QTM4083.01', N'DHT001056', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4073.01', N'DHT001089', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4073.01', N'DHT001169', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4073.01', N'DHT001176', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4073.01', N'DHT001181', CAST(9.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4092.01', N'DHT001089', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4092.01', N'DHT001169', CAST(4.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4092.01', N'DHT001176', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIK4092.01', N'DHT001181', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIN2032.01', N'DHT001089', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIN2032.01', N'DHT001169', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIN2032.01', N'DHT001176', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.SIN2032.01', N'DHT001181', CAST(8.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001188', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001190', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001191', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001197', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001199', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001205', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001211', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001221', CAST(1.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001237', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001238', CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001241', CAST(6.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001246', CAST(1.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001247', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001252', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001271', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001285', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001292', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001299', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001301', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001303', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.01', N'DHT001306', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001187', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001194', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001223', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001224', CAST(9.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001228', CAST(10.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001229', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001230', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001231', CAST(5.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001232', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001236', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001239', CAST(8.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001242', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001259', CAST(10.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001261', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001280', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001289', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001290', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001291', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1093.02', N'DHT001307', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001187', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001191', CAST(8.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001194', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001197', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001205', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001211', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001221', CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001229', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001232', CAST(4.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001236', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001237', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001238', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001239', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001247', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001252', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001259', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001261', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001280', CAST(4.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001291', CAST(5.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001299', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.01', N'DHT001307', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001188', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001190', CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001199', CAST(3.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001223', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001224', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001228', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001230', CAST(6.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001231', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001241', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001242', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001246', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001271', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001285', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001289', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001290', CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001292', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001301', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001303', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN1103.02', N'DHT001306', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001188', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001199', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001205', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001221', CAST(7.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001224', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001229', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001232', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001237', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001239', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001242', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001246', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001247', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001259', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001261', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001280', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001285', CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001289', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001292', CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001299', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001303', CAST(10.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.01', N'DHT001307', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001187', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001190', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001191', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001194', CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001197', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001211', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001223', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001228', CAST(6.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001230', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001231', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001236', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001238', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001241', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001252', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001271', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001290', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001291', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001301', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3013.02', N'DHT001306', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001191', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001194', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001197', CAST(9.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001199', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001211', CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001221', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001223', CAST(2.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001228', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001229', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001232', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001236', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001237', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001242', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001246', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001247', CAST(6.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001259', CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001285', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001290', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001291', CAST(3.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001301', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.01', N'DHT001306', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001187', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001188', CAST(3.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001190', CAST(3.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001205', CAST(5.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001224', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001230', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001231', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001238', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001239', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001241', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001252', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001261', CAST(5.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001271', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001280', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001289', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001292', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001299', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001303', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN3072.02', N'DHT001307', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001080', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001091', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001098', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001099', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001107', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001112', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001121', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001122', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001125', CAST(9.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001132', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001136', CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001140', CAST(5.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001142', CAST(0.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001149', CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001155', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001156', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001163', CAST(10.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.01', N'DHT001180', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001082', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001084', CAST(4.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001087', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001102', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001111', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001117', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001133', CAST(7.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001137', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001139', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001141', CAST(2.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001143', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001151', CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001157', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001159', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001165', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001173', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4052.02', N'DHT001179', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001080', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001102', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001111', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001117', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001121', CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001133', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001136', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001137', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001139', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001140', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001151', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001156', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001157', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001159', CAST(6.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001165', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001173', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001179', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.01', N'DHT001180', CAST(9.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001082', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001084', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001087', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001091', CAST(2.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001098', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001099', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001107', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001112', CAST(4.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001122', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001125', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001132', CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001141', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001142', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001143', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001149', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001155', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4153.02', N'DHT001163', CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001080', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001082', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001091', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001099', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001111', CAST(6.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001121', CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001125', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001132', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001133', CAST(5.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001136', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001139', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001142', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001143', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001149', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001151', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001157', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001173', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.01', N'DHT001180', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001084', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001087', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001098', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001102', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001107', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001112', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001117', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001122', CAST(6.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001137', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001140', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001141', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001155', CAST(7.50 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001156', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001159', CAST(0.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001163', CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001165', CAST(3.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4183.02', N'DHT001179', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001080', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001087', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001098', CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001099', CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001111', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001112', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001121', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001122', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001125', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001136', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001140', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001142', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001143', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001155', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001156', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001159', CAST(8.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001179', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.01', N'DHT001180', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001082', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001084', CAST(3.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001091', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001102', CAST(5.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001107', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001117', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001132', CAST(6.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001133', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001137', CAST(4.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001139', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001141', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001149', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001151', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001157', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001163', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001165', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4213.02', N'DHT001173', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001001', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001004', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001009', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001011', CAST(5.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001012', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001013', CAST(5.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001016', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001027', CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001031', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001037', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001041', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001042', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001046', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001051', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001065', CAST(8.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001070', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001076', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.01', N'DHT001079', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001018', CAST(8.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001020', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001022', CAST(4.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001023', CAST(5.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001025', CAST(6.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001034', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001036', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001038', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001039', CAST(6.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001052', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001057', CAST(6.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001058', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001059', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001060', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001073', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4313.02', N'DHT001077', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001004', CAST(1.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001009', CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001013', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001018', CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001022', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001025', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001031', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001034', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001037', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001041', CAST(9.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001046', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001052', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001057', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001058', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001059', CAST(5.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001070', CAST(9.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001077', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.01', N'DHT001079', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001001', CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001011', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001012', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001016', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001020', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001023', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001027', CAST(5.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001036', CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001038', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001039', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001042', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001051', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001060', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001065', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001073', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4392.02', N'DHT001076', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001001', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001009', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001011', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001012', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001013', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001018', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001020', CAST(3.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001022', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001023', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001027', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001034', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001036', CAST(8.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001042', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001046', CAST(8.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001052', CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001058', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001076', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.01', N'DHT001077', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001004', CAST(9.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001016', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001025', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001031', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001037', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001038', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001039', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001041', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001051', CAST(9.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001057', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001059', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001060', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001065', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001070', CAST(8.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001073', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TIN4393.02', N'DHT001079', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TLH2012.01', N'DHT001095', CAST(8.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TLH2012.01', N'DHT001120', CAST(7.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TLH2012.01', N'DHT001123', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TLH2012.01', N'DHT001135', CAST(1.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TLH2012.01', N'DHT001146', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001193', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001206', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001208', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001209', CAST(6.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001212', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001263', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA1092.01', N'DHT001296', CAST(8.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001193', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001206', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001208', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001209', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001212', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001263', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA2212.01', N'DHT001296', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001193', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001206', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001208', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001209', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001212', CAST(9.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001263', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA3043.01', N'DHT001296', CAST(1.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA4242.01', N'DHT001128', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA4242.01', N'DHT001148', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA4242.01', N'DHT001177', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA4253.01', N'DHT001128', CAST(9.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA4253.01', N'DHT001148', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOA4253.01', N'DHT001177', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK2063.01', N'DHT001026', CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK2063.01', N'DHT001028', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK2063.01', N'DHT001053', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK2063.01', N'DHT001063', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK4012.01', N'DHT001026', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK4012.01', N'DHT001028', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK4012.01', N'DHT001053', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TOK4012.01', N'DHT001063', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TRD3043.01', N'DHT001017', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TRD3043.01', N'DHT001019', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.TRD3043.01', N'DHT001056', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3012.01', N'DHT001086', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3012.01', N'DHT001105', CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3012.01', N'DHT001108', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3012.01', N'DHT001119', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3012.01', N'DHT001127', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3012.01', N'DHT001161', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3053.01', N'DHT001086', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3053.01', N'DHT001105', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3053.01', N'DHT001108', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3053.01', N'DHT001119', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3053.01', N'DHT001127', CAST(10.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3053.01', N'DHT001161', CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3252.01', N'DHT001086', CAST(7.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3252.01', N'DHT001105', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3252.01', N'DHT001108', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3252.01', N'DHT001119', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3252.01', N'DHT001127', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN3252.01', N'DHT001161', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4192.01', N'DHT001006', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4192.01', N'DHT001015', CAST(1.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4192.01', N'DHT001067', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4192.01', N'DHT001072', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4192.01', N'DHT001074', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4272.01', N'DHT001006', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4272.01', N'DHT001015', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4272.01', N'DHT001067', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4272.01', N'DHT001072', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4272.01', N'DHT001074', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4312.01', N'DHT001006', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4312.01', N'DHT001015', CAST(5.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4312.01', N'DHT001067', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4312.01', N'DHT001072', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.1.VAN4312.01', N'DHT001074', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4033.01', N'DHT001240', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4033.01', N'DHT001251', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4033.01', N'DHT001262', CAST(5.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4033.01', N'DHT001268', CAST(8.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4033.01', N'DHT001278', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4044.01', N'DHT001240', CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4044.01', N'DHT001251', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4044.01', N'DHT001262', CAST(8.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4044.01', N'DHT001268', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4044.01', N'DHT001278', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4094.01', N'DHT001240', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4094.01', N'DHT001251', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4094.01', N'DHT001262', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4094.01', N'DHT001268', CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.CTX4094.01', N'DHT001278', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DCT3142.01', N'DHT001298', CAST(7.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DCT3142.01', N'DHT001305', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DKX2012.01', N'DHT001298', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DKX2012.01', N'DHT001305', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DKX2013.01', N'DHT001298', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DKX2013.01', N'DHT001305', CAST(3.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001213', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001225', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001254', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001279', CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001283', CAST(1.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001293', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3182.01', N'DHT001304', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001213', CAST(2.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001225', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001254', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001279', CAST(9.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001283', CAST(6.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001293', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DPH3192.01', N'DHT001304', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3033.01', N'DHT001219', CAST(4.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3033.01', N'DHT001222', CAST(8.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3033.01', N'DHT001260', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3033.01', N'DHT001273', CAST(2.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3033.01', N'DHT001286', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3093.01', N'DHT001219', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3093.01', N'DHT001222', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3093.01', N'DHT001260', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3093.01', N'DHT001273', CAST(1.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3093.01', N'DHT001286', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3132.01', N'DHT001219', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3132.01', N'DHT001222', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3132.01', N'DHT001260', CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3132.01', N'DHT001273', CAST(6.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.DTV3132.01', N'DHT001286', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN4242.01', N'DHT001186', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN4242.01', N'DHT001216', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN4242.01', N'DHT001249', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN4242.01', N'DHT001255', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN4242.01', N'DHT001284', CAST(8.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN4242.01', N'DHT001287', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN5052.01', N'DHT001186', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN5052.01', N'DHT001216', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN5052.01', N'DHT001249', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN5052.01', N'DHT001255', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN5052.01', N'DHT001284', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HAN5052.01', N'DHT001287', CAST(4.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4102.01', N'DHT001183', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4102.01', N'DHT001185', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4102.01', N'DHT001288', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4252.01', N'DHT001183', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4252.01', N'DHT001185', CAST(9.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4252.01', N'DHT001288', CAST(3.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4272.01', N'DHT001183', CAST(1.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4272.01', N'DHT001185', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOA4272.01', N'DHT001288', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC1022.01', N'DHT001100', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC1022.01', N'DHT001106', CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC1022.01', N'DHT001144', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC1022.01', N'DHT001160', CAST(8.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC1022.01', N'DHT001162', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC3142.01', N'DHT001100', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC3142.01', N'DHT001106', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC3142.01', N'DHT001144', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC3142.01', N'DHT001160', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC3142.01', N'DHT001162', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001005', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001008', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001040', CAST(3.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001047', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001048', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001061', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4103.01', N'DHT001078', CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001005', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001008', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001040', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001047', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001048', CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001061', CAST(8.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.HOC4113.01', N'DHT001078', CAST(8.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001195', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001203', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001215', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001217', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001220', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001245', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001253', CAST(10.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001257', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001264', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001265', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001270', CAST(0.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001276', CAST(9.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001281', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001300', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3062.01', N'DHT001302', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001195', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001203', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001215', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001217', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001220', CAST(1.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001245', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001253', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001257', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001264', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001265', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001270', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001276', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001281', CAST(0.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001300', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH3182.01', N'DHT001302', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001195', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001203', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001215', CAST(6.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001217', CAST(4.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001220', CAST(6.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001245', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001253', CAST(2.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001257', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001264', CAST(10.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001265', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001270', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001276', CAST(3.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001281', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001300', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KQH4042.01', N'DHT001302', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001094', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001126', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001130', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001134', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001138', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001145', CAST(9.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001150', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001152', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001164', CAST(5.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR2082.01', N'DHT001174', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001094', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001126', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001130', CAST(9.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001134', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001138', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001145', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001150', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001152', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001164', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3033.01', N'DHT001174', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001094', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001126', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001130', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001134', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001138', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001145', CAST(8.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001150', CAST(3.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001152', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001164', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.KTR3072.01', N'DHT001174', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001085', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001088', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001097', CAST(10.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001101', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001109', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001118', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001154', CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001171', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3292.01', N'DHT001182', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001085', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001088', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001097', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001101', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001109', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001118', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001154', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001171', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS3322.01', N'DHT001182', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001003', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001010', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001043', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001044', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001049', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001068', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001069', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS4442.01', N'DHT001071', CAST(10.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001003', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001010', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001043', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001044', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001049', CAST(10.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001068', CAST(8.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001069', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.LIS5022.01', N'DHT001071', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4072.01', N'DHT001198', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4072.01', N'DHT001233', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4072.01', N'DHT001282', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4072.01', N'DHT001295', CAST(10.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4122.01', N'DHT001198', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4122.01', N'DHT001233', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4122.01', N'DHT001282', CAST(1.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTK4122.01', N'DHT001295', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR3132.01', N'DHT001090', CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR3132.01', N'DHT001116', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR3132.01', N'DHT001147', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR3132.01', N'DHT001168', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR3132.01', N'DHT001178', CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR4022.01', N'DHT001090', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR4022.01', N'DHT001116', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR4022.01', N'DHT001147', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR4022.01', N'DHT001168', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTR4022.01', N'DHT001178', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS3013.01', N'DHT001002', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS3013.01', N'DHT001014', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS3013.01', N'DHT001033', CAST(7.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS3013.01', N'DHT001045', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS3013.01', N'DHT001050', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS3013.01', N'DHT001055', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS4033.01', N'DHT001002', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS4033.01', N'DHT001014', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS4033.01', N'DHT001033', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS4033.01', N'DHT001045', CAST(6.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS4033.01', N'DHT001050', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.MTS4033.01', N'DHT001055', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.NNH5013.01', N'DHT001186', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.NNH5013.01', N'DHT001216', CAST(7.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.NNH5013.01', N'DHT001249', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.NNH5013.01', N'DHT001255', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.NNH5013.01', N'DHT001284', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.NNH5013.01', N'DHT001287', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3012.01', N'DHT001214', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3012.01', N'DHT001235', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3012.01', N'DHT001267', CAST(4.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3012.01', N'DHT001294', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3023.01', N'DHT001214', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3023.01', N'DHT001235', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3023.01', N'DHT001267', CAST(9.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK3023.01', N'DHT001294', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK4052.01', N'DHT001214', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK4052.01', N'DHT001235', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK4052.01', N'DHT001267', CAST(4.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIK4052.01', N'DHT001294', CAST(6.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN3102.01', N'DHT001089', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN3102.01', N'DHT001169', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN3102.01', N'DHT001176', CAST(6.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN3102.01', N'DHT001181', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4282.01', N'DHT001089', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4282.01', N'DHT001169', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4282.01', N'DHT001176', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4282.01', N'DHT001181', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4482.01', N'DHT001089', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4482.01', N'DHT001169', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4482.01', N'DHT001176', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.SIN4482.01', N'DHT001181', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001191', CAST(3.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001199', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001221', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001223', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001228', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001232', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001236', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001239', CAST(0.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001242', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001246', CAST(7.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001247', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001252', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001261', CAST(4.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001271', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001285', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001289', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001292', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001299', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001301', CAST(2.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001303', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.01', N'DHT001307', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001187', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001188', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001190', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001194', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001197', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001205', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001211', CAST(1.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001224', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001229', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001230', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001231', CAST(8.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001237', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001238', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001241', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001259', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001280', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001290', CAST(8.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001291', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3084.02', N'DHT001306', CAST(8.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001187', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001188', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001191', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001197', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001199', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001205', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001221', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001224', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001229', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001231', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001232', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001237', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001238', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001242', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001252', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001261', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001285', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001289', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001291', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001303', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.01', N'DHT001307', CAST(5.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001190', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001194', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001211', CAST(7.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001223', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001228', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001230', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001236', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001239', CAST(7.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001241', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001246', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001247', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001259', CAST(7.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001271', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001280', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001290', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001292', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001299', CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001301', CAST(8.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3102.02', N'DHT001306', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001187', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001190', CAST(5.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001191', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001194', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001211', CAST(1.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001221', CAST(6.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001224', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001229', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001230', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001231', CAST(4.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001232', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001237', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001239', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001246', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001285', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001289', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001290', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001291', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001299', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001301', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.01', N'DHT001306', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001188', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001197', CAST(10.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001199', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001205', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001223', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001228', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001236', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001238', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001241', CAST(9.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001242', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001247', CAST(8.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001252', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001259', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001261', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001271', CAST(5.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001280', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001292', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001303', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN3393.02', N'DHT001307', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001188', CAST(10.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001190', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001194', CAST(7.50 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001197', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001205', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001211', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001221', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001228', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001229', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001231', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001232', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001238', CAST(9.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001241', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001252', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001259', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001280', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001289', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001291', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001301', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001306', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.01', N'DHT001307', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001187', CAST(2.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001191', CAST(8.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001199', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001223', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001224', CAST(7.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001230', CAST(9.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001236', CAST(1.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001237', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001239', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001242', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001246', CAST(9.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001247', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001261', CAST(7.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001271', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001285', CAST(9.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001290', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001292', CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001299', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4024.02', N'DHT001303', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001080', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001091', CAST(8.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001099', CAST(5.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001102', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001107', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001111', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001121', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001122', CAST(9.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001125', CAST(3.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001133', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001141', CAST(2.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001142', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001151', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001157', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001159', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001163', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001179', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.01', N'DHT001180', CAST(6.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001082', CAST(1.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001084', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001087', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001098', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001112', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001117', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001132', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001136', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001137', CAST(9.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001139', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001140', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001143', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001149', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001155', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001156', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001165', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4222.02', N'DHT001173', CAST(2.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001087', CAST(7.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001091', CAST(2.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001098', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001102', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001107', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001112', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001121', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001125', CAST(3.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001132', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001133', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001136', CAST(8.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001137', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001141', CAST(5.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001142', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001156', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001157', CAST(8.50 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001163', CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.01', N'DHT001173', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001080', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001082', CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001084', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001099', CAST(9.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001111', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001117', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001122', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001139', CAST(8.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001140', CAST(8.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001143', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001149', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001151', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001155', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001159', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001165', CAST(3.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001179', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4263.02', N'DHT001180', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001080', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001082', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001084', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001087', CAST(8.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001099', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001107', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001117', CAST(7.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001121', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001122', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001125', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001136', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001137', CAST(6.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001141', CAST(8.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001149', CAST(6.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001155', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001163', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001173', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.01', N'DHT001179', CAST(2.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001091', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001098', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001102', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001111', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001112', CAST(10.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001132', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001133', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001139', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001140', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001142', CAST(8.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001143', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001151', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001156', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001157', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001159', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001165', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4282.02', N'DHT001180', CAST(3.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001009', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001012', CAST(6.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001013', CAST(9.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001016', CAST(8.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001018', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001023', CAST(3.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001034', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001038', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001041', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001042', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001046', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001052', CAST(3.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001057', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001059', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001060', CAST(10.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001065', CAST(3.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001073', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.01', N'DHT001079', CAST(6.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001001', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001004', CAST(10.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001011', CAST(10.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001020', CAST(8.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001022', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001025', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001027', CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001031', CAST(6.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001036', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001037', CAST(7.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001039', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001051', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001058', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001070', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001076', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4503.02', N'DHT001077', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001009', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001011', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001012', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001020', CAST(1.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001022', CAST(8.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001023', CAST(8.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001036', CAST(9.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001037', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001039', CAST(9.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001041', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001051', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001057', CAST(8.50 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001058', CAST(6.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001059', CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001060', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001065', CAST(7.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001077', CAST(10.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.01', N'DHT001079', CAST(6.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001001', CAST(6.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001004', CAST(5.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001013', CAST(1.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001016', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001018', CAST(9.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001025', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001027', CAST(8.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001031', CAST(10.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001034', CAST(4.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001038', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001042', CAST(2.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001046', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001052', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001070', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001073', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4583.02', N'DHT001076', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001001', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001013', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001018', CAST(5.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001022', CAST(9.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001023', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001025', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001027', CAST(6.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001031', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001034', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001037', CAST(9.50 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001038', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001042', CAST(8.50 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001046', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001058', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001065', CAST(7.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001070', CAST(9.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001073', CAST(10.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.01', N'DHT001077', CAST(7.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001004', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001009', CAST(7.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001011', CAST(4.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001012', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001016', CAST(2.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001020', CAST(2.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001036', CAST(2.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001039', CAST(5.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001041', CAST(7.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001051', CAST(6.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001052', CAST(9.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001057', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001059', CAST(5.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001060', CAST(9.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001076', CAST(1.00 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TIN4603.02', N'DHT001079', CAST(9.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001193', CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001206', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001208', CAST(7.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001209', CAST(7.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001212', CAST(7.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001263', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4092.01', N'DHT001296', CAST(3.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001193', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001206', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001208', CAST(4.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001209', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001212', CAST(10.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001263', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4153.01', N'DHT001296', CAST(8.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4343.01', N'DHT001128', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4343.01', N'DHT001148', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOA4343.01', N'DHT001177', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOK2012.01', N'DHT001128', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOK2012.01', N'DHT001148', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOK2012.01', N'DHT001177', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ2013.01', N'DHT001026', CAST(8.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ2013.01', N'DHT001028', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ2013.01', N'DHT001053', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ2013.01', N'DHT001063', CAST(6.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ3023.01', N'DHT001026', CAST(6.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ3023.01', N'DHT001028', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ3023.01', N'DHT001053', CAST(8.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TOQ3023.01', N'DHT001063', CAST(7.50 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD3063.01', N'DHT001017', CAST(7.50 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD3063.01', N'DHT001019', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD3063.01', N'DHT001056', CAST(6.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD3173.01', N'DHT001017', CAST(7.00 AS Decimal(10, 2)), CAST(1.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD3173.01', N'DHT001019', CAST(10.00 AS Decimal(10, 2)), CAST(3.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD3173.01', N'DHT001056', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD5013.01', N'DHT001017', CAST(5.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD5013.01', N'DHT001019', CAST(8.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.TRD5013.01', N'DHT001056', CAST(7.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN3272.01', N'DHT001086', CAST(9.50 AS Decimal(10, 2)), CAST(4.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN3272.01', N'DHT001105', CAST(9.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN3272.01', N'DHT001108', CAST(7.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN3272.01', N'DHT001119', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN3272.01', N'DHT001127', CAST(7.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN3272.01', N'DHT001161', CAST(9.50 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4102.01', N'DHT001086', CAST(0.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4102.01', N'DHT001105', CAST(7.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4102.01', N'DHT001108', CAST(0.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4102.01', N'DHT001119', CAST(9.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4102.01', N'DHT001127', CAST(2.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4102.01', N'DHT001161', CAST(8.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4152.01', N'DHT001086', CAST(6.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4152.01', N'DHT001105', CAST(5.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4152.01', N'DHT001108', CAST(9.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4152.01', N'DHT001119', CAST(7.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4152.01', N'DHT001127', CAST(7.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN4152.01', N'DHT001161', CAST(9.50 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5022.01', N'DHT001006', CAST(8.50 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5022.01', N'DHT001015', CAST(8.00 AS Decimal(10, 2)), CAST(4.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5022.01', N'DHT001067', CAST(5.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5022.01', N'DHT001072', CAST(7.00 AS Decimal(10, 2)), CAST(2.50 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5022.01', N'DHT001074', CAST(10.00 AS Decimal(10, 2)), CAST(8.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5062.01', N'DHT001006', CAST(10.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5062.01', N'DHT001015', CAST(7.50 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5062.01', N'DHT001067', CAST(7.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5062.01', N'DHT001072', CAST(9.50 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5062.01', N'DHT001074', CAST(8.00 AS Decimal(10, 2)), CAST(7.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5092.01', N'DHT001006', CAST(4.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5092.01', N'DHT001015', CAST(9.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5092.01', N'DHT001067', CAST(6.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5092.01', N'DHT001072', CAST(7.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.VAN5092.01', N'DHT001074', CAST(7.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH3063.01', N'DHT001095', CAST(7.50 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH3063.01', N'DHT001120', CAST(6.50 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH3063.01', N'DHT001123', CAST(1.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH3063.01', N'DHT001135', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH3063.01', N'DHT001146', CAST(6.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4032.01', N'DHT001095', CAST(6.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4032.01', N'DHT001120', CAST(9.50 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4032.01', N'DHT001123', CAST(9.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4032.01', N'DHT001135', CAST(2.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4032.01', N'DHT001146', CAST(10.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4033.01', N'DHT001095', CAST(10.00 AS Decimal(10, 2)), CAST(6.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4033.01', N'DHT001120', CAST(7.50 AS Decimal(10, 2)), CAST(2.00 AS Decimal(10, 2)), CAST(9.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4033.01', N'DHT001123', CAST(6.50 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4033.01', N'DHT001135', CAST(10.00 AS Decimal(10, 2)), CAST(7.50 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[LopHocPhan_SinhVien] ([MaLopHocPhan], [MaSinhVien], [DiemQTHT], [DiemThiLan1], [DiemThiLan2]) VALUES (N'2022-2023.2.XHH4033.01', N'DHT001146', CAST(8.00 AS Decimal(10, 2)), CAST(6.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7229010', N'Lịch sử', N'HUSC1000')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7229030', N'Văn học', N'HUSC0900')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7310205', N'Quản lý nhà nước', N'HUSC1100')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7310301', N'Xã hội học', N'HUSC1300')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7320109', N'Truyền thông số', N'HUSC1200')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7420201', N'Công nghệ sinh học', N'HUSC0500')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7440112', N'Hóa học', N'HUSC0400')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7440301', N'Khoa học môi trường', N'HUSC0700')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7480107', N'Quản trị và phân tích dữ liệu', N'HUSC0100')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7480201', N'Công nghệ thông tin', N'HUSC0200')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7510302', N'Công nghệ kỹ thuật điện tử, truyền thông', N'HUSC0300')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7580101', N'Kiến trúc', N'HUSC0800')
GO
INSERT [dbo].[NganhDaoTao] ([MaNganh], [TenNganh], [MaDonVi]) VALUES (N'7580211', N'Địa kỹ thuật xây dựng', N'HUSC0600')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001001', N'Nguyễn Thị Kim', N'Thoan', 0, CAST(N'1999-01-23' AS Date), N'Bến Tre', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001002', N'Đỗ Thị Việt', N'Uyến', 0, CAST(N'2001-09-18' AS Date), N'Lào Cai', N'K44', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001003', N'Lê Viết Minh', N'Miên', 1, CAST(N'1999-10-04' AS Date), N'Ninh Bình', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001004', N'Hoàng Bá', N'Trân', 1, CAST(N'2002-01-17' AS Date), N'Sơn La', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001005', N'Nguyễn Trần Thanh', N'Phượng', 0, CAST(N'2001-05-14' AS Date), N'Quảng Trị', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001006', N'Đinh Thị Khánh', N'Diểm', 0, CAST(N'2001-02-22' AS Date), N'Kiên Giang', N'K44', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001008', N'Phan Khắc Minh', N'Đăng', 1, CAST(N'2001-06-28' AS Date), N'Quảng Nam', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001009', N'Lê Đình Hữu', N'Ngành', 1, CAST(N'2000-09-30' AS Date), N'Hưng Yên', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001010', N'Hoàng Lê Đức', N'Thơ', 1, CAST(N'2000-02-08' AS Date), N'Hà Tĩnh', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001011', N'Ngô Tôn', N'Bảo', 1, CAST(N'2001-05-01' AS Date), N'Đồng Nai', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001012', N'Lương Thị Kim', N'Thiện', 0, CAST(N'2000-10-12' AS Date), N'Nghệ An', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001013', N'Trần Đức Hoàng', N'Sum', 1, CAST(N'1999-02-27' AS Date), N'Bắc Ninh', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001014', N'Ngô Thị Vân', N'Luân', 0, CAST(N'1999-01-30' AS Date), N'Hà Giang', N'K44', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001015', N'Lê Nguyễn Thủy', N'Tuyến', 0, CAST(N'2002-11-28' AS Date), N'Thừa Thiên Huế', N'K44', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001016', N'Trần Hiền', N'Ngành', 1, CAST(N'2000-01-24' AS Date), N'Thành phố Hồ Chí Minh', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001017', N'Nguyễn Ngự', N'Đoàn', 1, CAST(N'2002-04-21' AS Date), N'Bình Thuận', N'K44', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001018', N'Thái Huỳnh', N'Thi', 0, CAST(N'2000-09-26' AS Date), N'Thừa Thiên Huế', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001019', N'Lương Hữu', N'Niêm', 1, CAST(N'2001-07-14' AS Date), N'Đồng Tháp', N'K44', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001020', N'Trần Tống Nam', N'Thành', 1, CAST(N'1999-07-22' AS Date), N'Tuyên Quang', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001022', N'Đặng Quốc', N'Mãnh', 1, CAST(N'2001-11-18' AS Date), N'Hưng Yên', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001023', N'Trần Quang Minh', N'Lưu', 1, CAST(N'2001-01-24' AS Date), N'Thái Bình', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001025', N'Lê Trọng', N'Sõi', 1, CAST(N'2000-01-30' AS Date), N'Vĩnh Phúc', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001026', N'Văn Phú', N'Phường', 1, CAST(N'1999-04-08' AS Date), N'Lào Cai', N'K44', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001027', N'Lê Ngọc', N'Sah', 1, CAST(N'1999-06-01' AS Date), N'Lạng Sơn', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001028', N'Nguyễn Ngọc Thảo', N'Chi', 0, CAST(N'1999-12-31' AS Date), N'Kon Tum', N'K44', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001031', N'Nguyễn Tống Hoàng', N'Dĩnh', 1, CAST(N'2002-05-22' AS Date), N'Vĩnh Long', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001033', N'Huỳnh Văn Quốc', N'Hiệu', 1, CAST(N'2000-09-21' AS Date), N'Sơn La', N'K44', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001034', N'Ngô Khai Huệ', N'Khảm', 1, CAST(N'2002-09-05' AS Date), N'Bắc Giang', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001036', N'Trương Mỹ', N'Thúy', 0, CAST(N'2000-10-27' AS Date), N'Đồng Tháp', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001037', N'Hồ Thị Như', N'Dinh', 0, CAST(N'2001-11-10' AS Date), N'Lào Cai', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001038', N'Trương Như', N'Đoan', 0, CAST(N'2002-07-30' AS Date), N'Bạc Liêu', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001039', N'Nguyễn Đắc Phi', N'Đính', 1, CAST(N'2002-10-13' AS Date), N'Trà Vinh', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001040', N'Hà Phi', N'Phước', 1, CAST(N'2000-01-06' AS Date), N'Hải Phòng', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001041', N'Nguyễn Kim', N'Ngát', 0, CAST(N'2000-01-29' AS Date), N'Khánh Hòa', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001042', N'Lê Chí', N'Cang', 1, CAST(N'2001-11-12' AS Date), N'Bình Dương', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001043', N'Phan Duy', N'Phúc', 1, CAST(N'2001-10-02' AS Date), N'Thanh Hóa', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001044', N'Nguyễn Đắc Bảo', N'Cao', 1, CAST(N'1999-11-03' AS Date), N'Quảng Ngãi', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001045', N'Lê Ngọc Huyền', N'Đan', 0, CAST(N'1999-08-06' AS Date), N'Ninh Bình', N'K44', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001046', N'Đàm Quang', N'Huân', 1, CAST(N'2000-04-01' AS Date), N'Bình Phước', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001047', N'Trần Thị Lan', N'Phái', 0, CAST(N'1999-10-01' AS Date), N'Trà Vinh', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001048', N'Nguyễn Thị Nam', N'Hiền', 0, CAST(N'2000-02-15' AS Date), N'Sơn La', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001049', N'Nguyễn Phước', N'Thêm', 1, CAST(N'2001-08-29' AS Date), N'Tiền Giang', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001050', N'Trương Trung', N'Niê', 1, CAST(N'2002-12-07' AS Date), N'Thanh Hóa', N'K44', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001051', N'Bùi Lê', N'Cứu', 1, CAST(N'1999-08-31' AS Date), N'Quảng Ninh', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001052', N'Lê Thanh Nhật', N'Hương', 1, CAST(N'2000-11-28' AS Date), N'Lạng Sơn', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001053', N'Nguyễn Trần Thủy', N'Thiết', 0, CAST(N'1999-11-16' AS Date), N'Lai Châu', N'K44', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001055', N'Nguyễn Phạm Thanh', N'Bổn', 1, CAST(N'1999-10-27' AS Date), N'Đồng Nai', N'K44', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001056', N'Dương Thị', N'Cường', 0, CAST(N'1999-05-24' AS Date), N'Gia Lai', N'K44', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001057', N'Phan Võ Thanh', N'Anh', 0, CAST(N'2002-09-08' AS Date), N'Thành phố Hồ Chí Minh', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001058', N'Pơ Loong Thị', N'Trinh', 0, CAST(N'1999-02-08' AS Date), N'Bình Định', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001059', N'Phạm Thị Thiên', N'Doanh', 0, CAST(N'2002-06-13' AS Date), N'Phú Thọ', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001060', N'Lê Thị Lan', N'Tưởng', 0, CAST(N'2001-05-20' AS Date), N'Quảng Trị', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001061', N'Hồ Đắc Thanh', N'Sương', 1, CAST(N'2000-04-03' AS Date), N'Đồng Nai', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001063', N'Nguyễn Tú', N'Thọ', 1, CAST(N'1999-08-10' AS Date), N'Bình Định', N'K44', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001065', N'Đỗ Thị Như', N'Xinh', 0, CAST(N'1999-09-24' AS Date), N'Hà Nội', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001067', N'Phạm Trương Văn', N'Kha', 1, CAST(N'2002-11-02' AS Date), N'Trà Vinh', N'K44', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001068', N'Trần Viết Đình', N'Huyền', 1, CAST(N'2001-09-26' AS Date), N'Bình Dương', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001069', N'Lê Phương', N'Quang', 1, CAST(N'2001-03-15' AS Date), N'Thành phố Hồ Chí Minh', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001070', N'Phouthavong', N'Tuần', 1, CAST(N'2000-12-11' AS Date), N'Đắk Nông', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001071', N'Đặng Xuân', N'Thiện', 1, CAST(N'2000-12-29' AS Date), N'Thái Nguyên', N'K44', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001072', N'Lương Khôi', N'Thanh', 1, CAST(N'2000-03-03' AS Date), N'Ninh Thuận', N'K44', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001073', N'Huỳnh Nhựt', N'Thìn', 1, CAST(N'2002-01-29' AS Date), N'Điện Biên', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001074', N'Trần Viết Quốc', N'Nên', 1, CAST(N'1999-08-30' AS Date), N'Đà Nẵng', N'K44', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001076', N'Tiêu Trí', N'Rin', 1, CAST(N'1999-12-12' AS Date), N'Thừa Thiên Huế', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001077', N'La Lan Thị', N'Nghệ', 0, CAST(N'2001-03-02' AS Date), N'Nghệ An', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001078', N'Phạm Tâm', N'Năm', 1, CAST(N'2002-09-04' AS Date), N'Bạc Liêu', N'K44', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001079', N'Hồ Thành', N'Đoàn', 1, CAST(N'2001-06-14' AS Date), N'Bắc Ninh', N'K44', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001080', N'Trần Thị Hoàng', N'Dan', 0, CAST(N'2003-11-13' AS Date), N'Hải Phòng', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001082', N'Lê Hữu Trí', N'Trãi', 1, CAST(N'2000-01-06' AS Date), N'Cần Thơ', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001084', N'Nguyễn Ngọc Quyền', N'Ren', 1, CAST(N'2002-08-16' AS Date), N'Điện Biên', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001085', N'Mai Thị Nhã', N'Ước', 0, CAST(N'2000-11-14' AS Date), N'Bình Dương', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001086', N'Trịnh Thị Mỹ', N'Lứt', 0, CAST(N'2001-08-17' AS Date), N'Hòa Bình', N'K45', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001087', N'Hà Sĩ', N'Trường', 1, CAST(N'2001-03-15' AS Date), N'Ninh Thuận', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001088', N'Huỳnh Nguyễn Phương', N'Hưỡng', 1, CAST(N'2002-06-20' AS Date), N'Bắc Ninh', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001089', N'Lý Công', N'Phải', 1, CAST(N'2002-04-21' AS Date), N'Quảng Trị', N'K45', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001090', N'Lê', N'Giải', 1, CAST(N'2002-05-24' AS Date), N'Vĩnh Phúc', N'K45', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001091', N'Huỳnh Thị Thuý', N'Hường', 0, CAST(N'2002-03-14' AS Date), N'Trà Vinh', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001094', N'Phạm Lê Quý', N'Khởi', 1, CAST(N'2001-02-22' AS Date), N'Quảng Nam', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001095', N'Hồ Thị Cẩm', N'Hạo', 0, CAST(N'2001-08-01' AS Date), N'Cần Thơ', N'K45', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001097', N'Huỳnh Nguyễn Phương', N'Hằng', 0, CAST(N'2003-06-10' AS Date), N'Nghệ An', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001098', N'Lâm Huỳnh Tấn', N'Hải', 1, CAST(N'2000-04-30' AS Date), N'Cao Bằng', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001099', N'Hồ Thị Cẩm', N'Lớt', 0, CAST(N'2001-08-16' AS Date), N'Hòa Bình', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001100', N'Lý Minh', N'Nhơn', 1, CAST(N'2002-05-22' AS Date), N'Quảng Nam', N'K45', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001101', N'Nguyễn Nhật Thành', N'Toãn', 1, CAST(N'2003-12-29' AS Date), N'Cao Bằng', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001102', N'Lê Thị Huyền', N'Lỉnh', 0, CAST(N'2002-12-10' AS Date), N'Hà Giang', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001105', N'Hoàng Thị Kiều', N'Mên', 0, CAST(N'2002-03-11' AS Date), N'Ninh Thuận', N'K45', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001106', N'Trần Chính', N'Luật', 1, CAST(N'2000-09-05' AS Date), N'Hà Nội', N'K45', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001107', N'Võ Duy Trung', N'Toan', 1, CAST(N'2003-01-04' AS Date), N'Hà Nam', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001108', N'Võ Lê Tấn', N'Giảng', 1, CAST(N'2003-05-29' AS Date), N'Đắk Nông', N'K45', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001109', N'Nguyễn Nữ Tố', N'Công', 0, CAST(N'2003-03-17' AS Date), N'Bắc Kạn', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001111', N'Ngô Quốc Nguyên', N'Uyên', 1, CAST(N'2001-09-18' AS Date), N'Bà Rịa - Vũng Tàu', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001112', N'Phạm Hữu Vĩnh', N'Quí', 1, CAST(N'2003-04-24' AS Date), N'Phú Yên', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001116', N'Nguyễn Văn Tịnh', N'Quảng', 1, CAST(N'2002-11-08' AS Date), N'Kon Tum', N'K45', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001117', N'Võ Văn Nguyên', N'Quầy', 1, CAST(N'2001-09-17' AS Date), N'Lào Cai', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001118', N'Phan Thảo', N'Tấn', 0, CAST(N'2003-05-17' AS Date), N'Thừa Thiên Huế', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001119', N'Đinh Quốc', N'Ánh', 1, CAST(N'2002-05-22' AS Date), N'Hà Tĩnh', N'K45', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001120', N'Trần Mỹ Uyên', N'Cam', 0, CAST(N'2002-09-29' AS Date), N'Quảng Trị', N'K45', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001121', N'Trần Long Viển', N'Quyền', 1, CAST(N'2001-03-23' AS Date), N'Lai Châu', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001122', N'Nghiêm Trần Bảo', N'Thoan', 0, CAST(N'2003-03-23' AS Date), N'Trà Vinh', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001123', N'Nguyễn Ngọc Anh', N'Thường', 0, CAST(N'2000-08-16' AS Date), N'Tây Ninh', N'K45', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001125', N'Dương Kiều', N'Linh', 0, CAST(N'2001-01-05' AS Date), N'Bình Định', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001126', N'Đỗ Thị Minh', N'Pháp', 0, CAST(N'2002-03-27' AS Date), N'Nam Định', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001127', N'Nguyễn Thị Liêng', N'Thuỷ', 0, CAST(N'2001-07-07' AS Date), N'Hải Dương', N'K45', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001128', N'Đỗ Tiến', N'Kông', 1, CAST(N'2003-04-12' AS Date), N'Phú Yên', N'K45', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001130', N'Phạm Hữu', N'Thước', 1, CAST(N'2002-02-18' AS Date), N'Sóc Trăng', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001132', N'Phạm Lê Nhật', N'Hiếm', 1, CAST(N'2003-05-26' AS Date), N'Sóc Trăng', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001133', N'Ngô Thúy', N'Sanh', 0, CAST(N'2002-10-19' AS Date), N'Thành phố Hồ Chí Minh', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001134', N'Vũ Hải Yến', N'Huy', 1, CAST(N'2001-03-15' AS Date), N'Tuyên Quang', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001135', N'Phạm Hồng', N'Quả', 1, CAST(N'2001-09-19' AS Date), N'Vĩnh Phúc', N'K45', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001136', N'Võ Văn Hữu', N'Nguyên', 1, CAST(N'2000-10-03' AS Date), N'Quảng Trị', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001137', N'Hoàng Thái Vũ', N'Hóa', 1, CAST(N'2001-05-20' AS Date), N'Hà Nam', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001138', N'Ngô Kiều', N'Giàu', 0, CAST(N'2000-05-10' AS Date), N'Thái Nguyên', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001139', N'Trần Khương', N'Lít', 1, CAST(N'2002-04-24' AS Date), N'Thừa Thiên Huế', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001140', N'Võ Trung', N'Đán', 1, CAST(N'2003-10-02' AS Date), N'Nghệ An', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001141', N'Trần Tiểu', N'Lợi', 0, CAST(N'2003-02-03' AS Date), N'Cà Mau', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001142', N'Hà Thúc Đức', N'Trực', 1, CAST(N'2000-08-10' AS Date), N'Thái Bình', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001143', N'Hồ Đắc Thảo', N'Quê', 0, CAST(N'2002-12-15' AS Date), N'Cần Thơ', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001144', N'Huỳnh Ngọc Vĩnh', N'Dân', 1, CAST(N'2002-03-13' AS Date), N'Đắk Lắk', N'K45', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001145', N'Dương Văn Lâm', N'Trình', 1, CAST(N'2000-01-02' AS Date), N'An Giang', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001146', N'Dương Vũ Quỳnh', N'Phước', 0, CAST(N'2000-03-01' AS Date), N'Đồng Tháp', N'K45', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001147', N'Đoàn Thị Hải', N'Vợt', 0, CAST(N'2001-12-15' AS Date), N'Vĩnh Phúc', N'K45', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001148', N'Dương Thị Xuân', N'Coi', 0, CAST(N'2000-06-15' AS Date), N'Trà Vinh', N'K45', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001149', N'Nguyễn Tấn', N'Huỳnh', 1, CAST(N'2002-11-29' AS Date), N'Sơn La', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001150', N'Vũ Thị', N'Nha', 0, CAST(N'2002-06-09' AS Date), N'Bình Dương', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001151', N'Huỳnh Công', N'Niên', 1, CAST(N'2001-08-15' AS Date), N'Phú Thọ', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001152', N'Trần Thị Thái', N'Rong', 0, CAST(N'2003-08-05' AS Date), N'Đồng Tháp', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001154', N'Phan Hữu Tuấn', N'Nhị', 1, CAST(N'2000-01-10' AS Date), N'Bến Tre', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001155', N'Thái Vũ', N'Luân', 1, CAST(N'2001-08-25' AS Date), N'Bà Rịa - Vũng Tàu', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001156', N'Vương Thị Bích', N'Kiều', 0, CAST(N'2002-09-04' AS Date), N'Đồng Nai', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001157', N'Đoàn Gia', N'Chiểu', 1, CAST(N'2001-03-19' AS Date), N'Tuyên Quang', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001159', N'Đỗ Chơn', N'Mãi', 1, CAST(N'2002-03-10' AS Date), N'Cần Thơ', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001160', N'Hồ Thị Thủy', N'Trí', 0, CAST(N'2001-10-23' AS Date), N'Thừa Thiên Huế', N'K45', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001161', N'Lê Quý', N'Hoàng', 0, CAST(N'2002-01-29' AS Date), N'Quảng Nam', N'K45', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001162', N'Hoàng Đức', N'Trai', 1, CAST(N'2001-09-26' AS Date), N'Nghệ An', N'K45', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001163', N'Hồ Như', N'Hoạch', 1, CAST(N'2002-04-01' AS Date), N'Quảng Ninh', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001164', N'Phan Văn Nhật', N'Vui', 1, CAST(N'2002-08-22' AS Date), N'Đồng Nai', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001165', N'Ngô Tiến', N'Thiên', 1, CAST(N'2002-12-30' AS Date), N'Phú Thọ', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001168', N'Tống Xuân', N'Dìn', 1, CAST(N'2001-01-21' AS Date), N'Lai Châu', N'K45', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001169', N'Bùi Gia', N'Giác', 1, CAST(N'2002-01-17' AS Date), N'Hà Nam', N'K45', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001171', N'Nguyễn Đức Nguyên', N'Tiến', 1, CAST(N'2001-09-08' AS Date), N'Bình Phước', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001173', N'Quách Kim', N'Hợi', 1, CAST(N'2000-09-26' AS Date), N'An Giang', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001174', N'Đặng Ngọc Hoàng', N'Khả', 0, CAST(N'2000-04-14' AS Date), N'Hải Phòng', N'K45', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001176', N'Lê Huỳnh Viết', N'Mong', 1, CAST(N'2002-11-03' AS Date), N'Bạc Liêu', N'K45', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001177', N'Phan Dương', N'Thước', 1, CAST(N'2002-09-14' AS Date), N'Bình Phước', N'K45', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001178', N'Hồ Sỷ', N'Khánh', 1, CAST(N'2001-06-28' AS Date), N'Bắc Giang', N'K45', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001179', N'Đặng Khắc', N'Toàn', 1, CAST(N'2000-12-11' AS Date), N'Thái Nguyên', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001180', N'Lê Hải Kiều', N'Chỉnh', 0, CAST(N'2000-03-07' AS Date), N'Thừa Thiên Huế', N'K45', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001181', N'Tôn Thất Thanh', N'Đỉnh', 1, CAST(N'2001-08-31' AS Date), N'An Giang', N'K45', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001182', N'Phạm Thị Như', N'Hương', 0, CAST(N'2001-01-08' AS Date), N'Cà Mau', N'K45', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001183', N'Lê Phước Thanh', N'Thân', 1, CAST(N'2002-06-06' AS Date), N'Vĩnh Phúc', N'K46', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001185', N'Phan Lê Thanh', N'Pha', 1, CAST(N'2003-10-10' AS Date), N'Hà Giang', N'K46', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001186', N'Lê Viết Trương', N'Năng', 1, CAST(N'2002-03-24' AS Date), N'Bến Tre', N'K46', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001187', N'Trác Lực', N'Thước', 1, CAST(N'2002-08-18' AS Date), N'Thái Nguyên', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001188', N'Lê Hữu Trí', N'Đạo', 1, CAST(N'2002-11-24' AS Date), N'Bắc Ninh', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001190', N'Nguyễn Lê Trúc', N'Thom', 0, CAST(N'2003-10-22' AS Date), N'Lạng Sơn', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001191', N'Lê Thị Gia', N'Mỏi', 0, CAST(N'2001-06-20' AS Date), N'Vĩnh Phúc', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001193', N'Lê Quang Ngọc', N'Điện', 1, CAST(N'2002-11-02' AS Date), N'Bắc Giang', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001194', N'Mai Đình', N'Còi', 1, CAST(N'2001-09-25' AS Date), N'An Giang', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001195', N'Trần Hiếu Bảo', N'Dét', 1, CAST(N'2003-12-14' AS Date), N'Trà Vinh', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001197', N'Phạm Trương Văn', N'Chiến', 1, CAST(N'2004-08-06' AS Date), N'Đà Nẵng', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001198', N'Doãn Phan', N'Lai', 1, CAST(N'2001-06-05' AS Date), N'Lào Cai', N'K46', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001199', N'Phạm Hồng Linh', N'Thái', 0, CAST(N'2002-11-29' AS Date), N'Hà Nam', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001203', N'Bùi Nam', N'Vĩnh', 1, CAST(N'2001-07-26' AS Date), N'Quảng Nam', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001205', N'Nguyễn Kim Lộc', N'Hưởng', 1, CAST(N'2002-01-17' AS Date), N'Nghệ An', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001206', N'Kêr Cuối', N'Trước', 1, CAST(N'2003-05-30' AS Date), N'Hà Tĩnh', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001208', N'Nguyễn Trần Nhã', N'Đượm', 0, CAST(N'2003-05-21' AS Date), N'Tây Ninh', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001209', N'Lê Phú Nhật', N'Soi', 1, CAST(N'2004-12-01' AS Date), N'Sơn La', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001211', N'Lê Ngọc Quốc', N'Vàng', 1, CAST(N'2004-07-11' AS Date), N'Quảng Bình', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001212', N'Lê Nguyễn Bảo', N'Uynh', 1, CAST(N'2001-07-14' AS Date), N'Lạng Sơn', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001213', N'Phạm Thúy', N'Sương', 0, CAST(N'2002-07-31' AS Date), N'Bắc Ninh', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001214', N'Dương Thị Bích', N'Châm', 0, CAST(N'2001-07-12' AS Date), N'Thừa Thiên Huế', N'K46', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001215', N'Lê Danh', N'Thạch', 1, CAST(N'2003-12-14' AS Date), N'Quảng Ninh', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001216', N'Trương Diên Viết', N'Văn', 1, CAST(N'2004-09-01' AS Date), N'Ninh Thuận', N'K46', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001217', N'Nguyễn Hửu', N'Sành', 1, CAST(N'2003-11-13' AS Date), N'Bình Dương', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001219', N'Hồ Xuân Tuấn', N'Nhiên', 1, CAST(N'2003-12-18' AS Date), N'Cao Bằng', N'K46', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001220', N'Võ Ngọc Lâm', N'Đoan', 1, CAST(N'2001-08-16' AS Date), N'Hậu Giang', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001221', N'Trần Thị Nhã', N'Khé', 0, CAST(N'2004-09-30' AS Date), N'Hà Nội', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001222', N'Khương', N'Mlô', 1, CAST(N'2002-05-27' AS Date), N'Thừa Thiên Huế', N'K46', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001223', N'Hà Quang', N'Quầy', 1, CAST(N'2002-01-29' AS Date), N'Tuyên Quang', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001224', N'Tôn Nữ Thanh', N'Oanh', 0, CAST(N'2004-12-18' AS Date), N'Thành phố Hồ Chí Minh', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001225', N'Dương Vũ', N'Thảnh', 1, CAST(N'2001-09-21' AS Date), N'Đồng Tháp', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001228', N'Phan Hữu Quỳnh', N'Nhóoc', 1, CAST(N'2002-04-15' AS Date), N'Kon Tum', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001229', N'Hoàng Nữ Huyền', N'Chính', 0, CAST(N'2003-03-05' AS Date), N'Hải Phòng', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001230', N'Phạm Ánh', N'Nang', 0, CAST(N'2001-10-28' AS Date), N'Kon Tum', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001231', N'Đặng Thành', N'Tuất', 1, CAST(N'2002-04-14' AS Date), N'Đà Nẵng', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001232', N'Nguyễn Dương', N'Tiên', 1, CAST(N'2001-08-17' AS Date), N'Cà Mau', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001233', N'Lê Nguyễn Bảo', N'Tính', 1, CAST(N'2003-12-07' AS Date), N'Kiên Giang', N'K46', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001235', N'Hồ Xuân', N'Tâm', 1, CAST(N'2001-11-01' AS Date), N'Bình Thuận', N'K46', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001236', N'Đặng Kiều', N'Trúc', 0, CAST(N'2003-02-03' AS Date), N'Kon Tum', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001237', N'Trần Ninh', N'Khởi', 1, CAST(N'2002-01-01' AS Date), N'Hà Nội', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001238', N'Thái Công', N'Huyền', 1, CAST(N'2001-02-20' AS Date), N'Đà Nẵng', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001239', N'Mai Quốc', N'Đán', 1, CAST(N'2004-08-15' AS Date), N'Bà Rịa - Vũng Tàu', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001240', N'Nguyễn Thị Trường', N'Trì', 0, CAST(N'2002-10-27' AS Date), N'Bà Rịa - Vũng Tàu', N'K46', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001241', N'Trần Hai', N'Thóc', 0, CAST(N'2004-09-16' AS Date), N'Vĩnh Phúc', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001242', N'Lê Thừa', N'Ngà', 1, CAST(N'2002-07-22' AS Date), N'Bạc Liêu', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001245', N'Mai Viết', N'Thọ', 1, CAST(N'2001-03-15' AS Date), N'Hà Tĩnh', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001246', N'Phan Thị Trúc', N'Thụy', 0, CAST(N'2001-07-30' AS Date), N'Nam Định', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001247', N'Lê Bích', N'Quyến', 1, CAST(N'2002-08-22' AS Date), N'Cao Bằng', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001249', N'Khuất Thị', N'Nghe', 0, CAST(N'2002-06-16' AS Date), N'Đắk Nông', N'K46', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001251', N'Đặng Văn', N'Hết', 1, CAST(N'2004-08-07' AS Date), N'Kon Tum', N'K46', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001252', N'Trịnh Công Bình', N'Cang', 1, CAST(N'2004-11-24' AS Date), N'Thành phố Hồ Chí Minh', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001253', N'Lê Trọng Minh', N'Nhan', 1, CAST(N'2002-10-02' AS Date), N'Bắc Giang', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001254', N'Đỗ Hữu Quang', N'Vang', 1, CAST(N'2004-02-04' AS Date), N'Lạng Sơn', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001255', N'Phùng Kim', N'Tấn', 1, CAST(N'2001-01-09' AS Date), N'Thừa Thiên Huế', N'K46', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001257', N'Đào Thị Như', N'Đoá', 0, CAST(N'2003-05-21' AS Date), N'Quảng Ngãi', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001259', N'Văn Khánh', N'Điếu', 1, CAST(N'2002-03-15' AS Date), N'An Giang', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001260', N'Võ Hưng', N'Pha', 1, CAST(N'2003-04-26' AS Date), N'Lâm Đồng', N'K46', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001261', N'Nguyễn Trọng Thịnh', N'Lân', 1, CAST(N'2001-05-08' AS Date), N'Vĩnh Long', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001262', N'Huỳnh Ngọc Yên', N'Hòa', 0, CAST(N'2002-10-19' AS Date), N'Khánh Hòa', N'K46', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001263', N'Châu Thị Ngọc', N'Nhị', 0, CAST(N'2003-06-30' AS Date), N'Bắc Kạn', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001264', N'Phạm Nguyễn Minh', N'Cầu', 1, CAST(N'2001-04-16' AS Date), N'Tiền Giang', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001265', N'Hồ Thị Việt', N'Xanh', 0, CAST(N'2004-07-12' AS Date), N'Hà Giang', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001267', N'Lê Hồng', N'Linh', 1, CAST(N'2002-04-30' AS Date), N'Thái Nguyên', N'K46', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001268', N'Nguyễn Cảnh', N'Phường', 1, CAST(N'2003-11-24' AS Date), N'Phú Thọ', N'K46', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001270', N'Bùi Mỹ', N'Mận', 0, CAST(N'2002-03-11' AS Date), N'Bến Tre', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001271', N'Hoàng Quốc', N'Ngôn', 1, CAST(N'2004-11-28' AS Date), N'Lai Châu', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001273', N'Hoàng Tuấn', N'Lời', 1, CAST(N'2002-06-09' AS Date), N'Quảng Trị', N'K46', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001276', N'Nguyễn Thanh Hà', N'Dược', 1, CAST(N'2004-07-09' AS Date), N'Bắc Ninh', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001278', N'Nguyễn Trần Anh', N'Đông', 1, CAST(N'2003-04-28' AS Date), N'Thừa Thiên Huế', N'K46', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001279', N'Phan Tăng', N'Khá', 1, CAST(N'2004-05-23' AS Date), N'Hà Nội', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001280', N'Đặng Nguyễn Nhật', N'Hoạch', 1, CAST(N'2004-11-13' AS Date), N'Lâm Đồng', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001281', N'Trần Ngọc Xuân', N'Linh', 0, CAST(N'2004-12-02' AS Date), N'Đồng Nai', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001282', N'Ngô Trần Thuận', N'Tấn', 1, CAST(N'2003-04-17' AS Date), N'Khánh Hòa', N'K46', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001283', N'Đinh Thị Hồng', N'Thùy', 0, CAST(N'2003-12-29' AS Date), N'Lai Châu', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001284', N'Hồ Đắc Quỳnh', N'Mưng', 0, CAST(N'2003-04-12' AS Date), N'Điện Biên', N'K46', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001285', N'Đinh Thiện', N'Loan', 1, CAST(N'2002-09-24' AS Date), N'Bình Định', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001286', N'Ksơr Hờ', N'Chinh', 0, CAST(N'2003-10-05' AS Date), N'Tuyên Quang', N'K46', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001287', N'Trịnh Thị Tuyết', N'Huỳnh', 0, CAST(N'2001-07-01' AS Date), N'An Giang', N'K46', N'7229030')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001288', N'Hoàng Đăng Quốc', N'Gia', 1, CAST(N'2004-11-21' AS Date), N'Cà Mau', N'K46', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001289', N'Phạm Nguyễn Xuân', N'Xinh', 0, CAST(N'2003-08-24' AS Date), N'Bến Tre', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001290', N'Thái Y', N'Nhiên', 0, CAST(N'2001-11-24' AS Date), N'Lào Cai', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001291', N'Trần Đình Khánh', N'Nhỏ', 0, CAST(N'2003-03-25' AS Date), N'Quảng Bình', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001292', N'Lê Thị Thúy', N'Hải', 0, CAST(N'2003-08-14' AS Date), N'Tây Ninh', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001293', N'Lưu Văn', N'Tảo', 1, CAST(N'2003-11-24' AS Date), N'Gia Lai', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001294', N'Đỗ Lê', N'Dương', 1, CAST(N'2003-03-17' AS Date), N'Đồng Nai', N'K46', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001295', N'Cao Phước', N'Nhỉ', 1, CAST(N'2001-12-06' AS Date), N'Cà Mau', N'K46', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001296', N'Nguyễn Tâm Tuấn', N'Lân', 1, CAST(N'2004-12-02' AS Date), N'Bắc Ninh', N'K46', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001298', N'Bùi Thông Hải', N'Duỷ', 1, CAST(N'2001-02-18' AS Date), N'Tây Ninh', N'K46', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001299', N'Nguyễn Hoàng Quang Minh', N'Sắc', 1, CAST(N'2001-08-28' AS Date), N'Khánh Hòa', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001300', N'Võ Thị Trang', N'Nhựt', 0, CAST(N'2002-09-05' AS Date), N'Hải Dương', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001301', N'Nguyễn Vĩnh', N'Phải', 1, CAST(N'2004-07-14' AS Date), N'Thừa Thiên Huế', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001302', N'Phan Thị Yến', N'Thể', 0, CAST(N'2004-04-04' AS Date), N'Ninh Bình', N'K46', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001303', N'Lê Đỗ Huyền', N'Chót', 0, CAST(N'2001-03-27' AS Date), N'Điện Biên', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001304', N'Lê Đức Nhật', N'Phước', 0, CAST(N'2002-11-21' AS Date), N'Cần Thơ', N'K46', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001305', N'Phan Quý Nhật', N'Dương', 1, CAST(N'2002-07-13' AS Date), N'Nam Định', N'K46', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001306', N'Đoàn Kim', N'Giải', 1, CAST(N'2002-01-09' AS Date), N'Quảng Trị', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001307', N'Phan Thị Thoa', N'Chánh', 0, CAST(N'2003-09-06' AS Date), N'Đắk Lắk', N'K46', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001308', N'Đỗ Viết', N'Tường', 1, CAST(N'2003-01-04' AS Date), N'Phú Thọ', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001310', N'Đoàn Lê Quốc', N'Mạnh', 1, CAST(N'2003-11-24' AS Date), N'Quảng Ninh', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001311', N'Văn Đoàn Minh', N'Sít', 1, CAST(N'2003-05-30' AS Date), N'Hà Giang', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001313', N'Ngô Tiến', N'Phu', 1, CAST(N'2005-10-11' AS Date), N'Quảng Bình', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001314', N'Đoàn Quốc', N'Nhàn', 1, CAST(N'2003-09-02' AS Date), N'Quảng Ngãi', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001316', N'Đặng Vĩnh', N'Thuật', 1, CAST(N'2004-02-16' AS Date), N'Hà Tĩnh', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001319', N'Đỗ Nguyên', N'Vãng', 1, CAST(N'2005-07-22' AS Date), N'Tây Ninh', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001320', N'Đoàn', N'Thiền', 1, CAST(N'2004-10-11' AS Date), N'Bạc Liêu', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001321', N'Nguyễn Cát', N'Liên', 0, CAST(N'2005-06-04' AS Date), N'Bình Dương', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001323', N'Phạm Thị Thương', N'Nhất', 0, CAST(N'2003-11-01' AS Date), N'Vĩnh Long', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001324', N'Đào Thị Tú', N'Von', 0, CAST(N'2005-09-17' AS Date), N'Thái Nguyên', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001325', N'Trương Thị Hồng', N'Song', 1, CAST(N'2004-04-11' AS Date), N'Hải Phòng', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001326', N'Đặng Hữu', N'Xanh', 1, CAST(N'2005-03-14' AS Date), N'Cao Bằng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001328', N'Vũ Thuý', N'Phim', 0, CAST(N'2005-12-20' AS Date), N'Vĩnh Long', N'K47', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001330', N'Trần Bá', N'Khuyến', 1, CAST(N'2005-10-01' AS Date), N'Sóc Trăng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001331', N'Nguyễn Thị Hoa', N'Hà', 0, CAST(N'2005-07-05' AS Date), N'Ninh Thuận', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001332', N'Cao Gia', N'Đại', 1, CAST(N'2005-07-13' AS Date), N'Hà Nam', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001334', N'Phạm Thế', N'Tuy', 1, CAST(N'2005-07-31' AS Date), N'Bình Định', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001335', N'Đỗ Tường', N'Huỳnh', 1, CAST(N'2005-12-20' AS Date), N'Thái Bình', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001336', N'Trần Cảnh', N'Diện', 1, CAST(N'2003-05-22' AS Date), N'Hà Nam', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001337', N'Trần Ninh', N'Thành', 1, CAST(N'2003-07-27' AS Date), N'Cao Bằng', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001338', N'Phan Cảnh Anh', N'Hưởng', 1, CAST(N'2004-03-06' AS Date), N'Thành phố Hồ Chí Minh', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001339', N'Hồ Thị Diễm', N'Nhiều', 0, CAST(N'2003-10-19' AS Date), N'Thái Nguyên', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001340', N'Hoàng Thị Huyền', N'Đông', 0, CAST(N'2004-07-14' AS Date), N'Kon Tum', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001342', N'Hoàng Phương', N'Bông', 0, CAST(N'2005-09-18' AS Date), N'Lâm Đồng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001343', N'Nguyễn Thị Nghi', N'Nga', 0, CAST(N'2003-05-04' AS Date), N'Phú Yên', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001345', N'Đỗ Thị Hoa', N'Hoàn', 0, CAST(N'2003-12-19' AS Date), N'Kiên Giang', N'K47', N'7310205')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001346', N'Văn Lê Nam', N'Linh', 0, CAST(N'2003-05-26' AS Date), N'Quảng Trị', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001347', N'Phan Tâm', N'Tú', 1, CAST(N'2004-04-29' AS Date), N'Khánh Hòa', N'K47', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001348', N'Đoàn Thị Trúc', N'Thùy', 0, CAST(N'2004-09-16' AS Date), N'Kon Tum', N'K47', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001349', N'Phan Tấn', N'Tặng', 1, CAST(N'2005-06-16' AS Date), N'Vĩnh Long', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001350', N'Hoàng Quang', N'Hiếm', 1, CAST(N'2004-03-08' AS Date), N'Đồng Tháp', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001351', N'Lò Thái', N'Cương', 1, CAST(N'2005-08-02' AS Date), N'Đắk Lắk', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001352', N'Lưu Đình', N'Trà', 1, CAST(N'2004-06-09' AS Date), N'Hà Giang', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001353', N'Bạch Hoàng Khoa', N'Phố', 0, CAST(N'2005-12-27' AS Date), N'Sơn La', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001354', N'Hoàng Thị Thu', N'Yên', 0, CAST(N'2005-07-15' AS Date), N'Cao Bằng', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001355', N'Hà Phạm Tú', N'Thích', 0, CAST(N'2005-08-06' AS Date), N'Bình Thuận', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001356', N'Đinh Mạnh', N'Toãn', 1, CAST(N'2004-12-02' AS Date), N'Bình Phước', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001357', N'Ngô Phú', N'Nhiều', 1, CAST(N'2004-05-23' AS Date), N'Bắc Giang', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001358', N'Trần Võ Đình', N'San', 1, CAST(N'2005-09-25' AS Date), N'Bắc Kạn', N'K47', N'7310205')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001359', N'Đỗ Hữu Quang', N'Đẩu', 1, CAST(N'2005-04-03' AS Date), N'Quảng Trị', N'K47', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001360', N'Khương Thị', N'Nha', 0, CAST(N'2005-11-30' AS Date), N'Vĩnh Phúc', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001361', N'Hoàng Ngô Bình', N'Sửu', 1, CAST(N'2005-01-24' AS Date), N'Lạng Sơn', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001363', N'Phan Viết Anh', N'Hận', 1, CAST(N'2005-01-07' AS Date), N'Quảng Ngãi', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001365', N'Đoàn Phi', N'Cương', 1, CAST(N'2004-05-23' AS Date), N'Vĩnh Phúc', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001366', N'Lê Quang Nhật', N'Hết', 1, CAST(N'2005-12-29' AS Date), N'Bà Rịa - Vũng Tàu', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001367', N'Phạm Huỳnh Như', N'Ngãi', 0, CAST(N'2004-01-15' AS Date), N'Thái Bình', N'K47', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001368', N'Nguyễn Diệu', N'Lân', 0, CAST(N'2004-09-26' AS Date), N'Hưng Yên', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001369', N'Lê Quang Trọng', N'Trở', 1, CAST(N'2004-09-18' AS Date), N'Cà Mau', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001370', N'Trần Đình Khánh', N'Toản', 0, CAST(N'2005-06-02' AS Date), N'Nghệ An', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001371', N'Võ Tự', N'Dìn', 1, CAST(N'2003-08-28' AS Date), N'Cao Bằng', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001372', N'Phan Gia', N'Hợp', 1, CAST(N'2005-12-29' AS Date), N'Sóc Trăng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001373', N'Đào Văn', N'Son', 1, CAST(N'2003-12-29' AS Date), N'Thành phố Hồ Chí Minh', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001374', N'Võ Phước Minh', N'Cần', 1, CAST(N'2005-04-30' AS Date), N'Kiên Giang', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001375', N'Ngô Quốc Nguyên', N'Bằng', 1, CAST(N'2005-01-29' AS Date), N'Gia Lai', N'K47', N'7310205')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001376', N'Dương Lý Thanh', N'Ngoan', 0, CAST(N'2004-12-16' AS Date), N'Bạc Liêu', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001377', N'Nguyễn Tùng', N'Luận', 1, CAST(N'2004-06-16' AS Date), N'Quảng Bình', N'K47', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001378', N'Đỗ Đặng Huyền', N'Tiệm', 0, CAST(N'2004-04-21' AS Date), N'Thanh Hóa', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001379', N'Trương Ngọc Ý', N'Hụê', 0, CAST(N'2003-04-19' AS Date), N'Bắc Giang', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001380', N'Hồ Lê Minh', N'Thành', 1, CAST(N'2005-12-23' AS Date), N'Cần Thơ', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001381', N'Đỗ Thanh', N'Hiếu', 1, CAST(N'2004-07-28' AS Date), N'Quảng Ninh', N'K47', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001382', N'Huỳnh Hoài', N'Thoại', 1, CAST(N'2005-10-04' AS Date), N'Thừa Thiên Huế', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001383', N'Ngô Trần Thuận', N'Đời', 1, CAST(N'2005-11-26' AS Date), N'Vĩnh Long', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001384', N'Đặng Việt', N'Hạnh', 1, CAST(N'2003-08-22' AS Date), N'Bắc Ninh', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001385', N'Lê Nguyễn Thúy', N'Thời', 0, CAST(N'2004-06-18' AS Date), N'Đắk Nông', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001386', N'Lê Hoàng Anh', N'Báu', 1, CAST(N'2004-11-25' AS Date), N'Đồng Tháp', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001387', N'Phạm Quyết', N'Giáo', 1, CAST(N'2005-06-03' AS Date), N'Đà Nẵng', N'K47', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001388', N'Vũ Quang', N'Trôi', 1, CAST(N'2003-01-27' AS Date), N'Hưng Yên', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001389', N'Huỳnh Đình', N'Khâu', 1, CAST(N'2005-01-10' AS Date), N'Hà Nội', N'K47', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001390', N'Lê Thi Văn', N'Den', 1, CAST(N'2005-04-22' AS Date), N'Khánh Hòa', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001391', N'Phạm Lê Uyển', N'Linh', 0, CAST(N'2005-06-20' AS Date), N'Bắc Giang', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001392', N'Âu Thị Thanh', N'Hão', 0, CAST(N'2005-03-10' AS Date), N'Hà Tĩnh', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001393', N'Trịnh Thị Thùy', N'Khua', 0, CAST(N'2004-11-21' AS Date), N'Hà Tĩnh', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001394', N'Nguyễn Thị Khánh', N'Chinh', 0, CAST(N'2004-03-05' AS Date), N'Kiên Giang', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001396', N'Đỗ Tấn', N'Nên', 1, CAST(N'2005-08-10' AS Date), N'Thừa Thiên Huế', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001397', N'Trịnh Thùy', N'Phơi', 0, CAST(N'2003-09-20' AS Date), N'Hải Phòng', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001398', N'Tạ Thị', N'Nhôi', 0, CAST(N'2003-08-16' AS Date), N'Hải Phòng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001399', N'Trần Kim', N'Trai', 1, CAST(N'2005-01-09' AS Date), N'Sóc Trăng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001400', N'Hoàng Kim Ngọc', N'Ngơi', 1, CAST(N'2005-03-14' AS Date), N'Bình Thuận', N'K47', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001401', N'Võ Hồng', N'San', 0, CAST(N'2004-08-20' AS Date), N'Phú Yên', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001402', N'Xuân Quốc', N'Dũng', 1, CAST(N'2005-06-14' AS Date), N'Trà Vinh', N'K47', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001403', N'Phan Duy Minh', N'Thôi', 1, CAST(N'2003-02-01' AS Date), N'Lai Châu', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001404', N'Trần Thị Dịu', N'Chiên', 0, CAST(N'2003-04-09' AS Date), N'Điện Biên', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001406', N'Vương Quốc', N'Định', 1, CAST(N'2005-05-17' AS Date), N'Quảng Nam', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001407', N'Lê Châu', N'Ưng', 1, CAST(N'2003-10-02' AS Date), N'Ninh Thuận', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001408', N'Bùi Viết', N'Nhạc', 1, CAST(N'2004-08-15' AS Date), N'Lâm Đồng', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001409', N'Phan Công Thái', N'Như', 1, CAST(N'2005-11-24' AS Date), N'Đồng Nai', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001410', N'Dư Bá', N'Cương', 1, CAST(N'2004-05-15' AS Date), N'Bình Phước', N'K47', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001411', N'Trần An', N'Truyên', 1, CAST(N'2004-12-02' AS Date), N'Hậu Giang', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001412', N'Nguyễn Thùy', N'Cảnh', 0, CAST(N'2005-11-18' AS Date), N'Hà Nam', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001413', N'Phạm Hữu Nhật', N'Kiệt', 1, CAST(N'2005-03-28' AS Date), N'Hưng Yên', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001414', N'Lê Nguyễn Phương Huyền', N'Kông', 0, CAST(N'2004-09-20' AS Date), N'Đà Nẵng', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001416', N'Phạm Đại', N'Bức', 1, CAST(N'2003-02-03' AS Date), N'Hậu Giang', N'K47', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001417', N'Nguyễn Hải Hồng', N'Khánh', 1, CAST(N'2003-10-30' AS Date), N'Hà Tĩnh', N'K47', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001420', N'Nguyễn Thụy Thanh', N'Buôn', 0, CAST(N'2004-02-03' AS Date), N'Nam Định', N'K47', N'7310205')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001421', N'Lê Xuân', N'Tươi', 1, CAST(N'2005-07-14' AS Date), N'Bắc Kạn', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001422', N'Lê Thị Hoàng', N'Khé', 0, CAST(N'2005-07-05' AS Date), N'Lạng Sơn', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001423', N'Mai Thị Huyền', N'Dan', 0, CAST(N'2003-09-12' AS Date), N'Thái Bình', N'K47', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001424', N'Nguyễn Thái Bảo', N'Khuyên', 0, CAST(N'2003-08-14' AS Date), N'Hà Giang', N'K47', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001426', N'Hoàng Văn Nhật', N'Kiêm', 1, CAST(N'2003-03-12' AS Date), N'Quảng Bình', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001427', N'Võ Thị Hồng', N'Thắm', 0, CAST(N'2005-05-26' AS Date), N'Kon Tum', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001428', N'Nguyễn Võ Quỳnh', N'Xoan', 0, CAST(N'2005-07-28' AS Date), N'Phú Yên', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001430', N'Hàn Dương', N'Hiệp', 1, CAST(N'2005-10-31' AS Date), N'Thái Nguyên', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001431', N'Hoàng Thị Trà', N'Nhựt', 0, CAST(N'2003-04-01' AS Date), N'Ninh Bình', N'K47', N'7310301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001432', N'Bùi Thị Ngọc', N'Dậy', 0, CAST(N'2003-02-13' AS Date), N'Thái Nguyên', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001434', N'Diêu Đức', N'Sah', 1, CAST(N'2003-08-05' AS Date), N'Bình Phước', N'K47', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001435', N'Đoàn Thị Mộng', N'Nghe', 0, CAST(N'2003-05-21' AS Date), N'Đà Nẵng', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001438', N'Nguyễn Thị Việt', N'Quyền', 0, CAST(N'2004-01-03' AS Date), N'Kon Tum', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001440', N'Bùi Văn Hoàng', N'Thường', 1, CAST(N'2004-05-22' AS Date), N'Hưng Yên', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001441', N'Chung Thị Thu', N'Vợt', 0, CAST(N'2004-05-15' AS Date), N'Lạng Sơn', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001442', N'Bùi Hoàng', N'Phốp', 1, CAST(N'2003-08-07' AS Date), N'Cao Bằng', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001443', N'Đỗ Tấn Duy', N'Chư', 1, CAST(N'2003-01-04' AS Date), N'Phú Thọ', N'K47', N'7420201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001444', N'Lê Hà Minh', N'Khoai', 1, CAST(N'2004-11-20' AS Date), N'Kiên Giang', N'K47', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001445', N'Ngô Thị Hằng', N'Tình', 0, CAST(N'2005-07-04' AS Date), N'An Giang', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001446', N'Trần Đắc', N'Dét', 1, CAST(N'2003-01-12' AS Date), N'Quảng Ngãi', N'K47', N'7580101')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001447', N'Trần Khương', N'Mía', 1, CAST(N'2004-07-06' AS Date), N'Thừa Thiên Huế', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001448', N'Hà Hồng', N'Ninh', 1, CAST(N'2004-02-25' AS Date), N'An Giang', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001450', N'Lê Hoàng Minh', N'Ngên', 0, CAST(N'2003-05-01' AS Date), N'Tây Ninh', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001451', N'Lý Mỹ', N'Quân', 0, CAST(N'2005-09-21' AS Date), N'Quảng Trị', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001452', N'Trương Diên Viết', N'Tommy', 1, CAST(N'2004-07-07' AS Date), N'Hà Nam', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001453', N'Trần Hoàng Anh', N'Nông', 1, CAST(N'2003-10-22' AS Date), N'Điện Biên', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001454', N'Nguyễn Lê Quỳnh', N'Mĩnh', 0, CAST(N'2003-04-26' AS Date), N'Đắk Lắk', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001455', N'Ngọc Văn', N'Truyền', 1, CAST(N'2003-02-03' AS Date), N'Thừa Thiên Huế', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001456', N'Đinh Trọng', N'Thuyết', 1, CAST(N'2003-09-27' AS Date), N'Quảng Nam', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001457', N'Ngô á Nhật', N'Giao', 0, CAST(N'2003-12-15' AS Date), N'Ninh Bình', N'K47', N'7440112')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001461', N'Đinh Thị Hồng', N'Quy', 0, CAST(N'2005-08-30' AS Date), N'Hà Nội', N'K47', N'7320109')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001462', N'Thái Công Thành', N'Cẩn', 1, CAST(N'2004-04-12' AS Date), N'Đắk Nông', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001465', N'Phan Văn Minh', N'Thiết', 1, CAST(N'2004-03-19' AS Date), N'Thành phố Hồ Chí Minh', N'K47', N'7580211')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001466', N'Phạm Nguyễn Minh', N'Hưng', 1, CAST(N'2004-10-31' AS Date), N'Hòa Bình', N'K47', N'7510302')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001467', N'Lê Hoàng Tùng', N'Toãn', 1, CAST(N'2004-09-04' AS Date), N'Lạng Sơn', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001468', N'Nguyễn Hữu', N'Hàng', 1, CAST(N'2005-04-18' AS Date), N'Hà Tĩnh', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001470', N'Nguyễn Thủ Nhật', N'Thưởng', 1, CAST(N'2004-12-01' AS Date), N'Quảng Ngãi', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001471', N'Nguyễn Lê Hoàng', N'Miên', 1, CAST(N'2004-02-09' AS Date), N'Bắc Kạn', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001472', N'Hà Thúc', N'Ban', 1, CAST(N'2005-06-12' AS Date), N'Cần Thơ', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001473', N'Trần Văn Tiến', N'Luyến', 1, CAST(N'2003-10-04' AS Date), N'Phú Thọ', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001474', N'Tạ Phong', N'Tha', 1, CAST(N'2005-04-13' AS Date), N'Nam Định', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001475', N'Trần Lê Nhật', N'Lan', 0, CAST(N'2005-12-22' AS Date), N'Tiền Giang', N'K47', N'7229010')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001476', N'Dương Ngọc', N'Phong', 1, CAST(N'2003-12-31' AS Date), N'Hưng Yên', N'K47', N'7310205')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001478', N'Lộc Văn', N'Lập', 1, CAST(N'2004-03-27' AS Date), N'Ninh Bình', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001479', N'Phạm Đồng', N'Cương', 1, CAST(N'2005-12-16' AS Date), N'Thành phố Hồ Chí Minh', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001480', N'Phạm Qúy', N'Chuyên', 1, CAST(N'2003-12-08' AS Date), N'Quảng Ninh', N'K47', N'7480107')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001481', N'Trần Đình Thiện', N'Sung', 1, CAST(N'2004-11-19' AS Date), N'Bà Rịa - Vũng Tàu', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001482', N'Lê Trường', N'Dưng', 1, CAST(N'2003-02-23' AS Date), N'Thanh Hóa', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001483', N'Nguyễn Huỳnh Khánh', N'Bấp', 0, CAST(N'2005-10-30' AS Date), N'An Giang', N'K47', N'7480201')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001484', N'Phạm Nguyễn Long', N'Tommy', 1, CAST(N'2005-03-21' AS Date), N'Bạc Liêu', N'K47', N'7440301')
GO
INSERT [dbo].[SinhVien] ([MaSinhVien], [Ho], [Ten], [GioiTinh], [NgaySinh], [NoiSinh], [MaKhoaHoc], [MaNganh]) VALUES (N'DHT001485', N'Trần Quý', N'Hải', 1, CAST(N'2003-03-03' AS Date), N'Đắk Nông', N'K47', N'7480107')
GO
ALTER TABLE [dbo].[DonVi]  WITH CHECK ADD  CONSTRAINT [FK_DonVi_DonVi] FOREIGN KEY([MaDonViCapTren])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
ALTER TABLE [dbo].[DonVi] CHECK CONSTRAINT [FK_DonVi_DonVi]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_DonVi] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_DonVi]
GO
ALTER TABLE [dbo].[HocPhan]  WITH CHECK ADD  CONSTRAINT [FK_HocPhan_DonVi] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HocPhan] CHECK CONSTRAINT [FK_HocPhan_DonVi]
GO
ALTER TABLE [dbo].[KhoaHoc_NganhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_KhoaHoc_NganhDaoTao_KhoaHoc] FOREIGN KEY([MaKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([MaKhoaHoc])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KhoaHoc_NganhDaoTao] CHECK CONSTRAINT [FK_KhoaHoc_NganhDaoTao_KhoaHoc]
GO
ALTER TABLE [dbo].[KhoaHoc_NganhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_KhoaHoc_NganhDaoTao_NganhDaoTao] FOREIGN KEY([MaNganh])
REFERENCES [dbo].[NganhDaoTao] ([MaNganh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhoaHoc_NganhDaoTao] CHECK CONSTRAINT [FK_KhoaHoc_NganhDaoTao_NganhDaoTao]
GO
ALTER TABLE [dbo].[LopHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_HocPhan] FOREIGN KEY([MaHocPhan])
REFERENCES [dbo].[HocPhan] ([MaHocPhan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopHocPhan] CHECK CONSTRAINT [FK_LopHocPhan_HocPhan]
GO
ALTER TABLE [dbo].[LopHocPhan_GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_GiangVien_GiangVien] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GiangVien] ([MaGiangVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LopHocPhan_GiangVien] CHECK CONSTRAINT [FK_LopHocPhan_GiangVien_GiangVien]
GO
ALTER TABLE [dbo].[LopHocPhan_GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_GiangVien_LopHocPhan] FOREIGN KEY([MaLopHocPhan])
REFERENCES [dbo].[LopHocPhan] ([MaLopHocPhan])
GO
ALTER TABLE [dbo].[LopHocPhan_GiangVien] CHECK CONSTRAINT [FK_LopHocPhan_GiangVien_LopHocPhan]
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_SinhVien_LopHocPhan] FOREIGN KEY([MaLopHocPhan])
REFERENCES [dbo].[LopHocPhan] ([MaLopHocPhan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien] CHECK CONSTRAINT [FK_LopHocPhan_SinhVien_LopHocPhan]
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_LopHocPhan_SinhVien_SinhVien] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[SinhVien] ([MaSinhVien])
GO
ALTER TABLE [dbo].[LopHocPhan_SinhVien] CHECK CONSTRAINT [FK_LopHocPhan_SinhVien_SinhVien]
GO
ALTER TABLE [dbo].[NganhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_NganhDaoTao_DonVi] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NganhDaoTao] CHECK CONSTRAINT [FK_NganhDaoTao_DonVi]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_KhoaHoc_NganhDaoTao] FOREIGN KEY([MaKhoaHoc], [MaNganh])
REFERENCES [dbo].[KhoaHoc_NganhDaoTao] ([MaKhoaHoc], [MaNganh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_KhoaHoc_NganhDaoTao]
GO
