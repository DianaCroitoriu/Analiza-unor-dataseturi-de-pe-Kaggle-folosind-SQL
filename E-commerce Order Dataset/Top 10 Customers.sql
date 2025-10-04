SELECT df_Orders.customer_id, 
SUM(df_Payments.payment_value) AS total_spent
FROM df_Orders
JOIN df_Payments 
ON df_Orders.order_id = df_Payments.order_id
GROUP BY df_Orders.customer_id
ORDER BY total_spent DESC
LIMIT 10
