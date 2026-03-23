create database project;
use project;

create table orders(
order_id int primary key,
customer_id int,
product_id int,
order_date date,
sales decimal(10,2),
quantity int,
profit decimal(10,2)
);

select sum(sales) as total_sales from orders;

select month(order_date) as month,
sum(sales) as total_sales from orders group by month(order_date)
order by month;

select customer_id,
sum(sales) as total_spent
from orders
group by customer_id
order by total_spent desc
limit 5;

select product_id,
sum(profit) as total_profit
from orders
group by product_id
order by total_profit desc;

select avg(sales) as avg_order_value from orders;
