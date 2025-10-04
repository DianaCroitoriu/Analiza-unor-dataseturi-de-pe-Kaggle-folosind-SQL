SELECT product_category_name, 
COUNT(*) AS total_products
FROM df_Products
GROUP BY product_category_name
ORDER BY total_products DESC
