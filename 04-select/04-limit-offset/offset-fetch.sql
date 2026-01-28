-- ==============================================
-- File: offset-fetch.sql
-- Topic: Pagination using OFFSET-FETCH (SQL Server)
-- ==============================================

-- IMPORTANT:
-- OFFSET-FETCH works only with ORDER BY clause
-- Introduced in SQL Server 2012+

-- 1. Skip first 3 rows and fetch next 5 rows
SELECT *
FROM Employees
ORDER BY EmpId
OFFSET 3 ROWS
FETCH NEXT 5 ROWS ONLY;

-- ----------------------------------------------
-- OFFSET = how many rows to skip
-- FETCH  = how many rows to return
-- ----------------------------------------------


-- 2. Get first page (page size = 3)
SELECT *
FROM Employees
ORDER BY EmpId
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;

-- ----------------------------------------------
-- Page 1
-- ----------------------------------------------


-- 3. Get second page (page size = 3)
SELECT *
FROM Employees
ORDER BY EmpId
OFFSET 3 ROWS
FETCH NEXT 3 ROWS ONLY;

-- ----------------------------------------------
-- Page 2
-- ----------------------------------------------


-- 4. Get third page (page size = 3)
SELECT *
FROM Employees
ORDER BY EmpId
OFFSET 6 ROWS
FETCH NEXT 3 ROWS ONLY;

-- ----------------------------------------------
-- Page 3
-- ----------------------------------------------


-- 5. Pagination ordered by Salary (highest first)
SELECT *
FROM Employees
ORDER BY  Salary DESC
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;

-- ----------------------------------------------
-- Useful for sorted pagination
-- ----------------------------------------------


-- 6. OFFSET without FETCH (valid)
SELECT *
FROM Employees
ORDER BY EmpId
OFFSET 5 ROWS;

-- ----------------------------------------------
-- Skips first 5 rows and return remaining rows
-- ----------------------------------------------


-- 7. OFFSET-FETCH with variables (dynamic pagination)
DECLARE @PageNumber INT = 2;
DECLARE @PageSize INT = 3;

SELECT *
FROM Employees
ORDER BY EmpId
OFFSET (@PageNumber - 1) * @PageSize ROWS
FETCH NEXT @PageSize ROWS ONLY;

-- ----------------------------------------------
-- Common API pagination formula
-- ----------------------------------------------


-- 8. WRONG: OFFSET without ORDER BY (INVALID)
-- This will fail
/*
SELECT *
FROM Employees
OFFSET 3 ROWS;
 */

-- ----------------------------------------------
-- ORDER BY is mandatory with OFFSET
-- ----------------------------------------------