## SQL---Practical-1
### Retail_Sales

## Table of Contents

  - [Project Overview](#project-overview)
  - [Data Source](#data-source)
  - [Tools](tools)
  - [Data Analysis](#data-analysis)
    
## Project Overview

#### This data analysis practical aims to provide insights into the sales performance of a retail_sales_dataset for the past year. By analysing various aspects of the sales data, we seek to make data-driven recommendations, and gain a deeper understanding of the company's performance. 

### Data Source

Sales Data: The primary dataset used for this analysis is the "retail_sales_dataset.csv" file, containing detailed informaion about each sale made by the company.

### Tools

#### Microsoft SQL Server - Data Analysis

### Data Analysis

```SQL

SELECT *
FROM retail_sales_dataset;

-- The above SQL query selects all columns from the retail_sales_dataset table, denoted by the asterisk (*).
-- It retrieves every row and all associated columns from the retail_sales_dataset table.

SELECT Transaction_ID, [date], Customer_ID
FROM retail_sales_dataset;

![Dashboard](retail_sales_Q1.png...]()
![Uploading retail_sales_Q1.png…]()

-- The above SQL query selects transactionid, date and customerid columns from the retail_sales_dataset table.
-- It retreives every row but only the specified columns, which are transactionid, date and customerid.

SELECT DISTINCT Product_Category
FROM	retail_sales_dataset;

-- The above SQL query selects the product category column from the retail_sales_dataset table.
-- It retreieves only clothing, electronics and beauty rows, the distinct function eliminates duplicates.

SELECT DISTINCT gender
FROM retail_sales_dataset;

-- The above SQL query selects the gender column from the retail_sales_dataset table. 
-- It retrieves only male and female rows, the distinct function eliminates duplicates.

SELECT *
FROM retail_sales_dataset
WHERE age > 40;

-- The above SQL query selects all columns from the retail_sales_dataset table.
-- It returns rows where age is greater than 40 and filters out rows where age is less than or equals to 40.

SELECT Transaction_ID, [Date], Customer_ID, Gender, Age, Product_Category, Quantity, Price_Per_Unit, Total_Amount
FROM retail_sales_dataset
WHERE Price_Per_Unit BETWEEN 100 AND 500;

-- The above SQL query selects all columns from the retail_sales_dataset table.
-- It returns rows where price_per_unit is between 300 and 500, and filters out rows where
-- the price_per_unit is less than 300 and the price_per_unti that is greater than 500.

SELECT *
FROM retail_sales_dataset
WHERE Product_Category IN ('Beauty') OR Product_Category = 'Electronics';

![Screenshot 2025-04-27 213333](https://github.com/user-attachments/assets/41b21d28-4646-450e-abe6-7cc83897bfb9)

-- The above SQL query select all columns from the retail_sales_dataset table.
-- It returns rows where product category is IN 'Beauy' OR product category is equals to 'Electronics'.
-- And filters out rows where product category is in 'Clothing'.

SELECT *
FROM retail_sales_dataset
WHERE Product_Category NOT IN ('Clothing');

-- The above SQL query select all columns from the retail_sales_dataset table.
-- It returns rows where product category is IN 'Beauy' OR product category is equals to 'Electronics'.
-- And filters out rows where product category is in 'Clothing'.

SELECT *
FROM retail_sales_dataset
WHERE Quantity >= 3;

-- The above SQL query selects all columns from the retail_sales_dataset table.
-- It returns rows where quantity is greater than or equals to 3, and filters out rows where 
-- quantity < 3.
```

