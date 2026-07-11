Use customer_churn;
Show Tables;
Select * From telco limit 10;
SELECT COUNT(*) AS total_customers
FROM telco;
SELECT COUNT(DISTINCT City) AS total_cities
FROM telco;
USE customer_churn;

SELECT `Churn Label`, COUNT(*) AS Customers
FROM telco
GROUP BY `Churn Label`;
SELECT
ROUND(
100 * SUM(CASE
WHEN `Churn Label`='Yes' THEN 1
ELSE 0
END)/COUNT(*),2
) AS Churn_Rate
FROM telco;
SELECT `Customer Status`,
COUNT(*) AS Customers
FROM telco
GROUP BY `Customer Status`;
SELECT
Gender,
`Churn Label`,
COUNT(*) AS Customers
FROM telco
GROUP BY Gender, `Churn Label`
ORDER BY Gender;
SELECT
Contract,
`Churn Label`,
COUNT(*) AS Customers
FROM telco
GROUP BY Contract, `Churn Label`
ORDER BY Contract;
SELECT
`Payment Method`,
`Churn Label`,
COUNT(*) AS Customers
FROM telco
GROUP BY `Payment Method`, `Churn Label`;
SELECT
`Internet Type`,
`Churn Label`,
COUNT(*) AS Customers
FROM telco
GROUP BY `Internet Type`, `Churn Label`;
SELECT
`Churn Label`,
ROUND(AVG(`Monthly Charge`),2) AS Avg_Monthly_Charge
FROM telco
GROUP BY `Churn Label`;
SELECT
`Churn Label`,
ROUND(AVG(`Total Revenue`),2) AS Avg_Revenue
FROM telco
GROUP BY `Churn Label`;
SELECT
`Churn Label`,
ROUND(AVG(`Tenure in Months`),2) AS Avg_Tenure
FROM telco
GROUP BY `Churn Label`;
SELECT
CASE
WHEN Age < 30 THEN 'Under 30'
WHEN Age BETWEEN 30 AND 50 THEN '30-50'
ELSE 'Above 50'
END AS Age_Group,
COUNT(*) AS Customers,
SUM(CASE WHEN `Churn Label`='Yes' THEN 1 ELSE 0 END) AS Churned
FROM telco
GROUP BY Age_Group;
SELECT
`Churn Reason`,
COUNT(*) AS Customers
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY `Churn Reason`
ORDER BY Customers DESC;
SELECT
`Churn Category`,
COUNT(*) AS Customers
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY `Churn Category`
ORDER BY Customers DESC;
SELECT
`Satisfaction Score`,
COUNT(*) AS Customers
FROM telco
GROUP BY `Satisfaction Score`
ORDER BY `Satisfaction Score`;
SELECT
`Churn Label`,
ROUND(AVG(CLTV),2) AS Avg_CLTV
FROM telco
GROUP BY `Churn Label`;
SELECT `Customer ID`,
       `Total Revenue`
FROM telco
ORDER BY `Total Revenue` DESC
LIMIT 10;
SELECT Contract,
       ROUND(AVG(`Total Revenue`),2) AS Avg_Revenue
FROM telco
GROUP BY Contract;
SELECT `Internet Type`,
       ROUND(AVG(`Monthly Charge`),2) AS Avg_Monthly_Charge
FROM telco
GROUP BY `Internet Type`;
