if exists(select * from sys.objects where name = 'proc_NhanVien_DuAn_Insert')
	drop procedure proc_NhanVien_DuAn_Insert;
go

CREATE PROCEDURE proc_NhanVien_DuAn_Insert
    @MaNhanVien nvarchar(50),
    @MaDuAn nvarchar(50),
    @MoTaCongViec nvarchar(255),
    @KetQua nvarchar(255) OUTPUT
AS
BEGIN
	set nocount on;

	if not exists (select * from NhanVien where MaNhanVien = @MaNhanVien)
		begin
			set @KetQua = N'MaNhanVien not exists';
			return;
		end

	if not exists (select * from DuAn where MaDuAn = @MaDuAn)
		begin
			set @KetQua = N'MaDuAn not exists';
			return;
		end

	if exists (select * from NhanVien_DuAn where (MaDuAn = @MaDuAn and MaNhanVien = @MaNhanVien))
		begin
			set @KetQua = N'Nhan vien da duoc giao du an nay';
			return;
		end

	-- insert vao bang NhanVien_DuAn
	begin try
		insert into NhanVien_DuAn(MaNhanVien, MaDuAn, NgayGiaoViec, MoTaCongViec)
		values (@MaNhanVien, @MaDuAn, getdate(), @MoTaCongViec);
		set @KetQua = N'Da giao viec';
	end try
	begin catch
		set @KetQua = N'error, cant not insert data';
	end catch

END
go

-- test 1
DECLARE @KetQua nvarchar(255);

EXEC proc_NhanVien_DuAn_Insert 
    @MaNhanVien = 'NV001',
    @MaDuAn = 'DA002',
    @MoTaCongViec = 'Thiết kế giao diện người dùng',
    @KetQua = @KetQua OUTPUT

SELECT @KetQua AS KetQua

-- cau 2:
if exists (select * from sys.objects where name = 'proc_DuAn_DanhSachNhanVien')
	drop procedure proc_DuAn_DanhSachNhanVien;
go

create procedure proc_DuAn_DanhSachNhanVien
	@TenDuAn nvarchar(255),
	@NgayGiaoViec date
as
begin
	set nocount on;

	select *
	from	NhanVien as nv
			join NhanVien_DuAn as nv_da  on nv.MaNhanVien = nv_da.MaNhanVien
			join DuAn as da on nv_da.MaDuAn = da.MaDuAn
	where	da.TenDuAn = @TenDuAn
			and nv_da.NgayGiaoViec < @NgayGiaoViec
end
go

-- test 2

-- cau 3
if exists (select * from sys.objects where name = 'proc_NhanVien_TimKiem')
	drop procedure proc_NhanVien_TimKiem
go

create procedure proc_NhanVien_TimKiem
	@HoTen nvarchar(50) = N'',
	@Tuoi int,
	@SoLuong int output

as
begin
	set nocount on;

	select nv.MaNhanVien, nv.HoTen, nv.NgaySinh, YEAR(getdate()) - year(nv.NgaySinh) as Tuoi
	from NhanVien as nv
	where	(@HoTen = N'' or nv.HoTen like '%' + @HoTen + '%')
			and (year(getdate())-year(nv.NgaySinh) >= @Tuoi);

	set @SoLuong = @@ROWCOUNT

	--select @SoLuong = count(*)
	--from NhanVien as nv
	--where	(@HoTen = N'' or nv.HoTen like '%' + @HoTen + '%')
	--		and (year(getdate())-year(nv.NgaySinh) >= @Tuoi);
end
go

-- test 3

-- cau 4
if exists (select * from sys.objects where name = 'proc_ThongKeGiaoViec')
	drop procedure proc_ThongKeGiaoViec;
go

create procedure proc_ThongKeGiaoViec
	@MaDuAn nvarchar(50),
	@TuNgay date,
	@DenNgay date
as
begin
	set nocount on;

	declare @tblNgay table (NgayGiaoViec date)
	declare @d date = @TuNgay;
	while (@d < @DenNgay)
		begin
			insert into @tblNgay values(@d)
			set @d = DATEADD(day, 1, @d)
		end

	select t1.NgayGiaoViec, ISNULL(t2.SoLuong, 0) as SoLuongNhanVien
	from	@tblNgay as t1
			left join (
				select	NgayGiaoViec, COUNT(MaNhanVien) as SoLuong
				from	NhanVien_DuAn
				where	MaDuAn = @MaDuAn
						and NgayGiaoViec between @TuNgay and @DenNgay
				group by NgayGiaoViec
			) as t2
			on t1.NgayGiaoViec = t2.NgayGiaoViec
end;
go
