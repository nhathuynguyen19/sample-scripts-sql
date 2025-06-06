﻿-- 1 Hiển thị mã hàng, tên hàng, đơn vị tính, giá và tên nhà cung cấp của các mặt hàng có giá nhỏ hơn hoặc bằng 20 hoặc lớn hơn 40.
SELECT p.ProductId, p.ProductName, p.Unit, p.Price, s.SupplierName
FROM
	dbo.Products AS p JOIN Suppliers AS s ON p.SupplierId = s.SupplierId
WHERE p.Price <= 20 OR p.Price > 40
-- 2 Nhà cung cấp có tên là Tokyo Traders có nhu cầu tặng quà cho những khách hàng đã từng mua hàng của họ. Hãy giúp họ có được thông tin của những khách hàng này!
SELECT DISTINCT c.CustomerId, c.CustomerName, c.ContactName, c.Address, c.City, c.PostalCode, c.Country
FROM
	dbo.Products AS p
	JOIN dbo.Suppliers AS s ON p.SupplierId = s.SupplierId
	JOIN dbo.OrderDetails AS od ON p.ProductId = od.ProductId
	JOIN dbo.Orders AS o ON o.OrderId = od.OrderId
	JOIN dbo.Customers AS c ON c.CustomerId = o.CustomerId
WHERE
	s.SupplierName = 'Tokyo Traders'
-- 3 Hãy cho biết mã hàng, tên hàng, giá và tên loại hàng của những mặt hàng có giá từ 20 đến 40.
SELECT p.ProductId, p.ProductName, c.CategoryName
FROM
	dbo.Products AS p
	JOIN dbo.Categories as c ON p.CategoryId = c.CategoryId
WHERE
	p.Price >= 20 AND p.Price <= 40
-- 4 Hãy cho biết mã hàng, tên hàng, đơn vị tính và giá của những mặt hàng được cung cấp bởi các nhà cung cấp ở USA, Germany, France và Italy.
SELECT p.ProductId, p.ProductName, p.Unit, p.Price
FROM
	Products AS p
	JOIN Suppliers AS s ON p.SupplierId = s.SupplierId
WHERE
	s.Country = 'USA'
	OR s.Country = 'Germany'
	OR s.Country = 'France'
	OR s.Country = 'Italy'
/* 5 Hiển thị mã hàng, tên hàng, đơn vị tính và giá của những mặt hàng được cung cấp bởi các nhà cung cấp có số điện thoại (Phone) thỏa một trong số các điều kiện sau đây:
	- Số điện thoại bắt đầu bởi (100).
	- Số điện thoại bắt đầu bởi (03) và kết thúc bởi 1, 2 hoặc 5.
	- Số điện thoại bắt đầu bởi 0, 1, 2 hoặc 3.
	- Số điện thoại bắt đầu có dạng (xy). Trong đó:
		- x là số 0, 1, 2 hoặc 3.
		- y là 1 số bất kỳ
			Ví dụ: (08) 3255477
		Lưu ý: Viết mỗi câu lệnh cho mỗi điều kiện ở trên
*/
SELECT p.ProductId, p.ProductName, p.Unit, p.Price, s.Phone
FROM
	Products AS p
	JOIN Suppliers AS s ON p.SupplierId = s.SupplierId
WHERE
	s.Phone LIKE '(100)%'
	OR s.Phone LIKE '(03)%1'
	OR s.Phone LIKE '(03)%2'
	OR s.Phone LIKE '(03)%5'
	OR s.Phone LIKE '0%'
	OR s.Phone LIKE '1%'
	OR s.Phone LIKE '2%'
	OR s.Phone LIKE '3%'
	OR s.Phone LIKE '(0_)%'
	OR s.Phone LIKE '(1_)%'
	OR s.Phone LIKE '(2_)%'
	OR s.Phone LIKE '(3_)%'
-- 6 Hiển thị danh sách mã hàng, tên hàng và đơn vị tính của những mặt hàng được bán trong tháng 7 năm 2017.
SELECT p.ProductId, p.ProductName, p.Unit
FROM
	Products AS p
	JOIN OrderDetails AS od ON p.ProductId = od.ProductId
	JOIN Orders AS o ON o.OrderId = od.OrderId
WHERE
	o.OrderDate BETWEEN '2017-07-01' AND '2017-07-31'
-- 7 Giả sử các đơn hàng của khách hàng ở Mỹ sẽ giao hàng sau 5 ngày đặt hàng, ở Canada giao hàng sau 7 ngày, còn khách hàng ở các quốc gia khác thì giao hàng sau 10 ngày.
-- 8 Hãy cho biết mã đơn hàng, ngày đặt hàng, ngày giao hàng, tên và địa chỉ của khách hàng của các đơn hàng được đặt trong tháng 7 năm 2017.
select	p.ProductId, 
		p.ProductName,
		o.OrderDate, 
		case
			when c.Country = 'USA' then DATEADD(DAY, 5, o.OrderDate)
			when c.Country = 'Canada' then DATEADD(DAY, 7, o.OrderDate)
			else DATEADD(DAY, 10, o.OrderDate)
		end,
		c.CustomerName,
		c.Address
from
	Products as p 
	join OrderDetails as od on od.ProductId = p.ProductId
	join Orders as o on o.OrderId = od.OrderId
	join Customers as c on c.CustomerId = o.CustomerId
where 
	OrderDate like '____-07-__'
-- 9 Thống kê xem mỗi một loại hàng có bao nhiêu mặt hàng.
select c.CategoryId, c.CategoryName, COUNT(p.ProductId)
from
	Products as p
	join Categories as c on p.CategoryId = c.CategoryId
group by
	c.CategoryId, c.CategoryName
-- 10 Thống kê xem mỗi một khách hàng đã đặt bao nhiêu đơn đặt hàng.
select	c.CustomerId,
		c.CustomerName,
		COUNT(o.OrderId)
from
	Orders as o
	join Customers as c on c.CustomerId = o.CustomerId
group by
	c.CustomerId, c.CustomerName
-- 11 Thống kê số lượng đơn hàng mà mỗi shipper đã vận chuyển.
select	s.ShipperId,
		s.ShipperName,
		COUNT(o.OrderId) as 'So luong Don Hang'
from
	Orders as o
	join Shippers as s on s.ShipperId = o.ShipperId
group by
	s.ShipperId, s.ShipperName
-- 12 Thống kê số lượng nhà cung cấp theo từng quốc gia.
-- 13 Thống kê số lượng khách hàng theo từng quốc gia.
-- 14 Thống kê tổng số lượng đơn hàng theo từng quốc gia của khách hàng.
-- 15 Thống kê xem trong quý 4 năm 2017, mỗi nhân viên đã lập được bao nhiêu đơn đặt hàng.
-- 16 Hãy cho biết trong thời gian từ tháng 6 đến tháng 12 năm 2017, mỗi một shipper đã nhận vận chuyển bao nhiêu đơn hàng.
-- 17 Thống kê số lượng đơn hàng trong năm 2017 của các khách hàng ở Mỹ (USA), Anh (UK), Đức (Germany) và Pháp (France).
/*
	18. Số tiền mà khách hàng phải thanh toán cho mỗi mặt hàng trong đơn hàng được tính theo công thức:

	Quantity * SalePrice

	Hãy hiển thị các thông tin sau đây của các đơn hàng được đặt trong năm 2017: 
	Mã đơn hàng, ngày đặt hàng, thông tin của nhân viên lập đơn hàng, thông tin của khách 
	hàng, thông tin của shipper và tổng số tiền hàng mà khách hàng phải thanh toán (tức là trị giá của đơn hàng).
*/
-- 19 Thống kê tổng số lượng (được bán) và tổng doanh thu của mỗi mặt hàng trong năm 2017.
-- 20 Hãy cho biết mỗi một quốc gia có bao nhiêu nhà cung cấp, bao nhiêu khách hàng (kết quả hiển thị bao gồm 3 cột: Country, CountOfSuppliers, CountOfCustomers).
-- 21 Cho biết mã đơn hàng, ngày đặt hàng và thông tin khách hàng của những đơn hàng có tổng trị giá lớn hơn 1000$.
-- 22 Những nhân viên nào có số lượng đơn hàng lập trong tháng 8 năm 2017 lớn hơn 5.
/*
	23. Giả sử, mức phí vận chuyển mà công ty phải chi trả cho các shipper trên mỗi đơn
	hàng được qui định như sau:
	• Các đơn hàng của khách hàng tại USA và Canada: mức phí vận chuyển là 3% trị giá của đơn
	hàng.
	• Các đơn hàng của khách hàng tại Argentina, Brazil, Mexico và Venezuela: mức phí vận chuyển là 5% trị giá của đơn
	hàng.
	• Các đơn hàng của khách hàng ở các quốc gia khác: mức phí vận chuyển là 7% trị giá của đơn
	hàng.
	Hãy cho biết mã đơn hành, ngày đặt hành, thông tin khách hành, thông tin shipper, trị giá của
	đơn hành và mức phí vận chuyển của mỗi đon hành.
*/
-- 24 Dựa vào cách tính như đã qui định ở trên, hãy cho biết tổng số tiền mà công ty phải chi trả cho mỗi shipper là bao nhiêu.
-- 25 Cho biết mã, tên, địa chỉ và số lượng mặt hàng của những nhà cung cấp có số lượng mặt hàng cung cấp cho công ty nhiều nhất.
-- 26 Trong năm 2017, những mặt hạng nào có tổng doanh thu cao nhất? Doanh thu là bao nhiêu?
/* 
	27 Trong năm 2018, những nhân viên nào đem lại doanh thu cao nhất cho công ty? Là bao nhiêu? 
	(doanh thu mà mỗi nhân viên đem lại cho công ty được tính dựa trên tổng giá trị các đơn hành mà nhân viên đó phụ trách).
*/
/*
	28 Hãy lập bảng thống kê doanh thu của mỗi mặt hạng trong năm 2017, 
	kết quả truy vấn được hiển thị theo mẫu sau đây: ProductId Name 
	Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
*/
/*
	29. Khách hành thanh toán tiền các đon hành cho công ty có thể thanh toán bằng hình thức trả góp (tức là trả thành nhiều lần). Mỗi lần khách hành thanh toán,
	dữ liệu được lưu trữ trong bảng Invoices.Bảng này có cấu trúc và quan hệ với bảng Orders như hình bên dưới:

	https://github.com/nhathuynguyen19/database-management-system/blob/4cd32782ce649416bb18f89319987524d2a4b061/todo/BaiThucHanh_01.pdf
	
	Với mỗi đơn hàng, hãy cho biết: mã đon hàng, ngày đặt hàng, thông tin khách hàng, tổng trị giá đơn hàng,
	tổng số tiền đã thanh toán và tổng số tiền còn nợ.
*/
