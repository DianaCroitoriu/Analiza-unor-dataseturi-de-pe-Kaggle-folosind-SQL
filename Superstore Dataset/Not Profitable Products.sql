SELECT 
    "Product Name",
    SUM(Sales) AS "Total Sales",
    SUM(profit) AS "Total Profit"
FROM SampleSuperstore
GROUP BY "Product Name"
HAVING SUM(Profit) < 0
ORDER BY "Total Profit"
