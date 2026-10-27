SELECT
    product_name,
    SUM(sales) AS total_penjualan,
    SUM(profit) AS total_profit,
    COUNT(*) AS jumlah_transaksi
FROM superstore_clean
GROUP BY product_name
ORDER BY total_profit DESC;