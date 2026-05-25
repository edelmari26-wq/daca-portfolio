-- Week 4: SQL Aggregation
-- Andmete koondamine ja aruanded

-- GROUP BY ja koondmeetodid
SELECT 
    customer_id,
    COUNT(*) as order_count,
    SUM(total_price) as total_spent,
    AVG(total_price) as avg_order_value,
    MAX(total_price) as max_order,
    MIN(total_price) as min_order
FROM sales
GROUP BY customer_id;

-- HAVING - filtreerimine GROUP BY järel
SELECT customer_id, SUM(total_price) as total_spent
FROM sales
GROUP BY customer_id
HAVING SUM(total_price) > 1000;

-- Nädala aruanne
SELECT 
    DATE_TRUNC('week', sale_date) as week,
    COUNT(*) as sales_count,
    SUM(total_price) as weekly_revenue,
    AVG(total_price) as avg_sale
FROM sales
GROUP BY DATE_TRUNC('week', sale_date)
ORDER BY week DESC;
