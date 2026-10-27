SELECT
    discount,
    COUNT(*) AS jumlah_transaksi,
    SUM(sales) AS total_penjualan,
    SUM(profit) AS total_profit
FROM superstore_clean
GROUP BY discount
ORDER BY discount;