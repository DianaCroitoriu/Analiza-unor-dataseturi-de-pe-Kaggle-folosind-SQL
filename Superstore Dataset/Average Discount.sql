SELECT 
    Category,
    ROUND(AVG(Discount), 2) AS "Avg Discount"
FROM SampleSuperstore
GROUP BY Category
ORDER BY "Avg Discount" DESC
