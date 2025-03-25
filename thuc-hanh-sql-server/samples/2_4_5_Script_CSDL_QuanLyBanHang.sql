---------------------------------------------------------------
-- Cài đặt các bảng
---------------------------------------------------------------
-- NhaSanXuat
CREATE TABLE [NhaSanXuat]
(
	[MaNhaSX]			[nvarchar](50) NOT NULL,
	[TenNhaSX]			[nvarchar](255) NOT NULL,
	[ThongTinLienHe]	[nvarchar](255) NULL,
	CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
	(
		[MaNhaSX] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- LoaiHang
CREATE TABLE [LoaiHang]
(
	[MaLoaiHang] [nvarchar](50) NOT NULL,
	[TenLoaiHang] [nvarchar](255) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
	(
		[MaLoaiHang] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- MatHang
CREATE TABLE [dbo].[MatHang]
(
	[MaHang]		[nvarchar](50) NOT NULL,
	[TenHang]		[nvarchar](255) NOT NULL,
	[TenVietTat]	[nvarchar](255) NULL,
	[DonViTinh]		[nvarchar](50) NOT NULL,
	[MaLoaiHang]	[nvarchar](50) NULL,
	[MaNhaSX]		[nvarchar](50) NULL,
	[ThoiGianBaoHanh]	[int] NULL,
	[DonViTinhBaoHanh]	[nvarchar](50) NULL,
	[MoTaDacTinh]	[nvarchar](max) NULL,
	[Gia]			[int] NULL,
	CONSTRAINT [PK_MatHang] PRIMARY KEY CLUSTERED 
	(
		[MaHang] ASC
	) ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- TinhThanh
CREATE TABLE [TinhThanh]
(
	[MaTinh]	[nvarchar](50) NOT NULL,
	[TenTinh]	[nvarchar](255) NOT NULL,
	CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
	(
		[MaTinh] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- NhomKhachHang
CREATE TABLE [NhomKhachHang]
(
	[MaNhomKH]		[nvarchar](50) NOT NULL,
	[TenNhomKH]		[nvarchar](255) NOT NULL,
	[GhiChu]		[nvarchar](255) NULL,
	CONSTRAINT [PK_NhomKhachHang] PRIMARY KEY CLUSTERED 
	(
		[MaNhomKH] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- KhachHang
CREATE TABLE [KhachHang]
(
	[MaKhachHang]	[nvarchar](50) NOT NULL,
	[TenKhachHang]	[nvarchar](255) NOT NULL,
	[TenGiaoDich]	[nvarchar](255) NULL,
	[MaNhomKH]		[nvarchar](50) NULL,
	[SinhNhat]		[datetime] NULL,
	[NguoiLienHe]	[nvarchar](255) NULL,
	[ChucVu]		[nvarchar](255) NULL,
	[DiaChiLienHe]	[nvarchar](255) NULL,
	[DienThoai]		[nvarchar](50) NULL,
	[MaTinh]		[nvarchar](50) NULL,
	CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
	(
		[MaKhachHang] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- ChungTuBanHang
CREATE TABLE [ChungTuBanHang]
(
	[SoChungTu]			[nvarchar](50) NOT NULL,
	[DienGiai]			[nvarchar](255) NULL,
	[NgayLapChungTu]	[datetime] NOT NULL,
	[NgayGiaoHang]		[datetime] NOT NULL,
	[MaKhachHang]		[nvarchar](50) NULL,
	CONSTRAINT [PK_ChungTu] PRIMARY KEY CLUSTERED 
	(
		[SoChungTu] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- ChiTietChungTu
CREATE TABLE [ChiTietChungTu]
(
	[SoChungTu]		[nvarchar](50) NOT NULL,
	[MaHang]		[nvarchar](50) NOT NULL,
	[SoLuong]		[int] NOT NULL,
	[DonGia]		[int] NOT NULL,
	CONSTRAINT [PK_ChiTietChungTu] PRIMARY KEY CLUSTERED 
	(
		[SoChungTu] ASC,
		[MaHang] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

-- PhieuThuTien
CREATE TABLE [PhieuThuTien]
(
	[SoPhieu]	[int] IDENTITY(1,1) NOT NULL,
	[NgayLap]	[datetime] NOT NULL,
	[LyDo]		[nvarchar](255) NULL,
	[SoTien]	[int] NOT NULL,
	[SoChungTu]	[nvarchar](50) NOT NULL,
	CONSTRAINT [PK_PhieuThuChi] PRIMARY KEY CLUSTERED 
	(
		[SoPhieu] ASC
	)ON [PRIMARY]
) 
ON [PRIMARY]
GO

--------------------------------------------------------------------------
-- CÀI ĐẶT CÁC RÀNG BUỘC (DEFAULT, FOREIGN KEY)
--------------------------------------------------------------------------
ALTER TABLE [ChungTuBanHang] ADD  CONSTRAINT [DF_ChungTu_NgayLapChungTu]  DEFAULT (getdate()) FOR [NgayLapChungTu]
GO
ALTER TABLE [ChungTuBanHang] ADD  CONSTRAINT [DF_ChungTu_NgayGiaoHang]  DEFAULT (getdate()) FOR [NgayGiaoHang]
GO

ALTER TABLE [ChiTietChungTu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChungTu_ChungTu] FOREIGN KEY([SoChungTu])
REFERENCES [ChungTuBanHang] ([SoChungTu])
GO

ALTER TABLE [ChiTietChungTu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChungTu_MatHang] FOREIGN KEY([MaHang])
REFERENCES [MatHang] ([MaHang])
GO

ALTER TABLE [ChungTuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChungTu_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [KhachHang] ([MaKhachHang])
GO

ALTER TABLE [KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NhomKhachHang] FOREIGN KEY([MaNhomKH])
REFERENCES [NhomKhachHang] ([MaNhomKH])
GO

ALTER TABLE [KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TinhThanh] FOREIGN KEY([MaTinh])
REFERENCES [TinhThanh] ([MaTinh])
GO

ALTER TABLE [MatHang]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_LoaiHang] FOREIGN KEY([MaLoaiHang])
REFERENCES [LoaiHang] ([MaLoaiHang])
GO

ALTER TABLE [MatHang]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_NhaSanXuat] FOREIGN KEY([MaNhaSX])
REFERENCES [NhaSanXuat] ([MaNhaSX])
GO

ALTER TABLE [PhieuThuTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuChi_ChungTu] FOREIGN KEY([SoChungTu])
REFERENCES [ChungTuBanHang] ([SoChungTu])
GO

--------------------------------------------------------------------------
-- BỔ SUNG DỮ LIỆU CHO CÁC BẢNG
--------------------------------------------------------------------------

INSERT [NhaSanXuat] ([MaNhaSX], [TenNhaSX], [ThongTinLienHe]) VALUES (N'ACER', N'Hãng Acer', NULL)
INSERT [NhaSanXuat] ([MaNhaSX], [TenNhaSX], [ThongTinLienHe]) VALUES (N'CNET', N'CNET Ltd', NULL)
INSERT [NhaSanXuat] ([MaNhaSX], [TenNhaSX], [ThongTinLienHe]) VALUES (N'IBM', N'Hãng máy tính IBM', NULL)
INSERT [NhaSanXuat] ([MaNhaSX], [TenNhaSX], [ThongTinLienHe]) VALUES (N'MICROSOFT', N'Hãng phần mềm Microsoft', NULL)
INSERT [NhaSanXuat] ([MaNhaSX], [TenNhaSX], [ThongTinLienHe]) VALUES (N'NONE', N'Không xác định', NULL)

INSERT [LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'LAPTOP', N'Máy tính xách tay', NULL)
INSERT [LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'NET', N'Thiết bị mạng máy tính', NULL)
INSERT [LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'NONE', N'Thiết bị khác, chưa phân loại', NULL)
INSERT [LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'PC', N'Máy tính cá nhân', NULL)
INSERT [LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'SERVER', N'Máy chủ', NULL)
INSERT [LoaiHang] ([MaLoaiHang], [TenLoaiHang], [GhiChu]) VALUES (N'STORAGE', N'Thiết bị lưu trữ', NULL)

INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'LAP001', N'Laptop IBM T61', N'IBM T61', N'Cái', N'LAPTOP', N'IBM', 24, N'Tháng', NULL, 12000000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'LAP002', N'Laptop IBM Thinkpad T42', N'IBM T42', N'Cái', N'LAPTOP', N'IBM', 24, N'Tháng', NULL, 11000000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'LAP003', N'Laptop Acer Aspire 3935', NULL, N'Cái', N'LAPTOP', N'Acer', 36, N'Tháng', NULL, 7000000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'LAP004', N'Laptop Acer Aspire 4736 642G25Mn.014', NULL, N'Cái', N'LAPTOP', N'Acer', 36, N'Tháng', NULL, 7000000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'NET01', N'Card mạng CNETPro 1000Mbs', N'CNETPro 1000', N'Cái', N'NET', N'CNET', 12, N'Tháng', NULL, 400000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'NET02', N'Wireless Card CNET 100Mbs', N'CNET WIRELESS100', N'Cái', N'NET', N'CNET', 12, N'Tháng', NULL, 400000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'NET03', N'Buffalo Acess Point V3000', NULL, N'Cái', N'NET', N'NONE', 12, N'Tháng', N'Bộ phát sóng không dây', 550000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'NET04', N'DLink Access Point', NULL, N'Cái', N'NET', N'NONE', 24, N'Tháng', NULL, 560000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'PC001', N'IBM PC S300', N'IBMS300', N'Bộ', N'PC', N'IBM', 24, N'Tháng', NULL, 6500000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'PC002', N'CMS Intelligent S500', N'CMS500', N'Bộ', N'PC', N'NONE', 12, N'Tháng', NULL, 5000000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'PC003', N'IBM PC S1000', N'IBMS1000', N'Bộ', N'PC', N'IBM', 24, N'Tháng', NULL, 4500000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'PC004', N'CMS Bussiness B800', N'CMS-B800', N'Bộ', N'PC', N'NONE', 12, N'Tháng', NULL, 4600000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'STR001', N'HDD IBM 36.4GB 10K Hotplug', NULL, N'Cái', N'STORAGE', N'IBM', 12, N'Tháng', NULL, 1500000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'STR002', N'Seagate Barracuda 7200.11 SATA 3Gb/s 1.5-TB Hard Drive', NULL, N'Cái', N'STORAGE', N'NONE', 12, N'Tháng', NULL, 1300000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'STR003', N'Western Digital 40G - 7200rpm - ATA', NULL, N'Cái', N'STORAGE', N'NONE', 12, N'Tháng', NULL, 1000000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'STR004', N'Western Digital SCSI 72GB 80 pin Ultra 320 10k rpm', NULL, N'Cái', N'STORAGE', N'NONE', 12, N'Tháng', NULL, 1100000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'STR005', N'IBM 146GB 15K rpm Ultra320 SCSI HDD 40K1028', NULL, N'Cái', N'STORAGE', N'IBM', 12, N'Tháng', NULL, 1200000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [TenVietTat], [DonViTinh], [MaLoaiHang], [MaNhaSX], [ThoiGianBaoHanh], [DonViTinhBaoHanh], [MoTaDacTinh], [Gia]) VALUES (N'STR006', N'IBM 300GB SATA HDD SERIES201012001', NULL, N'Cái', N'STORAGE', N'IBM', 12, N'Tháng', NULL, 1500000)

INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'037', N'Hà Tĩnh')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'038', N'Nghệ An')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'052', N'Quảng Bình')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'053', N'Quảng Trị')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'054', N'Thừa Thiên Huế')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'056', N'Bình Định')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'510', N'Đà Nẵng')
INSERT [TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'511', N'Quảng Nam')

INSERT [NhomKhachHang] ([MaNhomKH], [TenNhomKH], [GhiChu]) VALUES (N'01', N'Khách hàng mua lẻ', NULL)
INSERT [NhomKhachHang] ([MaNhomKH], [TenNhomKH], [GhiChu]) VALUES (N'02', N'Đối tác thường xuyên', NULL)
INSERT [NhomKhachHang] ([MaNhomKH], [TenNhomKH], [GhiChu]) VALUES (N'03', N'Không phân loại', NULL)

INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'HITEC', N'Trung tâm Công nghệ Thông tin - Đại học Huế', N'HITEC', N'02', CAST(0x0000973A00000000 AS DateTime), N'Nguyễn Thanh Bình', N'Giám đốc', N'02 Lê Lợi, Huế', NULL, N'054')
INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'ITQT', N'Công ty Tin học Quảng Trị', N'IT-Quảng Trị', N'02', NULL, N'Đoàn Quang Thiện', N'Giám đốc', N'28 Lê Duẩn, Quảng Trị', NULL, N'053')
INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'LVTAM', N'Lê Văn Tâm', N'Ông Tâm', N'01', NULL, NULL, NULL, NULL, NULL, N'054')
INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'NHHA', N'Nguyễn Hoàng Hà', NULL, N'03', CAST(0x00006D1700000000 AS DateTime), NULL, NULL, NULL, N'054.3826761', NULL)
INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'NTBINH', N'Nguyễn Thanh Bình', N'Bình cùa', N'01', CAST(0x0000741F00000000 AS DateTime), NULL, NULL, NULL, N'0543.822799', N'054')
INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'NTTTHUY', N'Nguyễn Thị Thanh Thủy', NULL, NULL, CAST(0x00007B4000000000 AS DateTime), NULL, NULL, NULL, N'054.3897656', NULL)
INSERT [KhachHang] ([MaKhachHang], [TenKhachHang], [TenGiaoDich], [MaNhomKH], [SinhNhat], [NguoiLienHe], [ChucVu], [DiaChiLienHe], [DienThoai], [MaTinh]) VALUES (N'TNPHONG', N'Trần Nguyên Phong', N'Mr. Phong', N'01', NULL, NULL, NULL, NULL, N'054.3876675', N'054')


INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'N1-001', N'Nhập hàng bổ sung', CAST(0x00009E0C00000000 AS DateTime), CAST(0x00009E0C00000000 AS DateTime), NULL)
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'N2-001', N'Nhập hàng', CAST(0x00009E0900000000 AS DateTime), CAST(0x00009E0900000000 AS DateTime), NULL)
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'X1-001', N'Bán lẻ cho khách', CAST(0x00009E430158BE4E AS DateTime), CAST(0x00009E430158BE4E AS DateTime), N'TNPHONG')
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'X1-002', N'Bán lẻ cho ông Bình', CAST(0x00009E2A00000000 AS DateTime), CAST(0x00009E2A00000000 AS DateTime), N'NTBINH')
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'X1-003', N'Bán lẻ cho ông Hà', CAST(0x00009E2800000000 AS DateTime), CAST(0x00009E2A00000000 AS DateTime), N'NHHA')
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'X1-004', N'Bán lẻ', CAST(0x00009E4301592CE7 AS DateTime), CAST(0x00009E4301592CE7 AS DateTime), NULL)
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'X2-001', N'Xuất bán theo hợp đồng đặt mua hàng', CAST(0x00009E4301591F5A AS DateTime), CAST(0x00009E4301591F5A AS DateTime), N'HITEC')
INSERT [ChungTuBanHang] ([SoChungTu], [DienGiai], [NgayLapChungTu], [NgayGiaoHang], [MaKhachHang]) VALUES (N'X2-002', N'Bán hàng cho công ty IT', CAST(0x00009E0B00000000 AS DateTime), CAST(0x00009E2800000000 AS DateTime), N'ITQT')



INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'LAP001', 10, 12000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'LAP002', 12, 11000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'LAP003', 10, 7000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'LAP004', 20, 7000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'NET01', 10, 400000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'NET02', 15, 400000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'NET03', 10, 550000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'NET04', 20, 560000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'PC001', 22, 6500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'PC002', 10, 5000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'PC003', 16, 4500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'PC004', 20, 4600000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'STR001', 10, 1500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'STR002', 15, 1300000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'STR003', 15, 1000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'STR004', 20, 1100000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N1-001', N'STR005', 30, 1200000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'LAP001', 10, 12000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'LAP002', 10, 11000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'LAP003', 15, 7000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'LAP004', 20, 7000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'NET01', 30, 400000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'NET02', 10, 400000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'NET03', 10, 550000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'PC001', 25, 6500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'PC002', 25, 5000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'PC003', 30, 4500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'PC004', 10, 4600000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'STR001', 10, 1500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'STR002', 10, 1300000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'STR004', 10, 1100000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'N2-001', N'STR005', 15, 1200000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-001', N'NET03', 2, 1200000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-001', N'PC001', 4, 8500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-001', N'STR002', 1, 2500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-001', N'STR003', 6, 1800000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-002', N'NET01', 7, 700000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-002', N'PC002', 1, 7000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-002', N'STR003', 3, 1800000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-002', N'STR004', 4, 1750000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-003', N'LAP002', 1, 18000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-003', N'PC001', 2, 8500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-003', N'PC002', 1, 7000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-003', N'STR003', 3, 1800000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-004', N'LAP003', 4, 14000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-004', N'NET03', 1, 1200000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-004', N'NET04', 1, 800000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-004', N'PC001', 5, 8500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-004', N'PC004', 2, 8500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X1-004', N'STR001', 10, 2000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'LAP001', 11, 15000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'LAP004', 5, 12500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'NET02', 3, 650000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'NET04', 2, 800000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'PC001', 1, 8500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'PC004', 1, 8500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-001', N'STR001', 4, 2000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-002', N'LAP002', 1, 18000000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-002', N'LAP004', 1, 12500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-002', N'NET02', 3, 650000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-002', N'STR002', 2, 2500000)
INSERT [ChiTietChungTu] ([SoChungTu], [MaHang], [SoLuong], [DonGia]) VALUES (N'X2-002', N'STR003', 5, 1800000)

SET IDENTITY_INSERT [PhieuThuTien] ON
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (1, CAST(0x00009E0C00000000 AS DateTime), N'Trả tiền nhập hàng', 200000000, N'N1-001')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (2, CAST(0x00009E0900000000 AS DateTime), N'Trả tiền nhập hàng', 1022000000, N'N2-001')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (3, CAST(0x00009E430158BE4E AS DateTime), N'Thu tiền mua hàng', 49700000, N'X1-001')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (4, CAST(0x00009E2A00000000 AS DateTime), N'Thu tiền mua hàng', 24300000, N'X1-002')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (5, CAST(0x00009E2800000000 AS DateTime), N'Thu tiền mua hàng', 47400000, N'X1-003')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (6, CAST(0x00009E4301592CE7 AS DateTime), N'Thu tiền mua hàng', 13750000, N'X1-004')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (7, CAST(0x00009E4301591F5A AS DateTime), N'Thu tiền mua hàng', 25000000, N'X2-001')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (8, CAST(0x00009E0B00000000 AS DateTime), N'Thu tiền mua hàng', 10000000, N'X2-002')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (10, CAST(0x00009E1000000000 AS DateTime), N'Thu tiền mua hàng', 25000000, N'X2-002')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (13, CAST(0x00009D7700000000 AS DateTime), N'Thu tiền mua hàng', 15000000, N'X2-001')
INSERT [PhieuThuTien] ([SoPhieu], [NgayLap], [LyDo], [SoTien], [SoChungTu]) VALUES (14, CAST(0x00009E5700000000 AS DateTime), N'Trả tiền nhập hàng', 453200000, N'N1-001')
SET IDENTITY_INSERT [PhieuThuTien] OFF



