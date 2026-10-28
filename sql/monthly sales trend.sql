SELECT
    YEAR(order_date) AS tahun,
    MONTH(order_date) AS bulan,
    SUM(sales) AS total_penjualan,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_pesanan
FROM superstore_clean
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    tahun,
    bulan;
