select * from orders

-- List all of the important data from the customers
select concat(firstname, ' ', lastname) as 'Name',
c.name as City,
s.name as State,
concat(street, ' ', str_number) as Address,
phone as Phone,
email as 'E-mail'
from customers as cust
left join city as c on c.id = cust.city_id
left join states as s on s.id = cust.state_id

-- List all of the important data from the employees
select concat(firstname, ' ', lastname) as 'Name',
c.name as City,
s.name as State, 
concat(street, ' ', str_number) as Address, 
phone as Phone, 
email as 'E-mail', 
t.name as 'Job Title' from employee as e
left join title as t on t.id = e.title_id
left join city as c on c.id = e.city_id
left join states as s on s.id = e.state_id

select * from title