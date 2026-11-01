SELECT
    COUNT(*) AS total_baris,
    COUNT(DISTINCT row_id) AS row_id_unik
FROM superstore_clean;