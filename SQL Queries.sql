--1. Top 5 Countries by Sales
SELECT TOP 5 Country,SUM(CAST(SALES AS DECIMAL(10,2))) AS SALES_BY_COUNTRY FROM CUSTOMERS
GROUP BY Country
ORDER BY SALES_BY_COUNTRY DESC

--2. Top 5 Product by Sales
SELECT TOP 5 DESCRIPTION,SUM(CAST(SALES AS DECIMAL(10,2))) AS SALES_BY_PRODUCT FROM CUSTOMERS
GROUP BY DESCRIPTION
ORDER BY SALES_BY_PRODUCT DESC

--3. Top 10 countries by unique customers count
SELECT TOP 10 COUNTRY, COUNT(DISTINCT CUSTOMER_ID) AS UNIQUE_CUSTOMERS
FROM CUSTOMERS
GROUP BY COUNTRY
ORDER BY UNIQUE_CUSTOMERS DESC

--4. Year on Year Sales Growth

WITH YOY_GROWTH AS(
SELECT YEAR AS YEAR, SUM(CAST(SALES AS DECIMAL(10,2))) AS CURRENT_SALES 
FROM CUSTOMERS
GROUP BY YEAR
)
, YOY_GROWTH1 AS(
SELECT *,
LAG(CURRENT_SALES,1,CURRENT_SALES) OVER (ORDER BY YEAR) AS PREVIOUS_YEAR_SALES
FROM YOY_GROWTH
)
SELECT *,(CURRENT_SALES-PREVIOUS_YEAR_SALES)*100/PREVIOUS_YEAR_SALES AS SALES_YOY_GROWTH
FROM YOY_GROWTH1

--5. Cumulative or Running sum of sales by Month for each Year

WITH CTE AS(
SELECT YEAR AS YEARS,MONTH AS MONTHS, SUM(CAST(SALES AS DECIMAL(10,2))) AS MONTHLY_SALES 
FROM CUSTOMERS
GROUP BY YEAR,MONTH

)
SELECT *,SUM(MONTHLY_SALES) OVER (ORDER BY YEARS,MONTHS) AS CUMULATIVE_SALES
FROM CTE

--6. Count of repeat customers for each year

WITH CTE AS
(SELECT CUSTOMER_ID, MIN(YEAR) AS FIRST_YEAR 
FROM CUSTOMERS GROUP BY CUSTOMER_ID)
SELECT C.YEAR,
SUM(CASE WHEN C.YEAR=CT.FIRST_YEAR THEN 1 ELSE 0 END) AS NEW_CUSTOMERS,
SUM(CASE WHEN C.YEAR!=CT.FIRST_YEAR THEN 1 ELSE 0 END) AS REPEAT_CUSTOMERS
FROM CUSTOMERS C JOIN CTE CT
ON C.CUSTOMER_ID=CT.CUSTOMER_ID
GROUP BY C.YEAR
ORDER BY C.YEAR;

