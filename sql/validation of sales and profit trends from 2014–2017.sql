SELECT
    YEAR(order_date) AS year,
    COUNT(*) AS total_records,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / SUM(sales) * 100, 2
    ) AS profit_margin
FROM superstore_clean
GROUP BY YEAR(order_date)
ORDER BY year;