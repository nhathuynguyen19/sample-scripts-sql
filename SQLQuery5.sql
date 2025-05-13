-- cau 4
	-- a
if exists(select * from sys.objects where name = 'func_TKeDuAn')
	drop function func_TKeDuAn;
go

create function func_TKeDuAn(@fromYear int, @toYear int)
returns table
as 
return
(
	select	year(d.NgayBatDau) as [Year],
			count(d.MaDuAn) as 'So Luong'
	from DuAn as d
	where year(d.NgayBatDau) between @fromYear and @toYear
	group by year(d.NgayBatDau)
)
go

-- testcase
select * from dbo.func_TKeDuAn(2020, 2023)

-- b
if exists(select * from sys.objects where name = 'func_TKeDuAn_DayDuCacNam')
	drop function func_TKeDuAn_DayDuCacNam;
go

create function func_TKeDuAn_DayDuCacNam(@fromYear int, @toYear int)
returns @tbl table
(
	[Year] int primary key,
	[SoLuong] int default(0)
)
as
begin
	declare @tblNam table
	(
		[Year] int
	);
	declare @y int = @fromYear;
	while (@y < @toYear)
		begin
			insert into @tblNam values(@y);
			set @y += 1;
		end

	insert into @tbl([Year], [SoLuong])
		select t1.Year, isnull(t2.SoLuong, 0) as SoLuong
		from	@tblNam as t1
				left join
				(
					select	year(d.NgayBatDau) as [Year],
							count(d.MaDuAn) as SoLuong
					from DuAn as d
					where year(d.NgayBatDau) between @fromYear and @toYear
					group by YEAR(d.NgayBatDau)
				) as t2 on t1.Year = t2.Year

	return;
end
go

-- test case
select * from dbo.func_TKeDuAn_DayDuCacNam(2010, 2027)
