SELECT COUNT(*)
FROM sales_data;


-- How many different products do we have? What are the bestsellers?
SELECT
    stockcode,
    COUNT(stockcode) AS num_of_prod,
    description
FROM sales_data
GROUP BY stockcode, description
ORDER BY num_of_prod DESC;


--How many orders? 
SELECT
    COUNT(DISTINCT invoiceno) AS number_of_orders
FROM sales_data;


--How many clients in total
SELECT 
    COUNT(DISTINCT customerid) + 
       (SELECT COUNT(*) FROM sales_data WHERE customerid IS NULL) AS total_clients
FROM sales_data
WHERE customerid IS NOT NULL;

-- registered clients
SELECT
    COUNT(DISTINCT customerid) as registered_clients
FROM sales_data
WHERE customerid IS NOT NULL;

-- unregistered clients
SELECT
    COUNT(*) as registered_clients
FROM sales_data
WHERE customerid IS NULL;

--Are there missing vals? If so then #?
SELECT 
    SUM(CASE WHEN invoiceno IS NULL THEN 1 ELSE 0 END) AS misisng_invoiceno,
    SUM(CASE WHEN stockcode IS NULL THEN 1 ELSE 0 END) AS misisng_stockcode,
    SUM(CASE WHEN description IS NULL THEN 1 ELSE 0 END) AS misisng_description,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS misisng_quantity,
    SUM(CASE WHEN invoicedate IS NULL THEN 1 ELSE 0 END) AS misisng_invoicedate,
    SUM(CASE WHEN unitprice IS NULL THEN 1 ELSE 0 END) AS misisng_unitprice,
    SUM(CASE WHEN customerid IS NULL THEN 1 ELSE 0 END) AS misisng_customerid,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS misisng_country
FROM sales_data;
