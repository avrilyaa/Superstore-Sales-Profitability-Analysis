TRUNCATE TABLE superstore_clean;

INSERT INTO superstore_clean
SELECT
    row_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales,
    quantity,
    discount,
    profit
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY row_id
               ORDER BY order_id
           ) AS nomor_baris
    FROM superstore
    WHERE row_id IS NOT NULL
) AS data_bernomor
WHERE nomor_baris = 1;