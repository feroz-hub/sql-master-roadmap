-- ==============================================
-- File: alter.sql
-- Category: DDL (Data Definition Language)
-- Topic: ALTER statements
-- ==============================================

USE CompanyDB;
GO


-- ----------------------------------------------
-- 1. ALTER TABLE -ADD new column
-- ----------------------------------------------

ALTER TABLE Employees
ADD Email VARCHAR(100);

-- ----------------------------------------------
-- Adds a new column to existing table
-- Existing rows get NULL values
-- ----------------------------------------------


-- ----------------------------------------------
-- 2. ALTER TABLE - ADD column with DEFAULT
-- ----------------------------------------------

ALTER TABLE Employees
ADD IsActive BIT DEFAULT 1;

-- ----------------------------------------------
-- DEFAULT value applied to new rows
-- ----------------------------------------------


-- ----------------------------------------------
-- 3. ALTER TABLE -ALTER column data type
-- ----------------------------------------------

ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

-- ----------------------------------------------
-- Expanding columns size is safe
-- Shrinking may cause data loss
-- ----------------------------------------------


-- ----------------------------------------------
-- 4. ALTER TABLE - ADD CONSTRAINTS
-- ----------------------------------------------

ALTER TABLE Employees
ADD CONSTRAINT CK_Employees_Salary
CHECK(Salary >= 10000);

-- ----------------------------------------------
-- Adda a CHECK constraint
-- ----------------------------------------------


-- ----------------------------------------------
-- ALTER TABLE - DROP column 
-- ----------------------------------------------

ALTER TABLE Employees
DROP COLUMN Email;

-- ----------------------------------------------
-- Permanently removes the column and its data
-- ----------------------------------------------


-- ----------------------------------------------
-- 6. ALTER TABLE - DROP Constraint
-- ----------------------------------------------

ALTER TABLE Employees
DROP CONSTRAINT CK_Employees_Salary;

-- ----------------------------------------------
-- Removes constraint from table
-- ----------------------------------------------


-- ----------------------------------------------
-- 7. ALTER TABLE - RENAME column (SQL Server way)
-- ----------------------------------------------

EXEC sp_rename
	'Employees.Name',
	'EmployeeName',
	'COLUMN';

-- ----------------------------------------------
-- SQL Server does name support ALTER TABLE RENAME COLUMN
-- sp_rename is used instead
-- ----------------------------------------------


-- ----------------------------------------------
-- 8. ALTER TABLE - RENAME table
-- ----------------------------------------------

EXEC sp_rename
	'Employees',
	'EmployeeMaster';

-- ----------------------------------------------
-- Renames the table 
-- Use with caution in production
-- ----------------------------------------------


-- ----------------------------------------------
-- 9. ALTER VIEW
-- ----------------------------------------------

ALTER VIEW vw_ITEmployees
AS
SELECT 
	EmpId,
	EmployeeName,
	Salary
FROM EmployeeMaster
WHERE Department = 'IT'
GO

-- ----------------------------------------------
-- Alters the definition of an existing view
-- ----------------------------------------------
