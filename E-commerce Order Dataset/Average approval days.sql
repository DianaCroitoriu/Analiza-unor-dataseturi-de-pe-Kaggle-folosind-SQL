SELECT ROUND(AVG(
    JULIANDAY(df_Orders.order_approved_at) - 
	JULIANDAY(df_Orders.order_purchase_timestamp)
),2) AS Avg_approval_days
FROM df_Orders
WHERE df_Orders.order_approved_at IS NOT NULL
