USE [NhanVienSinhVien]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 4/4/2025 8:38:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[MaKhoa] [nvarchar](50) NOT NULL,
	[TenKhoa] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/4/2025 8:38:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[QueQuan] [nvarchar](50) NOT NULL,
	[HeSoLuong] [float] NOT NULL,
	[Luong] [money] NOT NULL,
	[MaKhoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 4/4/2025 8:38:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSinhVien] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[QueQuan] [nvarchar](50) NOT NULL,
	[DiemTrungBinh] [float] NOT NULL,
	[MaKhoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[DonVi] ([MaKhoa], [TenKhoa]) VALUES (N'K001', N'')
INSERT [dbo].[DonVi] ([MaKhoa], [TenKhoa]) VALUES (N'K002', N'')
INSERT [dbo].[DonVi] ([MaKhoa], [TenKhoa]) VALUES (N'K003', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [QueQuan], [HeSoLuong], [Luong], [MaKhoa]) VALUES (N'nv001', N'Pham Van D', CAST(N'1980-04-04' AS Date), N'Hue', 3.5, 15000000.0000, N'K001')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [QueQuan], [HeSoLuong], [Luong], [MaKhoa]) VALUES (N'nv002', N'Nguyen Thi E', CAST(N'1985-05-05' AS Date), N'Saigon', 4, 20000000.0000, N'K002')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [QueQuan], [HeSoLuong], [Luong], [MaKhoa]) VALUES (N'nv003', N'Hoang Van F', CAST(N'1990-06-06' AS Date), N'Nha Trang', 2.8, 12000000.0000, N'K003')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [NgaySinh], [QueQuan], [DiemTrungBinh], [MaKhoa]) VALUES (N'sv001', N'Nguyen Van A', CAST(N'2000-01-01' AS Date), N'Hanoi', 8.5, N'K001')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [NgaySinh], [QueQuan], [DiemTrungBinh], [MaKhoa]) VALUES (N'sv002', N'Tran Thi B', CAST(N'2001-02-02' AS Date), N'Haiphong', 7.8, N'K002')
INSERT [dbo].[SinhVien] ([MaSinhVien], [HoTen], [NgaySinh], [QueQuan], [DiemTrungBinh], [MaKhoa]) VALUES (N'sv003', N'Le Van C', CAST(N'2002-03-03' AS Date), N'Danang', 9, N'K003')
