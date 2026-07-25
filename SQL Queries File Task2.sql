-- =====================================
-- Task 2: SQL Analysis
-- =====================================

-- Create Database
Create Database superstore_db;
use superstore_db;
show Databases;

-- Create Tables

Create table Orders(
Order_ID varchar(20), Order_Date Varchar(20), Customer_ID Varchar(20), Product_ID Varchar(20), 
Product_Category Varchar(50), Sales Decimal(10,2),
Quantity INT, Profit Decimal (10,2), Discount Decimal(10,2));

Create table Customers(
Customer_ID Varchar (10) , Customer_Name Varchar(30), Region Varchar (20), Segment Varchar(20));

Create table Products(
Product_ID Varchar(30), Product_Name Varchar (300), Category Varchar(50), Sub_Category Varchar(50));

Show Tables;

-- SQL JOIN Query

SELECT
    o.Order_ID,
    o.Order_Date,
    c.Customer_Name,
    c.Region,
    c.Segment,
    p.Product_Name,
    p.Category,
    o.Sales,
    o.Quantity,
    o.Profit
FROM Orders o
INNER JOIN Customers c
    ON o.Customer_ID = c.Customer_ID
INNER JOIN Products p
    ON o.Product_ID = p.Product_ID;
 
 -- Sales By Region
 
select c.region, sum(o.sales) as Total_Sales from orders o 
inner join customers c on 
o.Customer_ID = c.Customer_id
group by region
order by Total_Sales Desc;

-- Profit Margin Percent By Category

select Category, round(sum(Profit)/sum(Sales)*100,3) as Profit_Margin_Percentage from Orders
group by Category
order by Profit_Margin_Percentage desc;

-- Safe Mode Off

SET SQL_SAFE_UPDATES = 0;

-- Date Formate Update

UPDATE Orders
SET Order_Date =
CASE
    WHEN Order_Date LIKE '%/%'
        THEN DATE_FORMAT(STR_TO_DATE(Order_Date, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN Order_Date LIKE '%-%'
        THEN DATE_FORMAT(STR_TO_DATE(Order_Date, '%m-%d-%Y'), '%Y-%m-%d')
END;

-- Monthly Sales Trend

SELECT
    DATE_FORMAT(o.Order_Date,'%Y-%m') AS Month,
    ROUND(SUM(o.Sales),2) AS Monthly_Sales
FROM Orders o
GROUP BY Month
ORDER BY Month;

-- Top 5 Customers

select c.Customer_Name, sum(o.sales) as Revenue from
customers c join orders o on
c.Customer_ID = o.Customer_ID
group by Customer_name 
order by Revenue desc
limit 5;

-- Safe Mode On

SET SQL_SAFE_UPDATES = 1;