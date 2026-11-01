SELECT 
    order_id,
    COUNT(*) AS jumlah
FROM superstore_clean
GROUP BY order_id
HAVING COUNT(*) > 1;