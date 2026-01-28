-- ==============================================
-- File: top.sql
-- Topic: Limiting rows using TOP (SQL Server)
-- ==============================================

-- 1. Select top 5 employees (any order)
SELECT TOP 5 *
FROM Employees;

-- ----------------------------------------------
-- TOP limits the number of rows returned
-- Without ORDER BY, the result is NOT deterministic
-- ----------------------------------------------


-- 2. Select top 5 employees ordered by Salary (highest paid)
SELECT TOP 5 *
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
-- Very common real-world query
-- Used for dashboards and reports
-- ----------------------------------------------

-- 3. Select top 3 highest paid employees
SELECT TOP 3 *
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
-- Always combine TOP with ORDER BY
-- ----------------------------------------------


-- 4. Select top 1 employee with highest salary
SELECT TOP 1 *
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
--  Used to find max / latest records
-- ----------------------------------------------


-- 5. Select top 5 youngest employees
SELECT TOP 5 *
FROM Employees
ORDER BY Salary ASC;

-- ----------------------------------------------
--  ASC gives lowest value first
-- ----------------------------------------------


-- 6. Select top 2 employees from each department (preview)
-- (This is NOT correct yet - window function needed)
-- Shown here to clarify limitation of TOP
/*
SELECT TOP 2 *
FROM Employees
ORDER BY Department, Salary DESC;
 */

-- ----------------------------------------------
-- TOP works on the entire result set
-- Not per group
-- ----------------------------------------------


-- 7. TOP with percentage
SELECT TOP 50 PERCENT  *
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
-- Return top 50% rows
-- Rarely used in production
-- ----------------------------------------------


-- 8. TOP with variable (dynamic TOP)
DECLARE  @TopCount INT = 3;

SELECT TOP (@TopCount) *
FROM Employees
ORDER BY Salary DESC;

-- ----------------------------------------------
-- Useful in stored procedures
-- ----------------------------------------------