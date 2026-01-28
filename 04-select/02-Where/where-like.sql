-- ==============================================
-- File: where-like.sql
-- Topic: WHERE clause with LIKE operator
-- ==============================================

-- 1. Employees whose Name starts with 'A'
SELECT * 
FROM Employees 
WHERE Name LIKE 'A%';

-- ----------------------------------------------
-- % = wildcard for zero or more characters
-- ----------------------------------------------


-- 2. Employees whose Name ends with 'i'
SELECT * 
FROM Employees
WHERE Name LIKE '%i';

-- ----------------------------------------------
-- Matches any string ending with 'i'
-- ----------------------------------------------


-- 3. Employees whose Name contains 'a'
SELECT * 
FROM Employees
WHERE Name LIKE '%a%';

-- ----------------------------------------------
-- Very common for search funcationality
-- ----------------------------------------------


-- 4. Employees whose City starts with 'B'
SELECT * 
FROM Employees
WHERE City LIKE 'B%';

-- ----------------------------------------------
-- Prefix search
-- ----------------------------------------------


-- 5. Employees whose City ends with 'i'
SELECT * 
FROM Employees
WHERE City LIKE '%i';

-- ----------------------------------------------
-- Suffix search
-- ----------------------------------------------


-- 6. Employees whose Name has exactly 4 characters
SELECT * 
FROM Employees
WHERE Name LIKE '____';

-- ----------------------------------------------
-- _ (underscore) matches exactly one character
-- ----------------------------------------------


-- 7. Employees whose Name starts with 'S' and has exactly 4 characters
SELECT * 
FROM Employees 
WHERE Name LIKE 'S____';

-- ----------------------------------------------
-- Combination of fixed and wildcard characters
-- --------------------------------------------


-- 8. Employees whose Name does NOT contain 'a'
SELECT * 
FROM Employees
WHERE NAME NOT LIKE '%a%';

-- ----------------------------------------------
-- NOT LIKE negates the pattern match
-- ----------------------------------------------


-- 9. Case sensitivity note (SQL Server)
SELECT * 
FROM Employees 
WHERE Name LIKE 'feroze%';

-- ----------------------------------------------
-- SQL Server is case-insensitive by default
-- Depends on database collation
-- ----------------------------------------------


-- 10. LIKE vs = comparison
-- Exact match 
SELECT * 
FROM Employees 
WHERE Name = 'Feroze';

-- Pattern mactch
SELECT * 
FROM Employees
WHERE Name LIKE 'Fero%';

-- ----------------------------------------------
-- Use = for exact match, LIKE for patterns
-- ----------------------------------------------