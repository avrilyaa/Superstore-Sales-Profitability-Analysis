SELECT
    CASE
        WHEN discount = 0 THEN '0%'
        WHEN discount <= 0.20 THEN '1-20%'
        WHEN discount <= 0.50 THEN '21-50%'
        ELSE '>50%'
    END AS discount_group,
    COUNT(*) AS total_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean
GROUP BY discount_group
ORDER BY
    CASE discount_group
        WHEN '0%' THEN 1
        WHEN '1-20%' THEN 2
        WHEN '21-50%' THEN 3
        WHEN '>50%' THEN 4
    END;