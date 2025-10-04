SELECT city_id, SUM(orders) as total_orders
FROM product_orders
GROUP BY city_id 
ORDER BY total_orders DESC