-- Fill missing values in description column
UPDATE sales_data
SET description = 'Unknown Product'
WHERE description IS NULL;


-- new columns - day and month
ALTER TABLE sales_data
ADD COLUMN Month INT,
ADD COLUMN Day INT;

UPDATE sales_data
SET Month = EXTRACT(MONTH FROM invoicedate),
    Day = EXTRACT(DAY FROM invoicedate);


-- higlight values < 0 in quantity by creating separate col
ALTER TABLE sales_data
ADD COLUMN IsReturn BOOLEAN;

UPDATE sales_data
SET IsReturn = TRUE WHERE quantity <0;
UPDATE sales_data
SET IsReturn = FALSE WHERE quantity >= 0; 

SELECT 
    quantity, 
    isreturn
FROM sales_data
WHERE isreturn IS TRUE

SELECT *
FROM sales_data
LIMIT 1000;