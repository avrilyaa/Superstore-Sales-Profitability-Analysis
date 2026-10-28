SELECT
    YEAR(order_date) AS tahun,
    COUNT(DISTINCT order_id) AS total_pesanan,
    SUM(sales) AS total_penjualan,
    SUM(profit) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin
FROM superstore_clean
GROUP BY YEAR(order_date)
ORDER BY tahun;
