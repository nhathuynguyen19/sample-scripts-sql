use [NhanVienSinhVien]
go  
set ansi_nulls ON;
GO
set quoted_identifier ON
GO


CREATE TABLE [DonVi] (
    [MaKhoa] NVARCHAR(50) not null,
    [TenKhoa] NVARCHAR(255) not null,
    constraint [PK_Khoa] PRIMARY key clustered (
        [MaKhoa] asc
    )
)
go

CREATE table [NhanVien] (
    [MaNhanVien] NVARCHAR(50) not null,
    [HoTen] NVARCHAR(50) not null,
    [NgaySinh] DATE not null,
    [QueQuan] NVARCHAR(50) not null,
    [HeSoLuong] FLOAT not null,
    [Luong] money not null,
    [MaKhoa] NVARCHAR(50) not null,
    constraint [PK_NhanVien] primary key clustered (
        [MaNhanVien] asc
    )
)
go

CREATE TABLE [SinhVien] (
	[MaSinhVien] NVARCHAR(50) not null,
	[HoTen] NVARCHAR(50) not null,
	[NgaySinh] DATE not null,
	[QueQuan] nvarchar(50) not null,
	[DiemTrungBinh] FLOAT not null,
	[MaKhoa] NVARCHAR(50) not null,
	constraint [PK_SinhVien] primary key CLUSTERED (
		[MaSinhVien] asc
	)
)
go

ALTER TABLE [SinhVien]
with check add constraint [FK_SinhVien_DonVi]
foreign key ([MaKhoa])
references [DonVi] ([MaKhoa])
GO
alter table [SinhVien] CHECK constraint [FK_SinhVien_DonVi]
go

ALTER table [NhanVien]
with check add CONSTRAINT [FK_NhanVien_DonVi]
foreign key ([MaKhoa])
references [DonVi] ([MaKhoa])
go
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_DonVi]
go