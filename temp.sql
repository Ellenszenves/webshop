drop table if exists temp_employee, temp_customers, temp_city, temp_state
go
-- employee data
create table temp_employee
(city varchar(30),
firstname varchar(30),
lastname varchar(30),
phone varchar(30),
email varchar(50),
address varchar(50),
state varchar(30))

bulk insert dbo.temp_employee
from 'c:\Users\fallo\Desktop\webshop\data\employee.csv'
with (
format='csv',
firstrow=2)
go
insert into employee (firstname, lastname, address, city, state, phone, email)
select firstname, lastname, address, city, state, phone, email from temp_employee
go
-- customer data
create table temp_customers
(city varchar(30),
firstname varchar(30),
lastname varchar(30),
phone varchar(30),
email varchar(50),
address varchar(50),
state varchar(30))

bulk insert dbo.temp_customers
from 'c:\Users\fallo\Desktop\webshop\data\customers.csv'
with (
format='csv',
firstrow=2)
go
insert into customers (firstname, lastname, address, city, state, phone, email)
select firstname, lastname, address, city, state, phone, email from temp_customers
go
-- city data
-- removing all data from the original
delete from city;
create table temp_city
(name varchar(30));
insert into temp_city
select distinct(city) from temp_employee
go
insert into temp_city
select distinct(city) from temp_customers
go
insert into city(name)
select distinct(name) from temp_city
go
drop table if exists temp_city
go
-- state data
delete from states;
create table temp_state
(name varchar(30));
insert into temp_state
select distinct(state) from temp_employee
go
insert into temp_state
select distinct(state) from temp_customers
go
insert into states(name)
select distinct(name) from temp_state
go
drop table if exists temp_state, temp_employee, temp_customers
go
-- change names into ids
update employee
set employee.city = city.id
from employee
join city 
on employee.city like concat('%', city.name, '%')
go
update employee
set employee.state = states.id
from employee
join states
on employee.state like concat('%', states.name, '%')
go
alter table employee alter column city int not null
alter table employee alter column state int not null
go
update customers
set customers.city = city.id
from customers
join city
on customers.city like concat('%', city.name, '%')
go
update customers
set customers.state = states.id
from customers
join states
on customers.state like concat('%', states.name, '%')
go
alter table customers alter column city int not null
alter table customers alter column state int not null
go
select * from states
select * from city