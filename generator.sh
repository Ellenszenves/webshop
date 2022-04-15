#!/bin/bash
#Check if the file already exists
if [ -f generate.sql  ]
then
rm generate.sql
echo "Original deleted, new created"
touch generate.sql
else
touch generate.sql
echo "File created"
fi
#category data
echo "insert into categories (category_name) values ('processor'), ('video card'), ('memory')" >> generate.sql
#processor data
while IFS=$'\t' read -r name row2
do
stock=$(($RANDOM%20))
price=$(($RANDOM%100))
echo "insert into products (product_name, category_id, stock, price) values ('$name', '1', '$stock', '$price')" >> generate.sql
done < <(tail -n 50 data/proc.txt)
#vga data
while IFS=$'\t' read -r name row2
do
stock=$(($RANDOM%20))
price=$(($RANDOM%150))
echo "insert into products (product_name, category_id, stock, price) values ('$name', '2', '$stock', '$price')" >> generate.sql
done < <(tail -n 50 data/vga.txt)
#city data
while IFS=',' read -r name row2
do
echo "insert into city (name) values ('$name')" >> generate.sql
done < <(tail -n 1339 data/hu.csv)
#customer data
while IFS=',' read -r name phone email address city
do
firstname=$(echo "$name" | cut -d " " -f 1)
lastname=$(echo "$name" | cut -d " " -f 2)
cityid=$(($RANDOM%1339))
echo "insert into customers (firstname, lastname, address, city_id, phone, email) values" >> generate.sql
echo "('$firstname', '$lastname', '$address', '$cityid', '$phone', '$email')" >> generate.sql
done < <(tail -n 50 data/customers.csv)
#employee data
while IFS=',' read -r name phone email address city
do
firstname=$(echo "$name" | cut -d " " -f 1)
lastname=$(echo "$name" | cut -d " " -f 2)
cityid=$(($RANDOM%1339))
echo "insert into employee (firstname, lastname, address, city_id, phone, email) values" >> generate.sql
echo "('$firstname', '$lastname', '$address', '$cityid', '$phone', '$email')" >> generate.sql
done < <(tail -n 25 data/employee.csv)