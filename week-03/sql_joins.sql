-- Week 3: SQL JOINS
-- Tabelite ühendamine

-- INNER JOIN - ühised read
SELECT s.sale_id, c.customer_id, c.first_name, s.total_price
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id;

-- LEFT JOIN - kõik vasakust tabelst
SELECT c.customer_id, c.first_name, COUNT(s.sale_id) as sale_count
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name;

-- Kolm tabelit
SELECT 
    s.sale_id,
    c.first_name,
    p.product_name,
    s.total_price
FROM sales s
INNER JOIN customers c ON s.customer_id = c.customer_id
INNER JOIN products p ON s.product_id = p.product_id;
