create table ThongKeDoanhThu
(
	Id int identity(1, 1) primary key,
	Nam int,
	MatHang nvarchar(255),
	LoaiHang nvarchar(255),
	DoanhThu money
)
go

insert into ThongKeDoanhThu
values	(2010, N'Gạo', N'Thực phẩm', 5),
		(2010, N'Đường', N'Thực phẩm', 7),
		(2010, N'Beer', N'Đồ uống', 10),
		(2010, N'Cafe', N'Đồ uống', 2),
		(2011, N'Gạo', N'Thực phẩm', 8),
		(2011, N'Đường', N'Thực phẩm', 3),
		(2011, N'Beer', N'Đồ uống', 4),
		(2011, N'Cafe', N'Đồ uống', 11),
		(2012, N'Gạo', N'Thực phẩm', 6),
		(2012, N'Đường', N'Thực phẩm', 10),
		(2012, N'Cafe', N'Đồ uống', 15),
		(2013, N'Gạo', N'Thực phẩm', 5),
		(2013, N'Đường', N'Thực phẩm', 12),
		(2013, N'Beer', N'Đồ uống', 14),
		(2013, N'Cafe', N'Đồ uống', 5),
		(2014, N'Gạo', N'Thực phẩm', 5),
		(2014, N'Đường', N'Thực phẩm', 10),
		(2014, N'Beer', N'Đồ uống', 5),
		(2015, N'Beer', N'Đồ uống', 14),
		(2015, N'Cafe', N'Đồ uống', 5);


select *
from ThongKeDoanhThu
