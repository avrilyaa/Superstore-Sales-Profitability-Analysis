SELECT
    COUNT(*) AS total_baris,
    COUNT(DISTINCT row_id) AS total_row_id_unik,
    COUNT(DISTINCT order_id) AS total_pesanan,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(sales), 2) AS rata_rata_sales,
    ROUND(
        SUM(profit) / SUM(sales) * 100, 2
    ) AS profit_margin_persen,
    MIN(order_date) AS tanggal_awal,
    MAX(order_date) AS tanggal_akhir
FROM superstore_clean;
