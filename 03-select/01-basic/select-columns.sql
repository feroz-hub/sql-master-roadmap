-- ==============================================
-- File: select-columns.sql 
-- Topic: SELECT specific columns
-- ==============================================

-- 1. Select only Name and Salary columns
SELECT Name, Salary
FROM Employees;

-- ----------------------------------------------
-- This query fetches only required columns
-- Better that SELECT * for performance and clarity
-- ----------------------------------------------

-- 2. Select Name, Department, City
SELECT Name, Department, City
FROM Employees;

-- ----------------------------------------------
-- Usefull when UI or report needs limited fields
-- ----------------------------------------------

-- 3. Select Salary and Age only
SELECT Salary, Age
FROM Employees;

-- ----------------------------------------------
-- Order of Columns in SELECT defines output order
-- ----------------------------------------------

-- 4. Select columns with schema name (best practice)
SELECT Name, Salary, Department
FROM dbo.Employees;

-- ----------------------------------------------
-- Using schema improves readability and avoids ambiguity
-- ----------------------------------------------

-- 5. Select same column mutiple times (allowed, but avoid)
SELECT Name, Name, Salary
FROM Employees;

-- ----------------------------------------------
-- SQL allows this, but it's not meaningful
-- Interview questions: "Is this valid?" -> Yes
-- ----------------------------------------------
