create table HOSOVAYVON_THANHVIEN (
	[MaThanhVien] [nvarchar](10) not null,
	[MaHoSo] [nvarchar](10) not null,
	[SoVonVay] [bigint] null,
	constraint [PK_HOSOVAYVON_THANHVIEN] primary key clustered(
		[MaThanhVien] asc,
		[MaHoSo] asc
	)
)	