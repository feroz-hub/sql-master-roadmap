-- ==============================================
-- File: where-between.sql
-- Topic: WHERE clause with BETWEEN operator
-- ==============================================

-- 1. Employees with Salary between 45000 and 60000
SELECT * 
FROM Employees
WHERE Salary BETWEEN 45000 AND 60000;

-- ----------------------------------------------
-- BETWEEN is inclusive (includes both boundary values)
-- Equivalent to: Salary >= 45000 AND Salary <= 60000
-- ----------------------------------------------


-- 2. Employees with Age between 25 and 30
SELECT * 
FROM Employees
WHERE Age BETWEEN 25 AND 30;

-- ----------------------------------------------
-- Includes Age = 25 and Age = 30
-- ----------------------------------------------


-- 3. Employees NOT between Salary range
SELECT * 
FROM Employees
WHERE Salary NOT BETWEEN 45000 AND 60000;

-- ----------------------------------------------
-- NOT BETWEEN excludes the entire range
-- ----------------------------------------------


-- 4. Employees from IT department with Salary between range
SELECT * 
FROM Employees
WHERE Department ='IT'
    AND Salary BETWEEN 50000 AND 70000;

-- ----------------------------------------------
-- BETWEEN combined with other conditions
-- ----------------------------------------------


-- 5. Using BETWEEN with dates (example)
-- (Assuming a DateOfJoining column exists)
-- Example syntax only
/*
SELECT *
FROM Employees
WHERE DateOfJoining BETWEEN '2022-01-01' AND '2022-12-31';
*/

-- ----------------------------------------------
-- Date ranges are very common in real projects
-- --------------------------------------------


-- 6. Incorrect order in BETWEEN (WARNING)
-- This will return no rows
SELECT * 
FROM Employees
WHERE Salary BETWEEN 60000 AND 45000;

-- ----------------------------------------------
-- Lower value must come first
-- SQL does not auto-swap values
-- ----------------------------------------------


-- 7. Correct version of the abvoe 
SELECT * 
FROM Employees 
WHERE Salary >= 45000
    AND Salary <= 60000;

-- ----------------------------------------------
-- Use this form if dynamic values are uncertain
-- ----------------------------------------------


