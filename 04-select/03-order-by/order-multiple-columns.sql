-- ==============================================
-- File: order-mulitiple-columns.sql
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
FROM 
