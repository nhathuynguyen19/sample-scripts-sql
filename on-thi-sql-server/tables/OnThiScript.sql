--tao bang

--tao bang xe
create table XE(
	MaXe nvarchar(5) not null, 
	TenXe nvarchar(255) null,
	Gia money null,
	ThoiGianBaoHanh numeric(18, 0) null,
	NhaSX nvarchar(50) null,
	constraint PK_XE primary key clustered(
		MaXe asc
	)
)on [primary]

go

--tao bang khach hang
create table KHACHHANG (
	MaKhachHang nvarchar(10) not null,
	TenKhachHang nvarchar(80) null,
	GioiTinh bit null,
	NgaySinh date null,
	QueQuan nvarchar(50) null,
	constraint PK_KHACHHANG primary key clustered(
		MaKhachHang asc
	)
)on [primary]
go

--tao bang don hang
create table DONHANG(
	MaDonHang nvarchar(10) not null,
	MaXe nvarchar(5) not null,
	GiaBan money null,
	MaKhachHang nvarchar(10) not null,
	NgayBan date null,
	constraint PK_DONHANG primary key clustered(
		MaDonHang asc
	)
)on [primary]
go
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_XE] FOREIGN KEY([MaXe])
REFERENCES [dbo].[XE] ([MaXe])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_XE]
GO
