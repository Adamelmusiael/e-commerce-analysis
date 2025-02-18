CREATE TABLE sales_data (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate TIMESTAMP,
    UnitPrice REAL,
    CustomerID INT,
    Country VARCHAR(100)
)

SET datestyle = 'MDY';


-- There was some error with data encoding (probably old type of data encoding) so i have to change encoding to win1252
COPY sales_data(InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
FROM 'C:/Users/Adam/Desktop/main/programming/Data An EN/projects/Ecommerce_sales/dataset/data.csv'
DELIMITER ',' CSV HEADER ENCODING 'WIN1252';

SELECT *
FROM sales_data
LIMIT 100;
