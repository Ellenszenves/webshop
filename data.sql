-- category data
insert into categories (category_name) values ('processor'), ('video card')
-- city data
drop table if exists cities
create table cities (city varchar(50),lat varchar(10),lng varchar(10),country varchar(50),iso2 varchar(50),admin varchar(50),capital varchar(50),popul int,poppop int)
go
BULK INSERT dbo.cities
FROM 'C:\Users\fallo\Desktop\webshop\hu.csv'
WITH
(FORMAT='CSV',
-- UTF-8
CODEPAGE='65001',
FIRSTROW=2)
GO
-- dropping unnecessary columns and adding primary key
alter table cities drop column lat, lng, country, iso2, admin, capital, popul, poppop
alter table cities add city_id int identity(1,1) primary key
go
-- select *  from cities
-- processor data
drop table if exists proci
create table proci (name varchar(50), codename varchar(20), cores varchar(10), clock varchar(20), socket varchar(20), process varchar(10), L3 varchar(10), tdp varchar(10), release varchar(30))
go
BULK INSERT dbo.proci
FROM 'C:\Users\fallo\Desktop\webshop\proc.txt'
WITH
(ROWTERMINATOR = '\n',
FIRSTROW=2)
GO
-- select * from proci
-- vga data
drop table if exists vga
create table vga (name varchar(30), gpu varchar(15), release varchar(30), bus varchar(20), mem varchar(30), clock varchar(15), shaders varchar(50))
go
bulk insert dbo.vga
from 'C:\Users\fallo\Desktop\webshop\vga.txt'
with
(rowterminator = '\n',
firstrow=2)
go
select * from vga
-- only test
drop table if exists teszt
create table teszt (name varchar(50))
go
-- insert data from another table with select
insert into teszt select name from vga
select * from teszt
insert into products (product_name, category_id) select name, 1 from proci
insert into products (product_name, category_id) select name, 2 from vga
drop table if exists proci, vga, teszt
go
select * from products