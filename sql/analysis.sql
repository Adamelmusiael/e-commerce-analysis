-- total income
CREATE VIEW tot_income AS
SELECT 
    SUM(quantity * unitprice) AS total_income
FROM sales_data
WHERE isreturn IS FALSE;

-- num of returns
CREATE VIEW number_of_returns AS
SELECT
    COUNT(isreturn) AS num_of_returned
FROM sales_data
WHERE isreturn IS TRUE


-- average order $
CREATE VIEW average_order AS 
SELECT
    SUM(unitprice * quantity) / COUNT(DISTINCT invoiceno) AS avg_order_value
FROM sales_data
WHERE isreturn IS FALSE;


-- most often ordered products
CREATE VIEW most_often_ordered AS
SELECT 
    StockCode,
    COUNT(StockCode) AS number_of_orders,
    Description
FROM sales_data
WHERE isreturn IS FALSE
GROUP BY StockCode, Description
ORDER BY number_of_orders DESC;


--most often returned product
CREATE VIEW most_often_returned AS 
SELECT
    StockCode,
    COUNT(StockCode) AS number_of_returns,
    Description
FROM sales_data
WHERE isreturn IS TRUE
GROUP BY StockCode, Description
ORDER BY number_of_returns DESC;

-- best clients
CREATE VIEW best_clients AS 
SELECT
    customerid,
    SUM(unitprice * quantity) AS order_value
FROM sales_data
WHERE customerid IS NOT NULL
GROUP BY customerid
ORDER BY order_value DESC;

-- best day of the week
CREATE VIEW best_week_day AS 
SELECT
    TO_CHAR(invoicedate, 'Day') AS day_of_week,
    SUM(unitprice * quantity) AS total_income
FROM sales_data
GROUP BY day_of_week


-- income/ day of the month
CREATE VIEW income_month_day AS 
SELECT
    day,
    SUM(unitprice * quantity) AS total_income
FROM sales_data
GROUP BY day;


-- income/ country
CREATE VIEW income_country AS
SELECT
    country,
    SUM(unitprice * quantity) AS total_income
FROM sales_data
GROUP BY country
ORDER BY total_income DESC;


--income/ month
CREATE VIEW income_month AS
SELECT
    month,
    SUM(unitprice * quantity) AS total_income
FROM sales_data
GROUP BY month;


-- how income has changed through this time
CREATE VIEW income_time AS
SELECT
    TO_CHAR(invoicedate, 'YYYY-MM') AS year_month,
    SUM(unitprice * quantity) AS total_income
FROM sales_data
GROUP BY year_month
ORDER BY year_month



SELECT *
FROM sales_data
LIMIT 100;
