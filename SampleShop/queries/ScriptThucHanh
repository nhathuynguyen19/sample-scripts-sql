-- 1
SELECT p.ProductId, p.ProductName, p.Unit, p.Price, s.SupplierName
FROM
	dbo.Products AS p JOIN Suppliers AS s ON p.SupplierId = s.SupplierId
WHERE p.Price <= 20 OR p.Price > 40
-- 2
SELECT DISTINCT c.CustomerId, c.CustomerName, c.ContactName, c.Address, c.City, c.PostalCode, c.Country
FROM
	dbo.Products AS p
	JOIN dbo.Suppliers AS s ON p.SupplierId = s.SupplierId
	JOIN dbo.OrderDetails AS od ON p.ProductId = od.ProductId
	JOIN dbo.Orders AS o ON o.OrderId = od.OrderId
	JOIN dbo.Customers AS c ON c.CustomerId = o.CustomerId
WHERE
	s.SupplierName = 'Tokyo Traders'
-- 3
SELECT p.ProductId, p.ProductName, c.CategoryName
FROM
	dbo.Products AS p
	JOIN dbo.Categories as c ON p.CategoryId = c.CategoryId
WHERE
	p.Price >= 20 AND p.Price <= 40
-- 4
SELECT p.ProductId, p.ProductName, p.Unit, p.Price
FROM
	Products AS p
	JOIN Suppliers AS s ON p.SupplierId = s.SupplierId
WHERE
	s.Country = 'USA'
	OR s.Country = 'Germany'
	OR s.Country = 'France'
	OR s.Country = 'Italy'
-- 5
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
-- 6
SELECT p.ProductId, p.ProductName, p.Unit
FROM
	Products AS p
	JOIN OrderDetails AS od ON p.ProductId = od.ProductId
	JOIN Orders AS o ON o.OrderId = od.OrderId
WHERE
	o.OrderDate BETWEEN '2017-07-01' AND '2017-07-31'
-- 7
-- 8
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
-- 9
select c.CategoryId, c.CategoryName, COUNT(p.ProductId)
from
	Products as p
	join Categories as c on p.CategoryId = c.CategoryId
group by
	c.CategoryId, c.CategoryName
-- 10
select	c.CustomerId,
		c.CustomerName,
		COUNT(o.OrderId)
from
	Orders as o
	join Customers as c on c.CustomerId = o.CustomerId
group by
	c.CustomerId, c.CustomerName
-- 11
select	s.ShipperId,
		s.ShipperName,
		COUNT(o.OrderId) as 'So luong Don Hang'
from
	Orders as o
	join Shippers as s on s.ShipperId = o.ShipperId
group by
	s.ShipperId, s.ShipperName
-- 12
-- 13
-- 14
-- 15
-- 16
-- 17
-- 18
-- 19
-- 20
-- 21
-- 22
-- 23
-- 24
-- 25
