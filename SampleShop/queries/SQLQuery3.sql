select	MatHang as 'Mặt hàng', 
		Nam as 'Năm', 
		DoanhThu as 'Doanh thu',
		sum(DoanhThu) over() as 'Tổng tất cả',
		sum(DoanhThu) over(
			partition by MatHang
		) as 'Tổng theo mặt hàng',
		sum(DoanhThu) over(
			partition by MatHang
			order by Nam
			rows between unbounded preceding and current row
		) as 'Tổng lũy kế',
		sum(DoanhThu) over(
			partition by MatHang
			order by Nam
			rows between 1 preceding and 1 following
		) as 'Tổng lân cận'
from ThongKeDoanhThu