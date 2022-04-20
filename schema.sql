-- drop tables for clean start
DROP TABLE IF EXISTS memory, processor, employee, customers, order_list, orders, categories, products, city
DROP TABLE IF EXISTS proci, vga, teszt
go
-- create tables
CREATE TABLE city (
id int NOT NULL identity(1,1),
name varchar(30),
CONSTRAINT PK_City PRIMARY KEY (id));
go
CREATE TABLE products (
id int NOT NULL identity(1,1),
name varchar(50) NOT NULL,
category_id int NOT NULL,
price int,
stock int DEFAULT floor(rand()*10),
CONSTRAINT PK_Product PRIMARY KEY (id));
go
CREATE TABLE categories (
id int NOT NULL identity(1,1),
name varchar(30),
CONSTRAINT PK_category PRIMARY KEY (id));
go
CREATE TABLE orders (
id int UNIQUE NOT NULL,
customer_id int,
employee_id int,
CONSTRAINT PK_order PRIMARY KEY (id));
go
CREATE TABLE order_list (
order_id int NOT NULL,
product_id int NOT NULL,
quantity int NOT NULL,
CONSTRAINT FK_orderId FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE);
go
CREATE TABLE customers (
id int NOT NULL identity(1,1),
firstName varchar(20),
lastName varchar(20),
address varchar(50),
city_id int NOT NULL,
phone varchar(20),
email varchar(50),
CONSTRAINT PK_customer PRIMARY KEY (id));
go
CREATE TABLE employee (
id int NOT NULL identity(1,1),
firstName varchar(30),
lastName varchar(30),
address varchar(50),
city_id int NOT NULL,
phone varchar(20),
email varchar(50),
CONSTRAINT PK_employee PRIMARY KEY (id));
go
CREATE TABLE processor (
category_id int NOT NULL,
product_id int NOT NULL,
socket_type varchar(10),
clock_speed int,
CONSTRAINT FK_procategory FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE,
CONSTRAINT FK_proproduct FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE);
go
CREATE TABLE memory (
category_id int NOT NULL,
product_id int NOT NULL,
type varchar(30),
clock_speed int,
CONSTRAINT FK_memcategory FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE,
CONSTRAINT FK_memproduct FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE);
go
alter table products add constraint FK_productCat foreign key (category_id) references categories(id)
alter table orders add constraint FK_customer_id foreign key (customer_id) references customers(id)
alter table orders add constraint FK_employee_id foreign key (employee_id) references employee(id)
alter table order_list add constraint FK_productid foreign key (product_id) references products(id)
alter table customers add constraint FK_cityid foreign key (city_id) references city(id)
alter table employee add constraint FK_employeecityid foreign key (city_id) references city(id)
