create table [dbo].[THANHVIEN](
    [MaThanhVien] [nvarchar](10) not null,
    [HoDem] [nvarchar](50) null,
    [Ten] [nvarchar](15) null,
	[NgaySinh] [date] null,
	[GioiTinh] [bit] null,
	[NoiSinh] [nvarchar](250) null,
	constraint [PK_THANHVIEN] primary key clustered ([MaThanhVien] asc)
)