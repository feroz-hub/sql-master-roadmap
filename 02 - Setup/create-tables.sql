-- =========================================
-- Create Tables Script
-- =========================================

USE SQLPracticeDB;
GO

IF OBJECT_ID('dbo.Employees', 'U') IS NOT NULL
    DROP TABLE dbo.Employees;
GO

CREATE TABLE Employees (
                           EmpId INT IDENTITY(1,1) PRIMARY KEY,
                           Name VARCHAR(50) NOT NULL,
                           Department VARCHAR(50) NOT NULL,
                           Salary INT CHECK (Salary > 0),
                           Age INT CHECK (Age >= 18),
                           City VARCHAR(50)
);
GO
