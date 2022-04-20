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
