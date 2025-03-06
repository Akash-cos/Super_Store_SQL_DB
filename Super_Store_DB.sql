SELECT * FROM super_store.super_store;

CREATE DATABASE SUPER_STORE;
USE SUPER_STORE;

SELECT * FROM SUPER_STORE;


-- Explore data and clean data

-- Check for missing values
SELECT * FROM super_store WHERE DISCOUNT IS NULL;

-- Check for duplicates
SELECT DISCOUNT, COUNT(*) 
FROM super_store 
GROUP BY DISCOUNT
HAVING COUNT(*) > 1;

-- Check unique values in Ship Mode
SELECT DISTINCT 'Ship Mode' FROM super_store;

-- Update the schema if necessary
ALTER TABLE super_store MODIFY COLUMN PROFIT INT;


-- Check for invalid dates
SELECT * FROM super_store WHERE 'Ship Date' = '0000-00-00' OR 'Ship Date' = '0000-00-00';



-- Total sales by region
SELECT Region, Sum(round(Sales, 2)) AS TotalSales
FROM super_store
GROUP BY Region;

-- Top 10 customers by profit
SELECT 'Customer Name', SUM(Profit) AS TotalProfit
FROM super_store
GROUP BY 'Customer Name'
ORDER BY TotalProfit DESC
LIMIT 10;



-- SEGMENT THE CUSTOMER USING RFM SEGMENTATION
WITH rfm AS (
    SELECT
        'Customer ID',
        DATEDIFF('2025-03-06', MAX('Order Date')) AS Recency,
        COUNT('Order ID') AS Frequency,
        SUM(Sales) AS Monetary
    FROM super_store
    GROUP BY 'Customer ID'
)
SELECT
    'Customer ID',
    Recency,
    Frequency,
    Monetary,
    NTILE(4) OVER (ORDER BY Recency DESC) AS R_Score,
    NTILE(4) OVER (ORDER BY Frequency) AS F_Score,
    NTILE(4) OVER (ORDER BY Monetary) AS M_Score
FROM rfm;
