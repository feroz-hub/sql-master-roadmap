-- ==============================================
-- File: where-and-or.sql
-- Topic: WHERE clause with AND / OR operators
-- ==============================================


-- 1. Employees from IT department AND salary > 60000
SELECT * 
FROM Employees
WHERE Department = 'IT'
    AND Salary > 60000;

-- ----------------------------------------------
-- AND: all condition must be TRUE
-- ----------------------------------------------


-- 2. Employees from HR AND City = 'Mumbai'
SELECT * 
FROM Employees
WHERE Department = 'HR'
    AND City = 'Mumbai';

-- ----------------------------------------------
-- Multiple conditions combined using AND
-- ----------------------------------------------


-- 3. Employees from Chennai OR Bangalore
SELECT * 
FROM Employees
WHERE City = 'Chennai'
    OR City = 'Bangalore';

-- ----------------------------------------------
-- OR: at least one condition must be TRUE
-- ----------------------------------------------


-- 4. Employees from IT OR Salary > 65000
SELECT * 
FROM Employees
WHERE Department = 'IT'
    OR Salary > 65000;

-- ----------------------------------------------
-- OR expands the result set
-- ----------------------------------------------


-- 5. Using AND + OR together (WRONG logic example)
-- This may produce unexpected results
SELECT * 
FROM Employees
WHERE Department = 'IT'
    OR Department = 'HR'
    AND Salary > 50000;

-- ----------------------------------------------
-- AND has higher precedence than OR
-- SQL evaluates AND first
-- ----------------------------------------------


-- 6. Correct usage with parentheses (BEST PRACTICE)
SELECT * 
FROM Employees
WHERE (Department = 'IT' OR Department = 'HR')
    AND Salary > 50000;

-- ----------------------------------------------
-- Parentheses control execution order
-- Always use them for clarity
-- ----------------------------------------------


-- 7. Employees NOT in IT with Salary > 50000
SELECT * 
FROM Employees 
WHERE Department <> 'IT'
    AND Salary > 50000;

-- ----------------------------------------------
-- Combination of NOT EQUAL and AND
-- ----------------------------------------------


-- 8. Employees from IT or HR and Age < 30
SELECT * 
FROM Employees
WHERE (Department = 'IT' OR Department = 'HR')
    AND Age < 30;

-- ----------------------------------------------
-- Logical grouping using parentheses
-- ----------------------------------------------


-- 9. Employees from Finance OR (Salary < 50000 AND City = 'Mumbai')
SELECT * 
FROM Employees
WHERE Department = 'Finance'
    OR (Salary < 50000 AND City = 'Mumbai');

-- ----------------------------------------------
-- Nested conditions are common in real projects
-- ----------------------------------------------


-- 10. Employees NOT from Chennai OR Salary >= 60000
SELECT * 
FROM Employees
WHERE City <> 'Chennai'
    OR Salary >= 60000;

-- ----------------------------------------------
-- OR should be used carefully
-- ----------------------------------------------


