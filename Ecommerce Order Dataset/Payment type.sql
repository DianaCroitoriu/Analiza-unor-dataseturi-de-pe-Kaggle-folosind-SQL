SELECT df_Payments.payment_type, 
COUNT(*) AS num_of_transactions, 
SUM(df_Payments.payment_value) AS total_value
FROM df_Payments
GROUP BY df_Payments.payment_type
ORDER BY total_value DESC
