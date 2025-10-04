SELECT 
    Region,
    SUM(Profit) AS "Total Profit"
FROM SampleSuperstore
GROUP BY Region
ORDER BY "Total Profit" DESC;
