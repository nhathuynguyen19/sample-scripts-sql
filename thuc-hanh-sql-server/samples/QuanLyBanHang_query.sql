--2.1
--2.2
select
	MaHang,
	TenHang,
	Gia
from
	MatHang
where 
	Gia between 400000 and 1000000
--2.3
select
	MaHang,
	TenHang,
	Gia,
	ThoiGianBaoHanh,
	TenVietTat
from
	MatHang
where
	(ThoiGianBaoHanh = 24) and (TenVietTat is null)
--2.4

--2.5 
select
	MaHang,
	TenHang,
	ThoiGianBaoHanh,
	Gia
from
	MatHang
where
	MaLoaiHang in (N'PC', N'LAPTOP', N'NET')
order by 
	Gia desc
--2.6
select distinct
	DonViTinh
from
	MatHang
--2.7
select
	TenHang
from
	MatHang
where
	TenHang like N'%HDD%'
--2.8
select
	*
from
	KhachHang
where
	DienThoai like N'054%[5, 9]'
--2.9
--2.10
SELECT
    MaHang,
    TenHang,
    DonViBaoHanh,
    ThoiGianBaoHanh,
    Gia
FROM
    MatHang
--4.1
select 
	MaHang, 
	TenHang, 
	DonViTinh, 
	lh.MaLoaiHang, 
	lh.TenLoaiHang, 
	nsx.MaNhaSX, 
	nsx.TenNhaSX, 
	Gia  
from 
	MatHang mh
inner join
	LoaiHang lh on mh.MaLoaiHang = lh.MaLoaiHang
inner join
	NhaSanXuat nsx on mh.MaNhaSX = nsx.MaNhaSX
where
	ThoiGianBaoHanh >= 24
--4.2
select
	mh.*, 
	lh.TenLoaiHang
from
	MatHang mh
inner join
	LoaiHang lh on mh.MaLoaiHang = lh.MaLoaiHang
inner join
	NhaSanXuat nsx on mh.MaNhaSX = nsx.MaNhaSX
where
	nsx.TenNhaSX = N'Hãng máy tính IBM'
--4.3
select
	mh.TenHang,
	nsx.TenNhaSX
from
	MatHang mh
inner join
	LoaiHang lh on mh.MaLoaiHang = lh.MaLoaiHang
inner join
	NhaSanXuat nsx on mh.MaNhaSX = nsx.MaNhaSX
where
	lh.TenLoaiHang = N'Máy tính xách tay'
--4.4
select
	MaKhachHang, 
	TenKhachHang, 
	DiaChiLienHe
from
	KhachHang kh
join
	TinhThanh tt on tt.MaTinh = kh.MaTinh
where
	tt.TenTinh = N'Quảng Trị' or tt.TenTinh = N'Thừa Thiên Huế'
--4.5
select
	MaKhachHang, 
	TenKhachHang, 
	DiaChiLienHe,
	tt.TenTinh
from
	KhachHang kh
join
	TinhThanh tt on tt.MaTinh = kh.MaTinh
join
	NhomKhachHang nkh on nkh.MaNhomKH = kh.MaNhomKH
where
	nkh.TenNhomKH = N'Đối tác thường xuyên'
--4.6
select
	*
from
	KhachHang
where
	DienThoai like N'054%[6, 9]'
--4.7
select
	SoChungTu,
	DienGiai,
	NgayLapChungTu,
	NgayGiaoHang
from
	ChungTuBanHang ctbh
join
	KhachHang kh on ctbh.MaKhachHang = kh.MaKhachHang
where
	kh.TenKhachHang = N'Trần Nguyên Phong'
--4.8
select
	kh.TenKhachHang,
	tt.TenTinh
from
	ChungTuBanHang ctbh
join
	KhachHang kh on ctbh.MaKhachHang = kh.MaKhachHang
join
	TinhThanh tt on tt.MaTinh = kh.MaTinh
where
	SoChungTu = N'X1-002'
--4.9
--5.1
SELECT  
	LH.TenLoaiHang, 
	COUNT(MH.MaHang) AS SoLuongMatHang
FROM 
	LoaiHang LH
left JOIN 
	MatHang MH ON LH.MaLoaiHang = MH.MaLoaiHang
GROUP BY 
	LH.TenLoaiHang;
--5.2
select
	TenNhaSX,
	count(MaHang) as "Số Lượng"
from
	NhaSanXuat nsx
left join
	MatHang mh on nsx.MaNhaSX = mh.MaNhaSX
group by
	TenNhaSX;
--5.5
SELECT
    SoChungTu,
    SUM(DonGia * SoLuong) AS tong
FROM
    ChiTietChungTu ctct
INNER JOIN
    MatHang mh ON mh.MaHang = ctct.MaHang
GROUP BY
    SoChungTu;
--5.18
select *
from MatHang
where MaLoaiHang = (select MaLoaiHang
					from MatHang
					where MaHang = 'PC001')
--5.19
select *
from KhachHang
where MaTinh = (select MaTinh
				from KhachHang
				where TenKhachHang = N'Trần Nguyên Phong')
--5.20
select *
from KhachHang
where MaNhomKH = (select MaNhomKH
					from KhachHang
					where TenKhachHang = N'Nguyến Thanh Bình')
--5.21
select lh.TenLoaiHang, COUNT(MaHang) as 'so luong mat hang'
from MatHang mh join LoaiHang lh
on mh.MaLoaiHang = lh.MaLoaiHang
group by lh.TenLoaiHang
having COUNT(MaHang) >= all (select COUNT(MaHang) as 'so luong mat hang'
							from MatHang
							group by MaLoaiHang)
--5.22
select nsx.TenNhaSX, COUNT(MaHang) as 'so luong mat hang'
from MatHang mh join NhaSanXuat nsx
on mh.MaNhaSX = nsx.MaNhaSX
group by nsx.TenNhaSX
having COUNT(MaHang) >= all (select COUNT(MaHang)
							from MatHang
							group by MaNhaSX)
--5.23
select tt.TenTinh, COUNT(kh.MaKhachHang) as 'so luong khach hang'
from TinhThanh tt left join KhachHang kh
on tt.MaTinh = kh.MaTinh
group by tt.TenTinh
having count (kh.MaKhachHang) >= all (
	select COUNT(kh.MaKhachHang) as 'so luong khach hang'
	from TinhThanh tt left join KhachHang kh
	on tt.MaTinh = kh.MaTinh
	group by tt.MaTinh)
--5.24
