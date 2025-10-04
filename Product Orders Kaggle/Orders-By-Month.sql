SELECT 
EXTRACT(year from order_date) as year,
EXTRACT(month from order_date) as month,
SUM(orders) as total_orders
FROM product_orders
GROUP BY year,month
Order BY year,month
