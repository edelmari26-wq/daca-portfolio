-- Week 2: Data Cleaning in SQL
-- Andmete puhastamine ja valideerimine

-- Duplikaadid
SELECT COUNT(*) as total_rows, COUNT(DISTINCT customer_id) as unique_customers
FROM customers;

-- NULL-de käsitlemine
SELECT * FROM customers WHERE email IS NULL OR phone IS NULL;

-- Andmete teisendamine
SELECT 
    customer_id,
    UPPER(first_name) as first_name_upper,
    LOWER(last_name) as last_name_lower,
    TRIM(email) as email_clean
FROM customers;

-- Kuupäevade töödelmine
SELECT 
    sale_date,
    DATE(sale_date) as date_only,
    EXTRACT(YEAR FROM sale_date) as year,
    EXTRACT(MONTH FROM sale_date) as month
FROM sales;
