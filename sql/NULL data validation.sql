SELECT
    SUM(row_id IS NULL) AS null_row_id,
    SUM(order_id IS NULL) AS null_order_id,
    SUM(order_date IS NULL) AS null_order_date,
    SUM(sales IS NULL) AS null_sales,
    SUM(profit IS NULL) AS null_profit,
    SUM(category IS NULL) AS null_category,
    SUM(region IS NULL) AS null_region,
    SUM(discount IS NULL) AS null_discount
FROM superstore_clean;