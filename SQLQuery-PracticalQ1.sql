-- Data Analytics Course offered by BrightLightTutorials
-- Practical 1

-- Section A: Select Statement

-- 1. Display all columns for all transactions.
-- Expected output: All clomuns

SELECT *
FROM retail_sales_dataset;

-- The above SQL query selects all columns from the retail_sales_dataset table, denoted by the asterisk (*).
-- It retrieves every row and all associated columns from the retail_sales_dataset table.

-- 2. Display only transaction_ID, Date, and Customer_ID for all records.
-- Expected output: Transaction_ID, Date, Customer_ID

SELECT Transaction_ID, [date], Customer_ID
FROM retail_sales_dataset;

-- The above SQL query selects transactionid, date and customerid columns from the retail_sales_dataset table.
-- It retreives every row but only the specified columns, which are transactionid, date and customerid.

-- Section B: Select Distinct Statement

-- 3. Display all the distinct product categories in the dataset.
-- Expected output: Product Category.

SELECT *
FROM retail_sales_dataset;

SELECT DISTINCT Product_Category
FROM	retail_sales_dataset;

-- The above SQL query selects the product category column from the retail_sales_dataset table.
-- It retreieves only clothing, electronics and beauty rows, the distinct function eliminates duplicates.

-- 4. Display all the distinct gender values in the dataset.
-- Expected output: Gender

SELECT DISTINCT gender
FROM retail_sales_dataset;

-- The above SQL query selects the gender column from the retail_sales_dataset table. 
-- It retrieves only male and female rows, the distinct function eliminates duplicates.

-- Section C: Where Clause

-- 5. Display all transactions where Age is greater than 40.
-- Expected output: All columns

SELECT *
FROM retail_sales_dataset
WHERE age > 40;

-- The above SQL query selects all columns from the retail_sales_dataset table.
-- It returns rows where age is greater than 40 and filters out rows where age is less than or equals to 40.

-- 6. Display all transactions where the price per unit is between 100 and 500.
-- Expected output: All columns

SELECT Transaction_ID, [Date], Customer_ID, Gender, Age, Product_Category, Quantity, Price_Per_Unit, Total_Amount
FROM retail_sales_dataset
WHERE Price_Per_Unit BETWEEN 100 AND 500;

-- The above SQL query selects all columns from the retail_sales_dataset table.
-- It returns rows where price_per_unit is between 300 and 500, and filters out rows where
-- the price_per_unit is less than 300 and the price_per_unti that is greater than 500.

-- Q7 Display all transactions where the product category is either 'Beauty' or 'Electronics'.
-- Expected output: All columns

SELECT *
FROM retail_sales_dataset
WHERE Product_Category IN ('Beauty', 'Electronics');

-- The above SQL query select all columns from the retail_sales_dataset table.
-- It returns rows where product category is IN 'Beauy' OR product category is equals to 'Electronics'.
-- And filters out rows where product category is in 'Clothing'.

-- 8. Display all transactions where the product category is not in 'Clothing'.
-- Expected output: All columns.

SELECT *
FROM retail_sales_dataset
WHERE Product_Category NOT IN ('Clothing');

-- The above SQL query select all columns from the retail_sales_dataset table.
-- It returns rows where product category is IN 'Beauy' OR product category is equals to 'Electronics'.
-- And filters out rows where product category is in 'Clothing'.

-- 9. Display all transactions where the quantity is greater than or equals to 3.
-- Expected output: All columns

SELECT *
FROM retail_sales_dataset
WHERE Quantity >= 3;

-- The above SQL query selects all columns from the retail_sales_dataset table.
-- It returns rows where quantity is greater than or equals to 3, and filters out rows where 
-- quantity < 3.






