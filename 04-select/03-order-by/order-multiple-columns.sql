-- ==============================================
-- File: order-multiple-columns.sql
-- Topic: ORDER BY with multiple columns
-- ==============================================


-- 1. Order employees by Department, then by Salary
SELECT * 
FROM Employees
ORDER BY Department, Salary;

-- ----------------------------------------------
-- First sorts by Department (ASC)
-- Within each department, sorts by Salary (ASC)
-- ----------------------------------------------


-- 2. Order employees by Department ASC and Salary DESC
SELECT * 
FROM Employees
ORDER BY Department ASC, Salary DESC;

-- ----------------------------------------------
-- Most common real-world pattern:
-- Group-like ordering with top earners first
-- ----------------------------------------------


-- 3. Order employees by City, then by Age
SELECT * 
FROM Employees
ORDER BY City, Age;

-- ----------------------------------------------
-- Useful for city-wise listings
-- ----------------------------------------------


-- 4. Order employees by City ASC and Name ASC
SELECT *
FROM Employees
ORDER BY City ASC, Name ASC;

-- ----------------------------------------------
--  Alphabetical ordering within each city
-- ----------------------------------------------


-- 5. Order Employees by Salary DESC, then Age ASC
SELECT *
FROM Employees
ORDER BY Salary DESC, Age ASC;

-- ----------------------------------------------
--  Highest Salary first
--  If salary is more, younger employee first
-- ----------------------------------------------


-- 6. Order selected columns using multiple sort rules
SELECT
    Name,
    Department,
    Salary,
    Age
FROM Employees
ORDER BY Department, Salary DESC;

-- ----------------------------------------------
--  ORDER BY columns do not have to match SELECT order
-- ----------------------------------------------


-- 7. Using alias in multiple ORDER BY columns
SELECT
    Name,
    Department,
    Salary,
    Salary * 12 AS AnnualSalary
FROM Employees
ORDER BY Department, AnnualSalary DESC;

-- ----------------------------------------------
--  Aliases are allowed in ORDER BY
-- ----------------------------------------------


-- 8. ORDER BY column position with multiple columns (NOT recommended)
SELECT
    Name,
    Department,
    Salary
FROM Employees
ORDER BY 2, 3 DESC;

-- ----------------------------------------------
--  2 = Department, 3 = Salary
--  Avoid this in production
-- ----------------------------------------------