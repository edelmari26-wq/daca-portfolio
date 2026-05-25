-- Week 1: SQL Introduction
-- Sissejuhatus SQL-i ja andmebaasi päringutesse

-- SELECT - andmete valimine
SELECT * FROM customers LIMIT 10;

-- WHERE - filtreerimine
SELECT * FROM customers WHERE age > 25;

-- ORDER BY - sorteerimine
SELECT * FROM sales ORDER BY sale_date DESC;

-- COUNT - loendamine
SELECT COUNT(*) as total_sales FROM sales;

-- Näidis: müügite arv kuude kaupa
SELECT DATE_TRUNC('month', sale_date) as month, COUNT(*) as sales_count
FROM sales
GROUP BY DATE_TRUNC('month', sale_date);
