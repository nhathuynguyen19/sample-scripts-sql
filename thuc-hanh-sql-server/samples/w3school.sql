--6.1
select 
	sl.SupplierID, sl.SupplierName, sl.Address, COUNT(pd.ProductName) as 'So luong'
from
	Suppliers sl
join
	Products pd
on sl.SupplierID = pd.SupplierID
group by
	sl.SupplierID, sl.SupplierName, sl.Address
--6.2
select
	CategoryName, COUNT(ProductID) as 'so luong mat hang'
from 
	Categories cg
left join
	Products pd
on cg.CategoryID = pd.CategoryID
group by
	CategoryName
--6.3
select
	CustomerName, COUNT(OrderID) as 'So Don'
from
	Customers ctm
left join
	Orders od
on 
	ctm.CustomerID = od.CustomerID
group by
	ctm.CustomerID, CustomerName
--6.4
select 
	ShipperName, count(od.OrderID) as 'So luong don hang'
from
	Shippers sp left join Orders od
on 
	sp.ShipperID = od.ShipperID
group by
	ShipperName
--6.5
select Country, COUNT(SupplierID) as 'so luong nha cung cap'
from Suppliers
group by
	Country
--6.6
select
	Country, COUNT(CustomerID) as 'So luong khach hang'
from
	Customers
group by
	Country
--6.7
select
	Country, COUNT(o.OrderID) as 'so luong don hang'
from
	Customers c left join Orders o
on 
	c.CustomerID = o.CustomerID
group by
	Country
--6.8
select
from
	
	



