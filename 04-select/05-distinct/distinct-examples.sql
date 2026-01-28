-- ==============================================
-- File: distinct-examples.sql
-- Topic: DISTINCT Keyword in SELECT
-- ==============================================


-- 1. Select all rows (baseline)
SELECT * 
FROM Employees;

-- ----------------------------------------------
-- Baseline result (may contain duplication in columns)
-- ----------------------------------------------


-- 2. Get distinct departments
SELECT DISTINCT Department
FROM Employees;

-- ----------------------------------------------
-- DISTINCT removes duplicate values
-- Applied to selected columns
-- ----------------------------------------------


-- 3. Get distinct cities
SELECT DISTINCT City
FROM Employees;

-- ----------------------------------------------
-- Very common use case
-- ----------------------------------------------


-- 4. DISTINCT with multiple columns
SELECT DISTINCT Department, City
FROM Employees;

-- ----------------------------------------------
-- DISTINCT applies to the combination of columns
-- Not individually
-- ----------------------------------------------


-- 5. DISTINCT with Name and Department
SELECT DISTINCT Name, Department
FROM Employees;

-- ----------------------------------------------
-- Rows are distinct based on both columns together
-- ----------------------------------------------


-- 6. DISTINCT with ORDER BY
SELECT DISTINCT Department
FROM Employees
ORDER BY Department;

-- ----------------------------------------------
-- ORDER BY work with DISTINCT
-- ----------------------------------------------


-- 7. DISTINCT with ORDER BY on non-selected column (SQL Server)
SELECT DISTINCT Department
FROM Employees
ORDER BY Department;

-- ----------------------------------------------
-- In SQL Server, ORDER BY column must appear in SELECT
-- ----------------------------------------------


-- 8. DISTINCT with COUNT
SELECT COUNT(DISTINCT Department) AS TotalDepartments
FROM Employees;

-- ----------------------------------------------
-- Very common interview question
-- ----------------------------------------------


-- 9. DISTINCT vs GROUP BY (same result)
-- DISTINCT version
SELECT DISTINCT Department
FROM Employees;

-- GROUP BY version 
SELECT Department 
FROM Employees
GROUP BY Department;

-- ----------------------------------------------
-- DISTINCT is simpler when no aggregation is needed
-- ----------------------------------------------


-- 10. DISTINCT with WHERE
SELECT DISTINCT City
FROM Employees
WHERE Department = 'IT';

-- ----------------------------------------------
-- WHERE filters first, then DISTINCT removes duplicates
-- ----------------------------------------------



