SELECT df_Products.product_category_name, 
SUM(df_Payments.payment_value) AS total_revenue
FROM df_Payments
JOIN df_Orders 
ON df_Payments.order_id = df_Orders.order_id
JOIN df_OrderItems 
ON df_Orders.order_id = df_OrderItems.order_id
JOIN df_Products 
ON df_OrderItems.product_id = df_Products.product_id
GROUP BY df_Products.product_category_name
ORDER BY total_revenue DESC
