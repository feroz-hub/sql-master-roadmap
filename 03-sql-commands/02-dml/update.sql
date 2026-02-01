-- ==============================================
-- File: update.sql
-- Category: DML (Data Manipulation Language)
-- Topic: UPDATE statements
-- ==============================================

USE CompanyDB;
GO

-- ----------------------------------------------
-- SAFETY RULE (ALWAYS FOLLOW)
-- 1. Write SELECT first
-- 2. Then convert to UPDATE
-- ----------------------------------------------


-- ----------------------------------------------
-- 1. View current data
-- ----------------------------------------------

SELECT * 
FROM Employees;

-- ----------------------------------------------
-- Always inspect data before UPDATE
-- ----------------------------------------------


-- ----------------------------------------------
-- 2. Update a single column for specific rows
-- ----------------------------------------------

UPDATE Employees
SET Salary = 65000
WHERE Name = 'Feroze';

-- ----------------------------------------------
-- Updates salary only for matching rows
-- ----------------------------------------------


-- ----------------------------------------------
-- 3. Update multiple columns 
-- ----------------------------------------------

UPDATE Employees
SET Salary = 48000,
    City   = 'Pune'
WHERE Name = 'Ali'; 

-- ----------------------------------------------
-- Multiple column update in one statement
-- ----------------------------------------------


-- ----------------------------------------------
-- 4. Update using condition (department-wise)
-- ----------------------------------------------

UPDATE Employees
SET Salary = Salary + 5000
WHERE Department = 'IT';

-- ----------------------------------------------
-- Increment salary for IT employees
-- Very common real-world scenario
-- ----------------------------------------------


-- ----------------------------------------------
-- 5. Update with AND condition
-- ----------------------------------------------

UPDATE Employees
SET City = 'Bangalore'
WHERE Department = 'Finance'
    AND Salary > 50000;

-- ----------------------------------------------
-- Precise update using multiple conditions
-- ----------------------------------------------


-- ----------------------------------------------
-- 6. Update with IN
-- ----------------------------------------------
UPDATE Employees
SET IsActive = 0
WHERE Department IN ('HR', 'Finance');

-- ----------------------------------------------
-- Disable multiple department at once
-- ----------------------------------------------


-- ----------------------------------------------
-- 7. Update with subquery
-- ----------------------------------------------

UPDATE Employees
SET Salary = Salary + 3000
WHERE Salary < (
    SELECT AVG(Salary)
    FROM Employees
);

-- ----------------------------------------------
-- Update rows based on aggregate condition
-- Interview favorite
-- ----------------------------------------------


-- ----------------------------------------------
-- 8. Upate using another table (JOIN update)
-- ----------------------------------------------

-- Example structure:
-- Employees (EmpId, EmployeeName, Department, Salary)
-- Departments (DepartmentId, DepartmentName)

