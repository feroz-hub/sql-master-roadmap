-- ==============================================
-- File: create.sql
-- Category: DDL (Data Definition Language)
-- Topic: CREATE Statements
-- ==============================================

-- ----------------------------------------------
-- 1. CREATE DATABASE
-- ----------------------------------------------
CREATE DATABASE CompanyDB;
GO

-- ----------------------------------------------
-- CREATE DATABASE is a DDL command
-- Used to define database structure
-- ----------------------------------------------


-- ----------------------------------------------
-- 2. CREATE TABLE
-- ----------------------------------------------
CREATE TABLE Employees (
    EmpId INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary INT CHECK (Salary > 0),
    Age INT CHECK (Age >= 18),
    City VARCHAR(50)
);
GO

-- ----------------------------------------------
-- Creates a table with constraints
-- PRIMARY KEY, NOT NULL, CHECK
-- ----------------------------------------------


-- ----------------------------------------------
-- 3. CREATE TABLE With FOREIGN KEY
-- ----------------------------------------------
CREATE TABLE Departments(
    DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Employees_Department(
    EmpId INT,
    DepartmentId INT,
    CONSTRAINT FK_Employee FOREIGN KEY (EmpId)
        REFERENCES Employees(EmpId),
    CONSTRAINT FK_Department FOREIGN KEY (DepartmentId)
        REFERENCES Departments(DepartmentId)
);
GO

-- ----------------------------------------------
-- FOREIGN KEY enforces referential integrity
-- ----------------------------------------------


-- ----------------------------------------------
-- 4. CREATE TABLE IF NOT EXISTS (SQL Server way)
-- ----------------------------------------------

IF OBJECT_ID('Projects', 'U') IS NULL 
BEGIN
    CREATE TABLE Projects(
        ProjectId INT IDENTITY(1,1) PRIMARY KEY,
        ProjectName VARCHAR(100),
        StartDate DATE
    );
END
GO

-- ----------------------------------------------
-- SQL Sever does not support CREATE TABLE IF NOT Exists
-- This is the correct workaround
-- ----------------------------------------------


-- ----------------------------------------------
-- 5. CREATE VIEW (Preview -detailed later)
-- ----------------------------------------------

CREATE VIEW vw_ITEmployees
AS 
SELECT 
    EmpId,
    Name,
    Salary
FROM Employees
WHERE Department = 'IT';
GO

-- ----------------------------------------------
-- View is a stored SELECT query
-- Used for abstraction and security
-- ----------------------------------------------


-- ----------------------------------------------
-- 6. CREATE INDEX
-- ----------------------------------------------

CREATE INDEX IX_Employees_Deparment
ON Employees(Department);
GO

-- ----------------------------------------------
-- Index improves query performance
-- Covered deeply in performance section
-- ----------------------------------------------
