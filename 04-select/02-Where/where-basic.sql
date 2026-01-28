-- ==============================================
-- File: where-basic.sql 
-- Topic: WHERE clause - Basiec filtering
-- ==============================================

-- 1. Select all employees
SELECT *
FROM Employees;

-- ----------------------------------------------
-- Baseline query (no filtering)
-- ----------------------------------------------


-- 2. Filter employees from IT department
SELECT * 
FROM Employees
WHERE Department = 'IT';

-- ----------------------------------------------
-- WHERE filters rows
-- Only rows matching the condition are returned
-- ----------------------------------------------


-- 3. Filter employees with salary greater than 50000
SELECT * 
FROM Employees
WHERE Salary > 50000;

-- ----------------------------------------------
-- Comparison operator: >
-- Common Interview condition
-- ----------------------------------------------


-- 4. Filter employees with salary less than or equal to 45000
SELECT * 
FROM Employees
WHERE Salary <= 45000;

-- ----------------------------------------------
-- <= includes the boundary values
-- ----------------------------------------------


-- 5. Filter employees from chennai
SELECT * 
FROM Employees
WHERE City = 'Chennai';

-- ----------------------------------------------
-- String comparison is case-insensitive in SQL Server
-- ----------------------------------------------


-- 6. Filter employees with Age greater than or equal to 30
SELECT * 
FROM Employees
WHERE Age >= 30;

-- ----------------------------------------------
-- Numeric Comparison
-- ----------------------------------------------


-- 7. Filter employees NOT from HR department
SELECT * 
FROM Employees
WHERE Department <> 'HR';

-- ----------------------------------------------
-- <> means NOT EQUAL
-- Alternative: != (both work in SQL Server)
-- ----------------------------------------------


-- 8. Filter employees with exact Salary = 50000
SELECT *
FROM Employees
WHERE Salary = 50000;

-- ----------------------------------------------
-- = is equality operator
-- ----------------------------------------------


-- 9. Select Name and Salary of employees older than 25
SELECT 
    Name,
    Salary
FROM Employees
WHERE Age > 25;

-- ----------------------------------------------
-- WHERE works with selected columns only
-- ----------------------------------------------


-- 10. Filter employees whose City is NULL (example)
-- (This will return rows only if NULLs exists)
SELECT * 
FROM Employees
WHERE City IS NULL;

-- ----------------------------------------------
-- NULL comparison must use IS NULL / IS NOT NULL  
-- = NULL will NOT work
-- ----------------------------------------------