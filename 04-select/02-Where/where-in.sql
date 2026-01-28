-- ==============================================
-- File: where-in.sql
-- Topic: WHERE clause with IN and NOT IN
-- ==============================================

-- 1. Employees from IT or HR deparment
SELECT * 
FROM Employees
WHERE Department IN ('IT', 'HR');

-- ----------------------------------------------
-- IN replaces multiple OR conditions
-- Cleaner and more readable
-- ----------------------------------------------


-- 2. Employees from Chennai, Mumbai, or Bangalore
SELECT * 
FROM Employees 
WHERE City IN ('Chennai', 'Mumbai', 'Bangalore');

-- ----------------------------------------------
-- Best practice when checking against multiple values
-- ----------------------------------------------


-- 3. Employees with Salary IN a specific set
SELECT * 
FROM Employees
WHERE Salary IN (40000, 50000, 60000);

-- ----------------------------------------------
-- Useful for exact value matching
-- ----------------------------------------------


-- 4. Employees NOT in HR or Finance
SELECT * 
FROM Employees 
WHERE Department NOT IN ('HR', 'Finance');

-- ----------------------------------------------
-- NOT IN excludes matching values
-- ----------------------------------------------


-- 5. Employees older than 25 and from selected cities
SELECT * 
FROM Employees
WHERE Age > 25
    AND City IN ('Chennai', 'Hyderabad');


-- ----------------------------------------------
-- IN works perfectly with AND / OR
-- ----------------------------------------------


-- 6. IN vs OR (same logic, different style)
-- OR version
SELECT * 
FROM Employees
WHERE City = 'Chennai'
    OR City = 'Mumbai';

-- IN version
SELECT * 
FROM Employees 
WHERE City IN ('Chennai', 'Mumbai');

-- ----------------------------------------------
-- IN is more readable and maintainable
-- ----------------------------------------------


-- 7. IN with subquery (preview - will learn deeply later)
SELECT * 
FROM Employees
WHERE Department IN (
    SELECT Department
    FROM Employees
    WHERE Salary > 60000
);

-- ----------------------------------------------
-- Very Common interview & real-world pattern
-- ----------------------------------------------


-- 8. IMPORTANT: NOT IN with NULL (WARNING)
-- This can return no rows if NULL exists
/*
SELECT * 
FROM Employees
WHERE City NOT IN ('Chennai', 'NULL');
*/

-- ----------------------------------------------
-- NOT IN fails if subquery or list contains NULL
-- Prefer NOT Exists in such cases
-- ----------------------------------------------

