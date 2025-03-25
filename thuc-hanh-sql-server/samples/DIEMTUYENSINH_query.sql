--1. hiển thị những sinh viên họ lê
 select
	MaSinhVien,
	HoDem,
	Ten,
	NgaySinh,
	GioiTinh
 from 
	SINHVIEN
 where 
	HoDem = N'Lê' or HoDem like N'Lê %'
--2. những sinh viên có chữ thị trong họ đệm
SELECT
	MaSinhVien,
	HoDem,
	Ten,
	NgaySinh,
	GioiTinh
FROM
	sinhvien
WHERE 
	HoDem like N'%Thị%'
--3. sinh viên có họ lót là văn
select
	MaSinhVien,
	HoDem,
	Ten,
	NgaySinh,
	GioiTinh
from
	[dbo].[SINHVIEN]
where
	HoDem like N'% Văn' or HoDem like N'% Văn %'
--4. sinh viên họ dư OR tên bắt đầu bằng chuỗi V
select
	MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	lop.MaLop
	TenLop
from
	[dbo].[SINHVIEN] sinhvien
inner join
	[dbo].[LOP] lop
on
	sinhvien.MaLop = lop.MaLop
where
	(HoDem = N'Dư' or hodem like N'Dư %') or ten like N'V%'
--5. sinh vien co noi sinh co chuoi hue
select
	MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	NoiSinh
from
	[dbo].[SINHVIEN]
where
	NoiSinh like N'%Huế%'
--6. sinh vien sinh tu thang 3 - 8 năm 1992
select
	MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	lop.MaLop
	TenLop
from
	[dbo].[SINHVIEN] sinhvien
inner join
	[dbo].[LOP] lop
on
	sinhvien.MaLop = lop.malop
where
	NgaySinh between '1992-3-1' and '1992-8-31'
--7. sinh vien nu hoac nhung sinh vien sinh tu thang 5 - 11 
select
	MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	lop.MaLop
	TenLop
from
	[dbo].[SINHVIEN] sinhvien
inner join
	[dbo].[LOP] lop
on
	sinhvien.MaLop = lop.malop
where
	GioiTinh = '0' or month(NgaySinh) between 8 and 11
--8. sinh viên không phải họ lê, dư, võ và nguyễn
select
	MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	lop.MaLop,
	TenLop
from
	[dbo].[SINHVIEN] sinhvien
inner join
	[dbo].[LOP] lop
on
	sinhvien.MaLop = lop.malop
where
	HoDem not like N'Lê %' and HoDem != N'Lê' and
	HoDem not like N'Dư %' and HoDem != N'Dư' and
	HoDem not like N'Võ %' and HoDem != N'Võ' and
	HoDem not like N'Nguyễn %' and HoDem != N'Nguyễn'
--9. sinh viên họ lê có tên nga hoặc tên lý
select
    MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	lop.MaLop,
	TenLop
from
	[dbo].[SINHVIEN] sinhvien
inner join
	[dbo].[LOP] lop
on
	sinhvien.MaLop = lop.MaLop
where
	(HoDem = N'Lê' or HoDem like N'Lê %') and (Ten = N'Nga' or Ten = N'Lý')
--10. sinh viên chưa nhập nơi sinh
select
	MaSinhVien,
	HoDem + ' ' + Ten as HoVaTen,
	NgaySinh,
	GioiTinh,
	NoiSinh
from
	[dbo].[SINHVIEN]
where
	NoiSinh = ''
--11. tong so sinh vien theo tung lop, ke ca nhung lop khong co sinh vien nao
select
	LOP.TenLop,
	count(MaSinhVien) as SoSV
from
	SINHVIEN
right join
	LOP
on
	SINHVIEN.MaLop = LOP.MaLop
group by
	LOP.TenLop
--12. hiển thị những lớp chưa có sinh viên
select
	LOP.MaLop,
	LOP.TenLop
from
	LOP
left join
	SINHVIEN on SINHVIEN.MaLop = LOP.MaLop
where
	SINHVIEN.MaLop is null
--13. hiển thị 5 tỉnh có sinh viên theo học nhiều nhất
SELECT top 5
	 NoiSinh, COUNT(MaSinhVien) AS SoLuong
FROM SINHVIEN
GROUP BY NoiSinh
ORDER BY SoLuong desc
--test
update DIEMTS
set Diemmon1 = '3.0'
where MaSinhVien = 'DL01'