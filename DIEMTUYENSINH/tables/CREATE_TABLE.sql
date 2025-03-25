--TAO BANG LOP
create table LOP(
	MaLop nvarchar(10) not null,
	TenLop nvarchar(50) null,
	constraint PK_LOP primary key clustered(
		MaLop asc
	)
)
on [primary]
go

--bang sinh vien
create table SINHVIEN(
	MaSinhVien nvarchar (10) not null,
	MaLop nvarchar (10) not null,
	HoDem nvarchar (50) null,
	Ten nvarchar (15) null,
	NgaySinh date null,
	GioiTinh bit null, 
	NoiSinh nvarchar (250) null,
	constraint PK_SINHVIEN primary key clustered(
		MaSinhVien asc
	)
)
on [primary]
go
--DIEMTS
create table DIEMTS(
	MaSinhVien nvarchar(10) not null,
	Diemmon1 decimal(3,1) null,
	Diemmon2 decimal(3,1) null,
	Diemmon3 decimal(3,1) null,
	constraint PK_DIEMTS primary key clustered(
		MaSinhVien asc
	)
)
on [primary]
go
