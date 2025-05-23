USE [23T1080025_Bai1]
GO
/****** Object:  Table [dbo].[DuAn]    Script Date: 4/1/2025 8:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuAn](
	[MaDuAn] [nvarchar](50) NOT NULL,
	[TenDuAn] [nvarchar](255) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[SoNguoiThamGia] [int] NOT NULL,
 CONSTRAINT [PK_DuAn] PRIMARY KEY CLUSTERED 
(
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/1/2025 8:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiDong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien_DuAn]    Script Date: 4/1/2025 8:24:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien_DuAn](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaDuAn] [nvarchar](50) NOT NULL,
	[NgayGiaoViec] [date] NOT NULL,
	[MoTaCongViec] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_NhanVien_DuAn] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [SoNguoiThamGia]) VALUES (N'DA001', N'SmartUni', CAST(N'2022-01-01' AS Date), 0)
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [SoNguoiThamGia]) VALUES (N'DA002', N'E-Shop', CAST(N'2022-05-01' AS Date), 0)
INSERT [dbo].[DuAn] ([MaDuAn], [TenDuAn], [NgayBatDau], [SoNguoiThamGia]) VALUES (N'DA003', N'LiteCMS', CAST(N'2022-09-01' AS Date), 0)
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [Email], [DiDong]) VALUES (N'NV001', N'Nguyễn Thanh An', CAST(N'1980-12-01' AS Date), N'thanhan@gmail.com', N'0914422578')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [Email], [DiDong]) VALUES (N'NV002', N'Trần Chí Hiếu', CAST(N'1985-05-17' AS Date), N'hieu85@gmail.com', N'0987454125')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [Email], [DiDong]) VALUES (N'NV003', N'Vũ Thành Chung', CAST(N'1986-11-20' AS Date), N'chungvt@gmail.com', N'0935254771')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [Email], [DiDong]) VALUES (N'NV005', N'Lê Thị Hải Yến', CAST(N'1986-08-14' AS Date), N'lthyen@gmail.com', N'0983120547')
ALTER TABLE [dbo].[NhanVien_DuAn]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DuAn_DuAn] FOREIGN KEY([MaDuAn])
REFERENCES [dbo].[DuAn] ([MaDuAn])
GO
ALTER TABLE [dbo].[NhanVien_DuAn] CHECK CONSTRAINT [FK_NhanVien_DuAn_DuAn]
GO
ALTER TABLE [dbo].[NhanVien_DuAn]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DuAn_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NhanVien_DuAn] CHECK CONSTRAINT [FK_NhanVien_DuAn_NhanVien]
GO
