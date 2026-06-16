CREATE DATABASE customer_churn_db;
USE customer_churn_db;
SELECT * FROM `telco-customer-churn` LIMIT 10;

SELECT 
    Churn, 
    COUNT(*) AS Total_Customers,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `telco-customer-churn`), 2) AS Percentage
FROM `telco-customer-churn`
GROUP BY Churn;

SELECT 
    Contract, 
    Churn, 
    COUNT(*) AS Total_Customers
FROM `telco-customer-churn`
GROUP BY Contract, Churn
ORDER BY Contract;

SELECT 
    Churn, 
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM `telco-customer-churn`
GROUP BY Churn;

SELECT 
    CASE 
        WHEN tenure <= 12 THEN '0-1 Year (0-12m)'
        WHEN tenure > 12 AND tenure <= 24 THEN '1-2 Years (13-24m)'
        WHEN tenure > 24 AND tenure <= 48 THEN '2-4 Years (25-48m)'
        ELSE 'Over 4 Years (>48m)'
    END AS Tenure_Group,
    Churn,
    COUNT(*) AS Total_Customers
FROM `telco-customer-churn`
GROUP BY Tenure_Group, Churn
ORDER BY Tenure_Group;

-- Data cleaning
SELECT COUNT(*) AS Missing_TotalCharges 
FROM `telco-customer-churn` 
WHERE TotalCharges IS NULL OR TotalCharges = ' ' OR TotalCharges = '';

-- check dublicate value 
SELECT customerID, COUNT(*) 
FROM `telco-customer-churn` 
GROUP BY customerID 
HAVING COUNT(*) > 1;

-- Internet Service + Tech Support (Combo Analysis)

SELECT 
    InternetService, 
    TechSupport, 
    Churn, 
    COUNT(*) AS Total_Customers
FROM `telco-customer-churn`
WHERE Churn = 'Yes'
GROUP BY InternetService, TechSupport
ORDER BY Total_Customers DESC;

SELECT 
    PaymentMethod, 
    Churn, 
    COUNT(*) AS Total_Customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(PARTITION BY PaymentMethod), 2) AS Churn_Rate_Per_Method
FROM `telco-customer-churn`
GROUP BY PaymentMethod, Churn;