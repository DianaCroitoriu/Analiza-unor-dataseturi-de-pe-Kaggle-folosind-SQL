SELECT df_Products.product_category_name, COUNT(*) AS total_sales
FROM df_OrderItems
JOIN df_Products ON df_OrderItems.product_id = df_Products.product_id
GROUP BY df_Products.product_category_name
ORDER BY total_sales DESC
LIMIT 10