-- ==============================================
-- File: select-all.sql
-- Topic: Basic SELECT -Fetching all columns
-- ==============================================

-- 1. Select all columns from Employees table
SELECT *
FROM Employees;

-- ----------------------------------------------
-- Explanation:
-- SELECT *  -> select all columns
-- FROM      -> specifies the table
-- Employees -> table name
-- ----------------------------------------------

-- 2. Select  all employees (explicit format - interview friendly)
SELECT * 
FROM dbo.Employees;

-- ----------------------------------------------
-- dbo = default schema in SQL Server
-- Always good practice to use schema name
-- ----------------------------------------------

-- 3. Count tolal rows using SELECT *
SELECT COUNT(*)
FROM Employees;

-- ----------------------------------------------
-- COUNT(*) counts number of rows in the table
-- Very common interview question
-- ----------------------------------------------

-- 4. Select all employees ordered by EmpId
SELECT * 
FROM Employees
ORDER BY EmpId;

-- ----------------------------------------------
-- ORDER BY sorts the result set
-- Default order is ASC (ascending)
-- ----------------------------------------------
