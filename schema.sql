-- drop tables for clean start
DROP TABLE IF EXISTS memory, processor, employee, customers, order_list, orders, categories, products, city
DROP TABLE IF EXISTS proci, vga, teszt
go
-- create tables
CREATE TABLE city (
city_id int NOT NULL identity(1,1),
name varchar(30),
CONSTRAINT PK_City PRIMARY KEY (city_id));

CREATE TABLE products (
product_id int NOT NULL identity(1,1),
product_name varchar(50) NOT NULL,
category_id int NOT NULL,
price int,
stock int DEFAULT floor(rand()*10),
CONSTRAINT PK_Product PRIMARY KEY (product_id));

CREATE TABLE categories (
category_id int NOT NULL identity(1,1),
category_name varchar(30),
CONSTRAINT PK_category PRIMARY KEY (category_id));

CREATE TABLE orders (
order_id int UNIQUE NOT NULL,
customer_id int,
employee_id int,
CONSTRAINT PK_order PRIMARY KEY (order_id));

CREATE TABLE order_list (
order_id int NOT NULL,
product_id int NOT NULL,
quantity int NOT NULL,
CONSTRAINT FK_orderId FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE);

CREATE TABLE customers (
customer_id int NOT NULL identity(1,1),
firstName varchar(20),
lastName varchar(20),
address varchar(50),
city_id int NOT NULL,
phone varchar(20),
email varchar(50),
CONSTRAINT PK_customer PRIMARY KEY (customer_id));

CREATE TABLE employee (
employee_id int NOT NULL identity(1,1),
firstName varchar(30),
lastName varchar(30),
address varchar(50),
city_id int NOT NULL,
phone varchar(20),
email varchar(50),
CONSTRAINT PK_employee PRIMARY KEY (employee_id));

CREATE TABLE processor (
category_id int NOT NULL,
product_id int NOT NULL,
socket_type varchar(10),
clock_speed int,
CONSTRAINT FK_procategory FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE CASCADE,
CONSTRAINT FK_proproduct FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE);

CREATE TABLE memory (
category_id int NOT NULL,
product_id int NOT NULL,
type varchar(30),
clock_speed int,
CONSTRAINT FK_memcategory FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE CASCADE,
CONSTRAINT FK_memproduct FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE);