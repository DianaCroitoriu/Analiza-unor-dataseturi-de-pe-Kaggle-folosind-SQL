WITH "Customer Orders" AS (
    SELECT 
        "Customer ID",
        COUNT(DISTINCT "Order ID") AS "Total Orders"
    FROM SampleSuperstore
    GROUP BY "Customer ID"
)
SELECT 
    CASE 
        WHEN "Total Orders" > 5 THEN 'Client activ'
        ELSE 'Client ocazional'
    END AS "Customer Type",
    COUNT(*) AS "Num of Customers"
FROM "Customer Orders"
GROUP BY "Customer Type"
