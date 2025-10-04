SELECT "Customer Name", SUM(Sales) AS "Total Sales"
FROM SampleSuperstore
GROUP BY "Customer Name"
ORDER BY "Total Sales" DESC
LIMIT 10;
