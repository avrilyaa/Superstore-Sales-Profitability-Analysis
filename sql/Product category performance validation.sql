SELECT
    category,
    COUNT(*) AS total_transaksi,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / SUM(sales) * 100, 2
    ) AS profit_margin
FROM superstore_clean
GROUP BY category
ORDER BY total_profit DESC;