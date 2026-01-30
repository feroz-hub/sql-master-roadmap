-- ==============================================
-- File: truncate.sql
-- Category: DDL (Data Definition Language)
-- Topic: TRUNCATE TABLE
-- ==============================================

USE CompanyDB;
GO

-- ----------------------------------------------
-- IMPORTANT NOTES:
-- TRUNCATE removes ALL rows from a table 
-- Table structure remains
-- Cannot be rolled back in SQL Server
-- ----------------------------------------------


-- ----------------------------------------------
-- 1. View data before TRUNCATE 
-- ----------------------------------------------

SELECT * 
FROM Employees;

-- ----------------------------------------------
-- Always check data before truncating
-- ----------------------------------------------


-- ----------------------------------------------
-- 2. TRUNCATE TABLE
-- ----------------------------------------------

TRUNCATE TABLE Employees;

-- ----------------------------------------------
-- All rows removed instantly
-- Identity column is RESET
-- ----------------------------------------------


-- ----------------------------------------------
-- 3. Verify table is empty
-- ----------------------------------------------

SELECT * 
FROM Employees;

-- ----------------------------------------------
-- Table exists, but no data
-- ----------------------------------------------


-- ----------------------------------------------
-- Difference: TRUNCATE vs DELETE (example)
-- ----------------------------------------------

-- DELETE removes rows one by one 
-- Can use WHERE
-- Can be rolled back (DML)

/*
DELETE FROM Employees;
ROLLBACK;
*/

-- TRUNCATE removes all rows at once
-- No WHERE allowed
-- Cannot be rolled back (DDL)


-- ----------------------------------------------
-- 5. TRUNCATE restriction example
-- ----------------------------------------------

-- Cannot truncate a table referenced by a foreign key

/*
TRUNCATE TABLE Employees_Department;
*/

-- ----------------------------------------------
-- Must drop FK or use DELETE instead
-- ----------------------------------------------