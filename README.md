## SQL---Practical-1
### Retail_Sales_Dataset

## Table of Contents

  - [Project Overview](#project-overview)
  - [Data Source](#data-source)
  - [Tools](tools)
  - [Data Analysis](#data-analysis)
    
## Project Overview

#### This data analysis practical aims to provide insights into the sales performance of a retail_sales_dataset for the past year. By analysing various aspects of the sales data, we seek to make data-driven recommendations, and gain a deeper understanding of the company's performance. 

![Dashboard](retail_sales_Q1.png)

![Dashboard](retail_sales_Q2.png)

![Dashboard](retail_sales_Q3.png)

![Dashboard](retail_sales_Q4.png)

![Dashboard](retail_sales_Q5.png)

![Dashboard](retail_sales_Q6.png)

![Dashboard](retail_sales_Q7.png)

![Dashboard](retail_sales_Q8.png)

![Dashboard](retail_sales_Q9.png)

![Dashboard](retail_sales_11.png)

![Dashboard](retail_sales_12.png)

![Dashboard](retail_sales_13.png)

![Dashboard](retail_sales_14.png)
### Data Source

Sales Data: The primary dataset used for this analysis is the "retail_sales_dataset.csv" file, containing detailed informaion about each sale made by the company.

### Tools

#### Microsoft SQL Server - Data Analysis

### Data Analysis

```SQL

SELECT *
FROM retail_sales_dataset;

SELECT Transaction_ID, [date], Customer_ID
FROM retail_sales_dataset;

SELECT DISTINCT Product_Category
FROM retail_sales_dataset;

SELECT DISTINCT gender
FROM retail_sales_dataset;

SELECT *
FROM retail_sales_dataset
WHERE age > 40;

SELECT Transaction_ID, [Date], Customer_ID, Gender, Age, Product_Category, Quantity, Price_Per_Unit, Total_Amount
FROM retail_sales_dataset
WHERE Price_Per_Unit BETWEEN 100 AND 500;

SELECT *
FROM retail_sales_dataset
WHERE Product_Category IN ('Beauty') OR Product_Category = 'Electronics';

SELECT *
FROM retail_sales_dataset
WHERE Product_Category NOT IN ('Clothing');

SELECT *
FROM retail_sales_dataset
WHERE Quantity >= 3;

-- Section D: Aggregate Functions

-- Q10. Count the total number of transactions. 
-- Expected Output: Total_Transactions

SELECT COUNT(*) AS Total_Number_Of_Transactions
FROM retail_sales_dataset;

-- The above SQL query selects all columns and counts the total number of transactions 
-- from the retail_sales_dataset table and only returns the the total number of rows. 

-- Q11. Find the average Age of customers. 
-- Expected Output: Average_Age

SELECT AVG(age) AS Average_Age
FROM retail_sales_dataset;

-- The above SQL query selects only the age column and calculates
-- the average age of customers from the retail_sales_dataset table.
-- It only returns a temporary column where the total average of age is equals to 41.

-- Q12. Find the total quantity of products sold. 
-- Expected output: Total_Quantity

SELECT COUNT(*) AS Total_Number_Of_Transactions
FROM retail_sales_dataset;

-- The above SQL query selects all columns and counts the total number of transactions 
-- from the retail_sales_dataset table and only returns a row with total number of transactions. 

-- Q11. Find the average Age of customers. 
-- Expected Output: Average_Age

SELECT AVG(age) AS Average_Age
FROM retail_sales_dataset;

-- The above SQL query selects only the age column and calculates
-- the average age of customers from the retail_sales_dataset table.
-- It only returns a row where the total average of age is equals to 41.

-- Q12. Find the total quantity of products sold. 
-- Expected output: Total_Quantity

SELECT SUM(quantity) AS Total_Quantity
FROM retail_sales_dataset;

-- The above SQL query selects only the quantity column and calculates
-- the total quantity of products sold.
-- It only returns a row where the total quantity sold is equals to 2514 and allocates it to the temporary column.

-- Q13. Find the maximum Total Amount spent in a single transaction. 
-- Expected output: Max_Total_Amount

SELECT MAX(Total_Amount) AS Maximum_Total_Amount
FROM retail_sales_dataset;

-- The above SQL query selects the total amount column and calculates the maximum total amount.
-- It returns the row with the maximun total amount spenta and allocates it to the temporary column.

-- Q14. Find the minimum Price per Unit in the dataset. 
-- Expected output: Min_Price_per_Unit

SELECT MIN(Total_Amount) AS Minimum_Total_Amount
FROM retail_sales_dataset;

-- The above SQL query selects the total amount column and calculate the minimum total amount.
-- It returns the row with the minimum total amount spent and allocates it to the temporary column.

```

