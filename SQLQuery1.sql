 select sum(total_price) as total_revenue from pizza_sales

select*from pizza_sales

select sum(total_price) /COUNT(DISTINCT order_id) as Avg_order_value from pizza_sales

select*from pizza_sales

select sum(quantity) as total_pizza_sold from pizza_sales

select*from pizza_sales

select count(distinct order_id) as total_orders from pizza_sales

select*from pizza_sales

select cast(cast(sum(quantity)as DECIMAL(10,2)) /
cast(count(distinct order_id) as DECIMAL(10,2)) as DECIMAL(10,2)) as Ave_pizzas_per_order from pizza_sales

select*from pizza_sales

select DATENAME(DW,order_date) as ordere_day, count(distinct order_id) as total_orders
from pizza_sales
group by  DATENAME(DW,order_date)

select*from pizza_sales

select DATENAME(month,order_date) as month_name, count(distinct order_id) as total_orders
from pizza_sales
group by  DATENAME(month,order_date)
order by total_orders desc

select*from pizza_sales

select pizza_size,cast(sum(total_price) as decimal(10,2)) total_sales ,cast(sum(total_price) * 100 /
(select sum(total_price) from pizza_sales) as decimal(10,2)) as pct
from pizza_sales 
group by pizza_size
order by pct desc

select*from pizza_sales

select top 5 pizza_name, sum(total_price) as total_revenue
from pizza_sales
group by pizza_name
order by total_revenue desc

select*from pizza_sales

select top 5 pizza_name, sum(total_price) as total_revenue
from pizza_sales
group by pizza_name
order by total_revenue asc

select*from pizza_sales

select top 5 pizza_name, sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity desc

select*from pizza_sales

select top 5 pizza_name, sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity asc

select*from pizza_sales

select top 5 pizza_name, count(distinct order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders desc

select*from pizza_sales

select top 5 pizza_name, count(distinct order_id) as total_orders
from pizza_sales
group by pizza_name
order by total_orders asc
