-- ==============================================
-- File: ddl-practice.sql
-- Category: DDL (Data Definition Language)
-- Topic: Practice
-- Covers: CREATE, ALTER, DROP, TRUNCATE
-- ==============================================


-- PRACTICE RULE
-- Run each step slowly and understand the effect
-- Do NOT run DROP DATABASE unless testing
-- ==============================================

USE CompanyDB;
GO

-- ----------------------------------------------
-- PRACTICE 1: Create a new table
-- ----------------------------------------------

CREATE TABLE Products(
	ProductId INT IDENTITY(1,1) PRIMARY KEY,
	ProductName VARCHAR(100) NOT NULL,
	Price INT CHECK(Price > 0),
	CreatedDate DATE DEFAULT GETDATE()
);
GO

-- ----------------------------------------------
-- Check table structure
-- ----------------------------------------------

SELECT * 
FROM Products;


-- ----------------------------------------------
-- PRACTICE 2: Alter the table - add new column
-- --------------------------------------------

ALTER TABLE Products
ADD Category VARCHAR(50);
GO



-- ----------------------------------------------
-- PRACTICE 3: Alter table - modify the column
-- ----------------------------------------------

ALTER TABLE Products
ALTER COLUMN ProductName VARCHAR(150);
GO


-- ----------------------------------------------
-- PRACTICE 4: Add constraint after table creation
-- ----------------------------------------------

ALTER TABLE Products
ADD CONSTRAINT CK_Products_Price
CHECK (Price >= 10);
GO


-- ----------------------------------------------
-- PRACTICE 5: Rename column
-- ----------------------------------------------

EXEC sp_rename
	'Products.ProductName',
	'ItemName',
	'COLUMN';
GO


-- ----------------------------------------------
-- PRACTICE 6: Rename table
-- ----------------------------------------------

EXEC sp_rename
	'Products',
	'ProductMaster';
GO


-- ----------------------------------------------
-- PRACTICE 7: Truncate table
-- ----------------------------------------------

-- Insert dummy data first
INSERT INTO ProductMaster(ItemName, Price, Category)
VALUES		
('Laptop', 60000, 'Electronics'),
('Mouse', 500, 'Accessories');

-- Verify data
SELECT * 
FROM ProductMaster;

-- Truncate data
TRUNCATE TABLE ProductMaster;

-- Verify truncate
SELECT * 
FROM ProductMaster;


-- ----------------------------------------------
-- PRACTICE 8: Drop constraint
-- ----------------------------------------------
ALTER TABLE ProductMaster
DROP CONSTRAINT CK_Products_Price;
GO


-- ----------------------------------------------
-- PRACTICE 9: Drop table safely
-- ----------------------------------------------

IF OBJECT_ID('ProductMaster', 'U') IS NOT NULL
BEGIN
	DROP TABLE ProductMaster;
END
GO


-- ----------------------------------------------
-- PRACTICE 10: Interview Scenario
-- ----------------------------------------------
-- Question:
-- You need to remove all data from a table and reset identity
-- Which command will you use and why?

-- Answer:
-- TRUNCATE TABLE (DDL,faster, resets identity)
-- ----------------------------------------------

