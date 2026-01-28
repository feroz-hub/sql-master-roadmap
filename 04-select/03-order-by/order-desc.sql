-- ==============================================
-- File: order-desc.sql
-- Topic: ORDER BY - Descending order
-- ==============================================

-- 1. Select all employees ordered by Salary (highest first)
SELECT * 
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
-- DESC sorts values from high to low
-- Very common in reports (top earners)
-- ----------------------------------------------


-- 2. Order employees by Age (older first)
SELECT * 
FROM Employees 
ORDER BY Age DESC;

-- ----------------------------------------------
-- Useful when finding senior or experienced employees
-- ----------------------------------------------


-- 3. Order employees by EmpId (latest record first)
SELECT * 
FROM Employees
ORDER BY EmpId DESC;

-- ----------------------------------------------
-- Common pattern to fetch recently inserted rows
-- ----------------------------------------------


-- 4. Order employees by Name in reverse alphabetical order
SELECT * 
FROM Employees
ORDER BY Name DESC;

-- ----------------------------------------------
-- Z -> A ordering
-- ----------------------------------------------


-- 5. Order employees by City in descending order
SELECT * 
FROM Employees 
ORDER BY City DESC;

-- ----------------------------------------------
-- Reverse alphabetical city listing
-- ----------------------------------------------


-- 6. Select specific columns and sort by Salary DESC
SELECT
    Name,
    Department,
    Salary
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
-- ORDER BY works even when not all columns are selected
-- ----------------------------------------------


-- 7. ORDER BY with expression (descending)
SELECT 
    Name,
    Salary,
    Salary * 12 AS AnnualSalary
FROM Employees
ORDER BY AnnualSalary DESC;

-- ----------------------------------------------
-- ORDER BY can use column alias
-- ----------------------------------------------