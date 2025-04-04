-- select toan bo nhan vien
select *
FROM NhanVien

-- select toan bo don vi
select * 
from DonVi

--Lấy về hoten,hsl của các nhân viên có hsl>4.5
SELECT HoTen, HeSoLuong
FROM NhanVien
WHERE HeSoLuong > 4.5

--Lấy về họ tên, ngày sinh, hsl, tên đơn vị của các nv
SELECT HoTen, NgaySinh, HeSoLuong, TenKhoa
FROM DonVi
INNER JOIN NhanVien
ON DonVi.MaKhoa = NhanVien.MaKhoa

-- Lấy về tất cả nhân viên có tên đơn vị là abc
SELECT HoTen, NgaySinh, HeSoLuong, TenKhoa
From DonVi
INNER JOIN NhanVien 
ON DonVi.MaKhoa = NhanVien.MaKhoa
WHERE TenKhoa = N'CNTT'

--Lấy về hsl lớn nhất
select MAX(HeSoLuong)
from NhanVien

-- Lấy về tất cả nhân viên có hsl lớn nhất
SELECT *
FROM NhanVien
WHERE HeSoLuong = (
    select MAX(HeSoLuong)
    from NhanVien
)

--Thêm vào 1 nhân viên
INSERT into NhanVien(MaNhanVien, HoTen, NgaySinh, QueQuan, HeSoLuong, Luong, MaKhoa)
VALUES('nv007', N'Nguyễn Văn Nam', cast(N'1990-10-10' as date), N'Huế', 7.6, 45000000.0, N'K002')

--Xóa nhân viên có hsl<4
delete from NhanVien
WHERE HeSoLuong < 4

-- Tăng hệ số lương lên 1 cho tất cả các nhân viên có mad=001
UPDATE NhanVien
SET HeSoLuong = HeSoLuong + 1
WHERE MaKhoa = N'K001'

--hãy cho biết mỗi dơn vị có bao nhiêu nv và TBC hsl là ?
SELECT MaKhoa, COUNT(*) as N'Số Nhân Viên', AVG(HeSoLuong) as N'Trung Bình Hệ Số Lương'
FROM NhanVien
GROUP BY MaKhoa
