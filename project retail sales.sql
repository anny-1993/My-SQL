create database marketprice;
use marketprice;
create table retail_sales(
transaction_id INT PRIMARY KEY,	
sale_date DATE,	 
sale_time TIME,	
customer_id	INT,
gender	VARCHAR(15),
age	INT,
category VARCHAR(15),	
quantity	INT,
price_per_unit FLOAT,	
cogs	FLOAT,
total_sale FLOAT
);
select * from retail_price
WHERE transactions_id IS NULL;

SELECT * FROM retail_sales
WHERE sale_date IS NULL;

SELECT * FROM retail_sales
WHERE sale_time IS NULL;

SELECT * FROM retail_sales
WHERE 
transaction_id IS NULL
OR
sale_date IS NULL
OR 
sale_time IS NULL
OR
gender IS NULL
OR
category IS NULL
OR
quantity IS NULL
OR
cogs IS NULL
OR
total_sale IS NULL;

select count(*) as total_sales from retail_sales;
select count( customer_id) as total_sale FROM retail_sale;

select * from retail_sales
where sale_date ='2022-09-10';

select * from retail_sales
where category='clothing'
and
to_char(sale_date='YYYY-MM')='2022-11'
and
quantity>=4
group by 4;

select
sum(total_sale) as net_sale,
count(*) as total_sale
from retail_sales;

select transaction_id, 
min(price_per_unit),
max(price_per_unit)
from retail_sales 
group by transaction_id;

select transaction_id,
avg(sale_time)
from retail_sales
group by transaction_id;

select transaction_id,
avg(age)
from retail_sales
where category = 'beauty'
group by transaction_id;

select *
from retail_sales
where total_sale > 1000;

select sale_date
from retail_sales
where total_sale < 2500;

select price_per_unit
from retail_sales
where total_sale > 1000;

select transaction_id,
count(price_per_unit)
from retail_sales
where total_sale > 500
group by transaction_id;

select transaction_id,
count(price_per_unit)
from retail_sales
where total_sale < 200
group by transaction_id;

select
category,
gender,
count(transaction_id)
from retail_sales
group by category,
gender;

select * from retail_sales


