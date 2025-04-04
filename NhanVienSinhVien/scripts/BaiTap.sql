select * from nhanvien
select * from DonVi
--Lấy về hoten,hsl của các nhân viên có hsl>4.5
select hoten,hsl from nhanvien where hsl>4.5
--Lấy về họ tên, ngày sinh, hsl, tên đơn vị của các nv
select hoten,ngaysinh,hsl tendv from donvi
inner join nhanvien on donvi.madv = nhanvien.madv
-- Lấy về tất cả nhân viên có tên đơn vị là abc
select hoten,ngaysinh,hsl tendv from donvi
inner join nhanvien on donvi.madv = nhanvien.madv
where tendv=N'Công nghệ thông tin'
--Lấy về hsl lớn nhất
select max(hsl) from nhanvien
-- Lấy về tất cả nhân viên có hsl lớn nhất
select * from nhanvien
where hsl=(select max(hsl) from nhanvien)
--Thêm vào 1 nhân viên
insert into nhanvien(manv,hoten,ngaysinh,gioitinh,
hsl,madv,ghichu)
values('nv007',N'Nam','1999-10-10',1,3.5,'001','abc')
--Xóa nhân viên có hsl<4
delete from nhanvien where hsl<4
-- Tăng hệ số lương lên 1 cho tất cả các nhân viên có mad=001
update nhanvien set hsl=hsl+1 where madv='001'
--hãy cho biết mỗi dơn vị có bao nhiêu nv và TBC hsl là ?
select madv,count(*) as 'Sonv',avg(hsl) as 'TBC' from nhanvien
group by madv
