-- ==============================================
-- File: select-alias.sql
-- Topic: Column and Tables Aliases
-- ==============================================

-- 1. Column alias using AS keyword
SELECT
    Name AS EmployeeName,
    Salary AS MonthlySalary
FROM Employees;

-- ----------------------------------------------
-- AS gives a temporary name to a column
-- Alias exists only for the query result
-- ----------------------------------------------


-- 2. Column alias WITHOUT using AS (also valid)
SELECT
    Name EmployeeName,
    Department Dept
FROM Employees;

-- ----------------------------------------------
-- AS is optional in SQL Server
-- Interview question: Is AS mandatory? -> No
-- ----------------------------------------------


-- 3. Alias with spaces (use square brackets)
SELECT 
    Name AS [Employee Name],
    Salary AS [Monthly Salary]
FROM Employees;

-- ----------------------------------------------
-- Square brackets are required when alias contains spaces
-- ----------------------------------------------

-- 4. Using alias with expressions
SELECT 
    Name,
    Salary,
    Salary * 12 AS AnnualSalary
FROM Employees;

-- ----------------------------------------------
-- Very common real-world use case
-- ----------------------------------------------


-- 5. Table alias usage (recommended practice)
SELECT 
    e.Name,
    e.Department,
    e.Salary
FROM Employees e;

-- ----------------------------------------------
-- Table alias improves readability
-- Mandatory when using joins
-- ----------------------------------------------


-- 6. Alias in ORDER BY (valid)
SELECT 
    Name,
    Salary AS Pay
FROM Employees
ORDER BY Pay DESC;

-- ----------------------------------------------
-- ORDER BY is executed after SELECT
-- So alias is available here
-- ----------------------------------------------


-- 7. Alias in WHERE (INVALID example)
-- This will fail
/*
SELECT
    Name,
    Salary AS Pay
FROM Employees
WHERE Pay > 50,000;
*/

-- ----------------------------------------------
-- WHERE executes BEFORE SELECT
-- Alias does not exist at WHERE stage
-- ----------------------------------------------

-- 8. Correct version of the WHERE condition
SELECT
    Name,
    Salary AS Pay
FROM Employees
WHERE Salary > 500000;

-- ----------------------------------------------
-- Always use original column name in WHERE
-- ----------------------------------------------
