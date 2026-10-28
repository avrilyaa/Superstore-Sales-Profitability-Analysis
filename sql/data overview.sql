SELECT
    COUNT(*) AS total_transaksi,
    COUNT(DISTINCT order_id) AS total_pesanan,
    COUNT(DISTINCT customer_id) AS total_pelanggan,
    SUM(sales) AS total_penjualan,
    SUM(profit) AS total_profit,
    AVG(sales) AS rata_rata_penjualan
FROM superstore_clean;
