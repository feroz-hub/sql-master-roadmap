-- ==============================================
-- File: drop.sql
-- Category: DDL (Data Definition Language)
-- Topic: DROP statements
-- ==============================================

USE CompanyDB;
GO

-- ----------------------------------------------
-- IMPORTANT WARNING:
-- DROP permanently removes database objects
-- Data + structure are deleted
-- No rollback in SQL Server
-- ----------------------------------------------


-- ----------------------------------------------
-- 1. DROP TABLE
-- ----------------------------------------------

DROP TABLE EmployeeMaster;

-- ----------------------------------------------
-- EmployeeMaster table is permanently removed
-- ----------------------------------------------


-- ----------------------------------------------
-- 2. DROP TABLE with IF EXISTS (Safe way)
-- ----------------------------------------------

IF OBJECT_ID('Projects', 'U') IS NOT NULL
BEGIN
	DROP TABLE Projects;
END
GO

-- ----------------------------------------------
-- Prevents error if table does not exist
-- ----------------------------------------------


-- ----------------------------------------------
-- 3. DROP VIEW
-- ----------------------------------------------

DROP VIEW vw_ITEmployees;

-- ----------------------------------------------
-- Removes the view definition
-- Underlying tables are NOT affected
-- ----------------------------------------------


-- ----------------------------------------------
-- 4. DROP INDEX
-- ----------------------------------------------

DROP INDEX IX_Employees_Department
ON Employees;

-- ----------------------------------------------
-- Removes index, table remains intact
-- ----------------------------------------------


-- ----------------------------------------------
-- 5. DROP CONSTRAINT (via ALTER)
-- ----------------------------------------------

ALTER TABLE Employees
DROP CONSTRAINT FK_Employee;

-- ----------------------------------------------
-- Constraints cannot be dropped directly
-- Must use ALTER TABLE
-- ----------------------------------------------


-- ----------------------------------------------
-- 6. DROP DATABASE (VERY DANGEROUS)
-- ----------------------------------------------
-- Use only in test environments

/*
DROP DATABASE CompanyDB;
*/

-- ----------------------------------------------
-- Drops entire database with all objects
-- ----------------------------------------------