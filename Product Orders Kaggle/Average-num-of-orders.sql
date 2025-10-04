SELECT product_id, AVG(orders) as average_num_of_orders
FROM product_orders
Group by product_id
Order by average_num_of_orders DESC