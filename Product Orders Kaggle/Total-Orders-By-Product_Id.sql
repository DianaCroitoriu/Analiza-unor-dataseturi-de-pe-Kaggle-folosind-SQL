SELECT product_id, SUM(orders) as total_orders
FROM product_orders
GROUP BY product_id 
ORDER BY total_orders DESC