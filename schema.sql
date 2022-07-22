USE [master]
GO
DROP DATABASE IF EXISTS techshop
GO
CREATE DATABASE [techshop]
GO
-- Creating login
USE [master]
GO
IF NOT EXISTS (SELECT name FROM master.sys.server_principals WHERE name = 'techshop_user')
CREATE LOGIN [techshop_user] WITH PASSWORD=N'user', DEFAULT_DATABASE=[techshop], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
IF NOT EXISTS (SELECT name FROM master.sys.server_principals WHERE name = 'techshop_admin')
CREATE LOGIN [techshop_admin] WITH PASSWORD=N'admin', DEFAULT_DATABASE=[techshop], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
IF NOT EXISTS (SELECT name FROM master.sys.server_principals WHERE name = 'techshop_owner')
CREATE LOGIN [techshop_owner] WITH PASSWORD=N'owner', DEFAULT_DATABASE=[techshop], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
-- Creating user 
USE [techshop]
GO
IF NOT EXISTS (SELECT name FROM sys.database_principals WHERE name = 'techshop_user')
CREATE USER [techshop_user] FOR LOGIN [techshop_user] WITH DEFAULT_SCHEMA=[Product]
GO
IF NOT EXISTS (SELECT name FROM sys.database_principals WHERE name = 'techshop_admin')
CREATE USER [techshop_admin] FOR LOGIN [techshop_admin] WITH DEFAULT_SCHEMA=[dbo]
GO
IF NOT EXISTS (SELECT name FROM sys.database_principals WHERE name = 'techshop_owner')
CREATE USER [techshop_owner] FOR LOGIN [techshop_owner] WITH DEFAULT_SCHEMA=[People]
GO
-- Add user to datareader and datawriter role in the database
USE [techshop]
GO
ALTER ROLE [db_datareader] ADD MEMBER techshop_user
ALTER ROLE [db_datareader] ADD MEMBER techshop_owner
ALTER ROLE [db_datawriter] ADD MEMBER techshop_user
ALTER ROLE [db_datawriter] ADD MEMBER techshop_owner
ALTER ROLE db_owner ADD MEMBER techshop_admin
GO
USE techshop
GO
-- create schemas
CREATE SCHEMA Product
GO
CREATE SCHEMA Location
go
CREATE SCHEMA People
go
CREATE SCHEMA Orders
go
-- create tables
CREATE TABLE people.title (
id int NOT NULL IDENTITY(1,1),
name varchar(30) NOT NULL UNIQUE,
CONSTRAINT PK_title PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Location.states (
id int NOT NULL identity(1,1),
name varchar(30) NOT NULL UNIQUE,
CONSTRAINT PK_state PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Location.city (
id int NOT NULL identity(1,1),
name varchar(30) NOT NULL UNIQUE,
CONSTRAINT PK_City PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Product.categories (
id int NOT NULL identity(1,1),
name varchar(30) NOT NULL UNIQUE,
CONSTRAINT PK_category PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Product.products (
id int NOT NULL identity(1,1),
name varchar(50) NOT NULL,
category_id int NOT NULL,
price int DEFAULT '0',
stock int DEFAULT '0',
CONSTRAINT PK_Product PRIMARY KEY CLUSTERED (id),
CONSTRAINT FK_productCat FOREIGN KEY (category_id) REFERENCES Product.categories(id),
CONSTRAINT CK_Price CHECK (price >= 0),
CONSTRAINT CK_Stock CHECK (stock >= 0)
)
GO
CREATE TABLE People.customers (
id int NOT NULL identity(1,1),
firstName varchar(20) NOT NULL,
lastName varchar(20) NOT NULL,
street varchar(50) NOT NULL,
str_number int NOT NULL,
city_id int NOT NULL,
state_id int NOT NULL,
phone varchar(20),
email varchar(50) NOT NULL,
CONSTRAINT PK_customer PRIMARY KEY CLUSTERED (id),
CONSTRAINT FK_customercity FOREIGN KEY (city_id) REFERENCES Location.city(id),
CONSTRAINT FK_customerstate FOREIGN KEY (state_id) REFERENCES Location.states(id),
CONSTRAINT CK_cust_email CHECK (email LIKE '%@%.%' AND LEN(email) > 5)
)
GO
CREATE TABLE People.employee (
id int NOT NULL identity(1,1),
firstName varchar(30) NOT NULL,
lastName varchar(30) NOT NULL,
street varchar(50) NOT NULL,
str_number int NOT NULL,
city_id int NOT NULL,
state_id int NOT NULL,
phone varchar(20),
email varchar(50) NOT NULL,
title_id int NOT NULL,
CONSTRAINT PK_employee PRIMARY KEY CLUSTERED (id),
CONSTRAINT FK_employeecity FOREIGN KEY (city_id) REFERENCES Location.city(id),
CONSTRAINT FK_employeestate FOREIGN KEY (state_id) REFERENCES Location.states(id),
CONSTRAINT FK_employeetitla FOREIGN KEY (title_id) REFERENCES People.title(id),
CONSTRAINT CK_emp_email CHECK (email LIKE '%@%.%' AND LEN(email) > 5)
)
GO
CREATE TABLE Orders.orders (
id int NOT NULL identity(1,1),
customer_id int NOT NULL,
employee_id int NOT NULL,
order_value int,
order_date datetime default getdate(),
CONSTRAINT PK_order PRIMARY KEY CLUSTERED (id),
CONSTRAINT FK_customer_id FOREIGN KEY (customer_id) REFERENCES People.customers(id),
CONSTRAINT FK_employee_id FOREIGN KEY (employee_id) REFERENCES People.employee(id),
CONSTRAINT CK_order_date CHECK (order_date > '2022-01-01 00:00:00')
)
GO
CREATE NONCLUSTERED INDEX order_customer_index ON Orders.orders (customer_id)
CREATE NONCLUSTERED INDEX order_employee_index ON Orders.orders (employee_id)
GO
CREATE TABLE Orders.order_list (
order_id int NOT NULL,
product_id int NOT NULL,
quantity int NOT NULL DEFAULT '1',
CONSTRAINT PK_orderlist PRIMARY KEY CLUSTERED (order_id, product_id),
CONSTRAINT FK_orderId FOREIGN KEY (order_id) REFERENCES Orders.orders(id),
CONSTRAINT FK_productid FOREIGN KEY (product_id) REFERENCES Product.products(id),
CONSTRAINT CK_quantity CHECK (quantity > 0)
)
GO
CREATE NONCLUSTERED INDEX order_list_index ON Orders.order_list (product_id)
GO
CREATE TABLE Product.component_speed (
id int NOT NULL IDENTITY(1,1),
value int NOT NULL UNIQUE,
CONSTRAINT PK_speed PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Product.processor_socket (
id int NOT NULL IDENTITY(1,1),
name varchar(10) NOT NULL UNIQUE,
CONSTRAINT PK_procSocket PRIMARY KEY CLUSTERED (id)
)
go
CREATE TABLE Product.processor (
product_id int NOT NULL,
socket_id int NOT NULL,
speed_id int NOT NULL,
CONSTRAINT PK_processor PRIMARY KEY CLUSTERED (product_id, socket_id),
CONSTRAINT FK_proproduct FOREIGN KEY (product_id) REFERENCES Product.products(id),
CONSTRAINT FK_procSocket FOREIGN KEY (socket_id) REFERENCES Product.processor_socket(id),
CONSTRAINT FK_procspeed FOREIGN KEY (speed_id) REFERENCES Product.component_speed(id)
)
go
CREATE TABLE Product.memory_type (
id int NOT NULL IDENTITY(1,1),
name varchar(12) NOT NULL UNIQUE,
CONSTRAINT PK_memorytype PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Product.memory (
product_id int NOT NULL,
ddr_id int NOT NULL,
speed_id int NOT NULL,
CONSTRAINT PK_memory PRIMARY KEY CLUSTERED (product_id, ddr_id),
CONSTRAINT FK_memproduct FOREIGN KEY (product_id) REFERENCES Product.products(id),
CONSTRAINT FK_memtype FOREIGN KEY (ddr_id) REFERENCES Product.memory_type(id),
CONSTRAINT FK_memspeed FOREIGN KEY (speed_id) REFERENCES Product.component_speed(id)
)
GO
CREATE TABLE Product.vga_chip (
id int NOT NULL IDENTITY(1,1),
name varchar(10) NOT NULL UNIQUE,
CONSTRAINT PK_chip PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Product.vga (
product_id int NOT NULL,
chip_id int NOT NULL,
speed_id int NOT NULL,
CONSTRAINT PK_vga PRIMARY KEY CLUSTERED (product_id, chip_id),
CONSTRAINT FK_vgaproduct FOREIGN KEY (product_id) REFERENCES Product.products(id),
CONSTRAINT FK_vgachip FOREIGN KEY (chip_id) REFERENCES product.vga_chip(id),
CONSTRAINT FK_vgaspeed FOREIGN KEY (speed_id) REFERENCES product.component_speed(id)
)
GO
-- creating views
-- Az összes termék, minden adatával
CREATE VIEW AllProducts
WITH SCHEMABINDING
AS
SELECT p.name as ProductName,
cat.name as Category,
CASE WHEN cat.name = 'Video Card' THEN c.name
	WHEN cat.name = 'Processor' THEN ps.name
	WHEN cat.name = 'Memory' THEN mt.name
END as Type,
CONCAT(sp.value, ' MHz') as ClockSpeed,
CONCAT(p.price, ' USD') as Price,
p.stock as Stock
FROM Product.products as p
LEFT JOIN product.vga as v ON v.product_id = p.id
LEFT JOIN Product.memory AS m ON m.product_id = p.id
LEFT JOIN Product.processor AS pro ON pro.product_id =p.id
LEFT JOIN product.vga_chip as c ON c.id = v.chip_id
LEFT JOIN Product.memory_type AS mt ON mt.id = m.ddr_id
LEFT JOIN Product.processor_socket AS ps ON ps.id = pro.socket_id
LEFT JOIN Product.categories as cat ON cat.id = p.category_id
LEFT JOIN Product.component_speed as sp 
ON sp.id = (
CASE WHEN cat.name = 'Video Card' THEN v.speed_id
	WHEN cat.name = 'Processor' THEN pro.speed_id
	WHEN cat.name = 'Memory' THEN m.speed_id
	END)
GO
-- Összes rendelés értéke
CREATE VIEW TotalOrderValue
WITH SCHEMABINDING
AS
SELECT SUM(ol.quantity * p.price) AS TotalOrderValue 
FROM Orders.orders as o
LEFT JOIN Orders.Order_list as ol
ON ol.order_id = o.id
LEFT JOIN Product.products as p
ON p.id = ol.product_id
LEFT JOIN Product.categories as c
ON c.id = p.category_id
GO
-- Nem rendelt termékek neve és kategóriája
CREATE VIEW NotOrderedProduct
WITH SCHEMABINDING
AS
SELECT p.name AS ProductName,
c.name AS CategoryName FROM Product.products AS p
LEFT JOIN Product.categories AS c
ON c.id = p.category_id
WHERE NOT EXISTS 
(SELECT pr.name FROM Orders.orders AS o
LEFT JOIN Orders.order_list AS ol
ON ol.order_id = o.id
LEFT JOIN Product.products AS pr
ON pr.id = ol.product_id
WHERE pr.id = p.id)
GO
/*Rendelt termékek neve, kategóriája, ára, rendelt összmennyisége
és a mennyiség összeszorozva az árral*/
CREATE VIEW OrderedProducts
WITH SCHEMABINDING
AS
SELECT p.name AS ProductName,
c.name AS CategoryName,
p.price AS ProductPrice,
SUM(ol.quantity) AS OrderQuantity,
SUM(p.price * ol.quantity) AS OrderValue
FROM Orders.order_list AS ol
LEFT JOIN Product.products AS p
ON p.id = ol.product_id
LEFT JOIN Product.categories AS c
ON c.id = p.category_id
GROUP BY p.name, c.name, p.price
GO
-- creating procedures
-- Table variable, subselect
-- ProductID alapján egy adott termék adatait kapjuk vissza table formában.
CREATE PROCEDURE Product.ProductInfo
@ProdID int
AS
BEGIN
DECLARE @Result table (id int, name varchar(30), category varchar(30))
INSERT INTO @Result (id, name, category)
SELECT p.id, p.name, (SELECT name FROM Product.categories WHERE id = p.category_id) FROM Product.products as p 
WHERE p.id = @ProdID
SELECT * FROM @Result
END
GO
-- Új kategóriát adhatunk meg, egy nevet vár az eljárás, a kimeneti változón
-- kapjuk a hibaüzenetet, vagy a sikeres kategóriafelvétel üzenetét.
CREATE PROCEDURE Product.AddCategory
@CatName varchar(30),
@Info varchar(60) OUTPUT
AS
SET NOCOUNT ON
DECLARE @CatId INT
DECLARE @Select varchar(60)
SET @Select = (SELECT name FROM Product.Categories WHERE name = @CatName)
	IF @Select = @CatName
		BEGIN
		SET @Info = 'Category already created!'
		END
	ELSE
		BEGIN
		INSERT INTO product.Categories (name) VALUES (@CatName)
		SET @CatID = (SELECT id FROM Product.categories WHERE name = @CatName)
		SET @Info = CONCAT('Category ', @CatName, ' ', 'created with ID: ',' ',@CatID)
		END
GO
-- Ez a következõ tárolt eljárás-hoz kapcsolódik.
CREATE PROCEDURE Product.AddProd
@ProdName varchar(30),
@CatName varchar(30),
@Price int,
@Stock int,
@Type varchar(30),
@SpeedID int
AS
	DECLARE @ProdID int
	DECLARE @CatID int
	DECLARE @TypeID int
	DECLARE @Info varchar(60)
	SET @CatID = (SELECT id FROM Product.Categories WHERE name = @CatName)
	SET @ProdID = (SELECT id FROM Product.products WHERE name = @ProdName)
	INSERT INTO Product.products (name, category_id, price, stock)
	VALUES (@ProdName, @CatID, @Price, @Stock)
	SET @ProdID = (SELECT id FROM Product.products WHERE name = @ProdName)
	IF @CatName = 'Video Card'
		BEGIN
		SET @TypeID = (SELECT id FROM Product.vga_chip WHERE name = @Type)
		INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES (@ProdID, @TypeID, @SpeedID) 
		SET @Info = CONCAT(@Prodname, ' ', 'added successfully to the ', @CatName, ' category!')
		PRINT @Info
		END
	ELSE
		IF @CatName = 'Processor'
			BEGIN
			SET @TypeID = (SELECT id FROM Product.processor_socket WHERE name = @Type)
			INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES (@ProdID, @TypeID, @SpeedID) 
			SET @Info = CONCAT(@Prodname, ' ', 'added successfully to the ', @CatName, ' category!')
			PRINT @Info
			END
		ELSE
			IF @CatName = 'Memory'
				BEGIN
				SET @TypeID = (SELECT id FROM Product.memory_type WHERE name = @Type)
				INSERT INTO Product.MEMORY (product_id, ddr_id, speed_id) VALUES (@ProdID, @TypeID, @SpeedID) 
				SET @Info = CONCAT(@Prodname, ' ', 'added successfully to the ', @CatName, ' category!')
				PRINT @Info
				END
GO
CREATE PROCEDURE Product.AddNewProduct
@ProdName varchar(30),
@CatName varchar(30),
@Price int,
@Stock int,
@Type varchar(30),
@Speed int
AS
SET NOCOUNT ON
DECLARE @Info varchar(60)
DECLARE @Select varchar(60)
DECLARE @CatSelect varchar(60)
DECLARE @TypeSelect varchar(60)
DECLARE @SpeedSelect varchar(60)
DECLARE @SpeedID int
SET @Select = (SELECT name FROM Product.products WHERE name = @ProdName)
SET @CatSelect = (SELECT name FROM Product.Categories WHERE name = @CatName)
	IF @Select = @ProdName
		BEGIN
		SET @Info = 'Product already exists!'
		PRINT @Info
		END
	ELSE
		BEGIN
		IF @CatSelect = @CatName
			BEGIN
			IF @CatName = 'Processor'
			SET @TypeSelect = (SELECT name FROM Product.processor_socket WHERE name = @Type)
			ELSE
				IF @CatName = 'Video Card'
				SET @TypeSelect = (SELECT name FROM Product.vga_chip WHERE name = @Type)
				ELSE
					IF @CatName = 'Memory'
					SET @TypeSelect = (SELECT name FROM Product.memory_type WHERE name = @Type)

				IF @TypeSelect = @Type
					BEGIN
					SET @SpeedSelect = (SELECT value FROM Product.component_speed WHERE value = @Speed)
						IF @SpeedSelect = @Speed
							BEGIN
							SET @SpeedID = (SELECT id FROM Product.component_speed WHERE value = @Speed)
							EXEC Product.AddProd @ProdName, @CatName, @Price, @Stock, @Type, @SpeedID
							END
						ELSE
							BEGIN
							INSERT INTO Product.component_speed (value) VALUES (@Speed)
							SET @SpeedID = (SELECT id FROM Product.component_speed WHERE value = @Speed)
							EXEC Product.AddProd @ProdName, @CatName, @Price, @Stock, @Type, @SpeedID
							END
					END
				ELSE
					BEGIN
					SET @Info = 'Product Type doesnt exists!'
					PRINT @Info
					END
				END
		ELSE
			BEGIN
			SET @Info = 'Category doesnt exists!'
			PRINT @Info
			END
		END
GO
-- creating function
-- PersonID és a személy típusa alapján az adott ember nevét egy varchar értékben kapjuk vissza.
CREATE FUNCTION People.ConcatName (@PersonID int, @PersonType varchar(15))
RETURNS varchar(100)
AS
BEGIN
DECLARE @result varchar(100)
IF @PersonType = 'customer'
	BEGIN
	SET @result = (SELECT CONCAT(firstname, ' ', lastname) FROM People.customers WHERE id = @PersonID)
	END
ELSE
	IF @PersonType = 'employee'
		BEGIN
		SET @result = (SELECT CONCAT(firstname, ' ', lastname) FROM People.employee WHERE id = @PersonID)
		END
	ELSE
		BEGIN
		SET @result = 'PersonType not valid!'
		END
RETURN @result
END
GO
-- Egy adott rendelés értékét adja vissza.
CREATE OR ALTER FUNCTION Orders.ProductSum (@OrderID int)
RETURNS int
AS
BEGIN
DECLARE @Result int = (
SELECT SUM(p.price * quantity) FROM Orders.order_list AS ol
LEFT JOIN Product.products AS p
ON p.id = ol.product_id
WHERE order_id = @OrderID)
RETURN @Result
END
GO
-- Kiszámolja a rendelések teljes összegét az adott hónapra
CREATE OR ALTER FUNCTION Orders.MonthlyTotal (@Months int)
RETURNS int
AS
	BEGIN
	DECLARE @Result int = (
	SELECT
	SUM(order_value)
	FROM Orders.orders
	WHERE DATEPART(MM, order_date) = @Months)
	RETURN @Result
	END
GO
-- Visszaadja a rendeléseket havi bontásban, és a összes rendelés értékét a hónapban
CREATE FUNCTION Orders.MonthlyOrders (@Month int)
RETURNS TABLE
AS
RETURN
	SELECT id AS OrderID,
	People.ConcatName(customer_id, 'customer') AS Customer,
	People.ConcatName(employee_id, 'employee') AS Employee,
	CONCAT(order_value, ' ', 'USD') AS OrderValue
	FROM Orders.orders
	WHERE DATEPART(MM, order_date) = @Month
GO
-- application role
USE [techshop]
GO
IF NOT EXISTS (SELECT name FROM sys.database_principals WHERE name = 'python_app')
CREATE APPLICATION ROLE [python_app] WITH DEFAULT_SCHEMA = [Product], PASSWORD = N'python'
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [python_app]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datawriter] TO [python_app]
GO
ALTER AUTHORIZATION ON SCHEMA::[Product] TO [python_app]
GO
-- creating trigger
-- Nem törölhetünk a rendeléslistáról.
DROP TRIGGER IF EXISTS BlockProductDelete
GO
CREATE OR ALTER TRIGGER BlockProductDelete
ON Orders.order_list
FOR DELETE
AS
	BEGIN
	PRINT 'Cannot delete from orders!'
	ROLLBACK
	END
GO
-- Nem lehet 100 MHz-nél kisebb sebességet felvinni.
DROP TRIGGER IF EXISTS SpeedCheck
GO
CREATE OR ALTER TRIGGER SpeedCheck
ON Product.component_speed
FOR INSERT
AS
DECLARE @Speed int = (SELECT value FROM inserted)
	BEGIN
	IF @Speed < 100
		BEGIN
		PRINT 'Speed below 100 MHz is not allowed!'
		ROLLBACK
		END
	ELSE
		BEGIN
		PRINT CONCAT(@Speed, ' MHz added!')
		END
	END
GO
-- Kiszámolja a rendeléshez tartotó termékek összértékét
DROP TRIGGER IF EXISTS OrderValue
GO
CREATE OR ALTER TRIGGER OrderValue
ON Orders.order_list
FOR INSERT
AS
DECLARE @OrderID int = (SELECT order_id FROM inserted)
DECLARE @SumValue int = (SELECT Orders.ProductSum(@OrderID))
UPDATE Orders.orders SET order_value = @SumValue WHERE id = @OrderID
GO
