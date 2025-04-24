CREATE DATABASE retail_sales_dataset;
USE retail_sales_dataset;
select * from retail_sales_dataset;

SELECT * 
FROM retail_sales_dataset
WHERE Gender = 'Female';

SELECT *
FROM retail_sales_dataset
ORDER BY `Total Amount` DESC
LIMIT 5;

SELECT `Customer ID`,
       SUM(`Total Amount`) AS total_spent
FROM retail_sales_dataset
GROUP BY `Customer ID`
HAVING SUM(`Total Amount`) > 1000
ORDER BY total_spent DESC;

SELECT Gender, `Customer ID`,
       ROUND(AVG(`Total Amount`), 2) AS total_spent
FROM retail_sales_dataset
GROUP BY Gender, `Customer ID`
ORDER BY total_spent DESC;

SELECT `Product Category`, SUM(Quantity) AS Total_Quantity
FROM retail_sales_dataset
GROUP BY `Product Category`
ORDER BY Total_Quantity DESC;


SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(`Total Amount`) AS Total_Sales
FROM retail_sales_dataset
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY Month;

SELECT * 
FROM retail_sales_dataset
WHERE `Customer ID` IS NULL;







