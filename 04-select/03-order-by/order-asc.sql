-- ==============================================
-- File: order-asc.sql
-- Topic: ORDER BY - Ascending Order
-- ==============================================

-- 1. Select all employees ordered by Salary (ascending)
SELECT * 
FROM Employees 
ORDER BY Salary;

-- ----------------------------------------------
-- ASC is default sorting order
-- This query is equivalent to ORDER BY Salary ASC
-- ----------------------------------------------


-- 2. Explicit ASC keyword
SELECT * 
FROM Employees 
ORDER BY Salary ASC;

-- ----------------------------------------------
-- Using ASC improves readability
-- ----------------------------------------------


-- 3. Order employees by Age (youngest first)
SELECT * 
FROM Employees
ORDER BY Age ASC;

-- ----------------------------------------------
-- Useful for age-based analysis
-- ----------------------------------------------


-- 4. Order employees by Name alphabetically
SELECT * 
FROM Employees
ORDER BY Name;

-- ----------------------------------------------
-- String sorting uses alphabetical order
-- ----------------------------------------------


-- 5. Order employees by City (A -> Z)
SELECT * 
FROM Employees 
ORDER BY City ASC;

-- ----------------------------------------------
-- Useful in reports and grouping visually
-- ----------------------------------------------


-- 6. Order selected columns only
SELECT
    Name,
    Salary
FROM Employees
ORDER BY Salary ASC;

-- ----------------------------------------------
-- ORDER BY can use columns not in SELECT? (Yes in SQL Server)
-- ----------------------------------------------


-- 7. ORDER BY column position (NOT recommeded)
SELECT 
    Name,
    Salary
FROM Employees
ORDER BY 2;

-- ----------------------------------------------
-- 2 refers to Salary column
-- Avoid this in production (readability issue)
-- ----------------------------------------------