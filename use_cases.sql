-- AllProducts View
USE techshop
GO
SELECT * FROM AllProducts
GO
-- NotOrderedProduct View
USE techshop
GO
SELECT * FROM NotOrderedProduct
GO
SELECT DISTINCT(p.name) FROM Orders.order_list AS ol
LEFT JOIN Product.products AS p
ON p.id = ol.product_id
-- OrderedProducts View
USE techshop
GO
SELECT * FROM OrderedProducts
GO
-- executing function
INSERT INTO Product.component_speed (value) VALUES (120)
USE techshop
GO
DELETE FROM Orders.order_list WHERE product_id = 65
GO
select * from orders.order_list
USE techshop
GO
-- List orders where the customerID is the parameter
SELECT * FROM Orders.OrderList(6)
GO
-- Monthly Orders function
SELECT * FROM Orders.MonthlyOrders(1)
use techshop
go
-- executing productinfo procedure
EXEC Product.ProductInfo 9
GO
-- executing addcategory procedure
DECLARE @Inform varchar(60)
EXEC Product.AddCategory 'PowerSupply1', @Inform OUTPUT
PRINT @Inform
GO
SELECT * FROM Product.Categories WHERE name = 'PowerSupply1'
GO

-- executing new product procedure
EXEC Product.AddNewProduct
'Geforce Teszt',
'Video Card',
'100',
'10',
'TU106',
'1200'
GO
SELECT * FROM Memories
SELECT * FROM Processors
SELECT * FROM VideoCards
GO

-- List all of the important data from the employees
select concat(firstname, ' ', lastname) as 'Name',
c.name as City,
s.name as State, 
concat(street, ' ', str_number) as Address, 
phone as Phone, 
email as 'E-mail', 
t.name as 'Job Title' from people.employee as e
left join people.title as t on t.id = e.title_id
left join location.city as c on c.id = e.city_id
left join location.states as s on s.id = e.state_id

-- List all orders with customer and employee name
select o.id as OrderId,
concat(c.firstName, ' ', c.lastName) as CustomerName,
concat(e.firstName, ' ', e.lastName) as EmployeeName,
o.order_date
from orders.orders as o
left join people.customers as c
on c.id = o.customer_id
left join people.employee as e
on e.id = o.employee_id