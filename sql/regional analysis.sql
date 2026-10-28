SELECT
    region,
    SUM(sales) AS total_penjualan,
    SUM(profit) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin
FROM superstore_clean
GROUP BY region
ORDER BY total_profit DESC;
