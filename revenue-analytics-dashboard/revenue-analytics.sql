-- Revenue performance by product category

SELECT 
    category,
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM sales_transactions
GROUP BY category
ORDER BY total_revenue DESC;
