-- =========================================
-- Create Database Script
-- =========================================

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'SQLPracticeDB')
    BEGIN
        CREATE DATABASE SQLPracticeDB;
    END
GO

USE SQLPracticeDB;
GO
