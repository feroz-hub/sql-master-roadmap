-- =====================================================
-- File: pagination.sql
-- Topic: Real-world pagination patterns
-- =====================================================

-- Pagination is used in:
-- - Web applications
-- - APIs
-- - Reports
-- - Data grids
-- -----------------------------------------------------

-- 1. Basic pagination (Page 1, PageSize = 5)
DECLARE @PageNumber INT = 1;
DECLARE @PageSize INT = 5;

SELECT *
FROM Employees
ORDER BY EmpId
OFFSET (@PageNumber - 1) * @PageSize ROWS
FETCH NEXT  @PageSize ROWS ONLY;

-- -----------------------------------------------------
-- Page 1 result
-- -----------------------------------------------------

-- 2. Page 2 with same page size
SET @PageNumber = 2;
SELECT *
FROM Employees
ORDER BY EmpId
OFFSET (@PageNumber - 1) * @PageSize ROWS
FETCH NEXT @PageSize ROWS ONLY;

-- -----------------------------------------------------
-- Page 2 result
-- -----------------------------------------------------


-- 3. Pagination ordered by Salary (highest first)
DECLARE @SalaryPage INT = 1;
DECLARE @SalaryPageSize INT = 3;

SELECT *
FROM Employees
ORDER BY Salary DESC
OFFSET (@SalaryPage - 1) * @SalaryPageSize ROWS
FETCH NEXT @SalaryPageSize ROWS ONLY;


-- -----------------------------------------------------
-- Useful for "Top earners" screens
-- -----------------------------------------------------


-- 4. Pagination with filtering (IT department only)
DECLARE @DeptPage INT = 1;
DECLARE @DeptPageSize INT = 3;

SELECT *
FROM Employees
WHERE Department = 'IT'
ORDER BY  Salary DESC
OFFSET (@DeptPage - 1) * @DeptPageSize ROWS
FETCH NEXT @DeptPageSize ROWS ONLY;

-- -----------------------------------------------------
-- WHERE → ORDER BY → OFFSET-FETCH
-- Correct execution order
-- -----------------------------------------------------


-- 5. Pagination with multiple ORDER BY columns
DECLARE @MultiPage INT = 1;
DECLARE @MultiPageSize INT = 4;

SELECT *
FROM Employees
ORDER BY Department ASC, Salary DESC
OFFSET (@MultiPage - 1) * @MultiPageSize ROWS
FETCH NEXT @MultiPageSize ROWS ONLY;


-- -----------------------------------------------------
-- Stable pagination ordering
-- -----------------------------------------------------


-- 6. Get total row count (important for pagination UI)
SELECT COUNT(*) AS TotalRecords
FROM Employees;

-- -----------------------------------------------------
-- Used to calculate total pages in UI
-- -----------------------------------------------------


-- 7. Calculate total pages (example logic)
DECLARE @TotalRecords INT;
DECLARE @FinalPageSize INT = 3;

SELECT @TotalRecords = COUNT(*) FROM Employees;

SELECT CEILING(@TotalRecords * 1.0 / @FinalPageSize) AS TotalPages;

-- -----------------------------------------------------
-- CEILING is used to round up page count
-- -----------------------------------------------------


-- 8. IMPORTANT NOTE:
-- OFFSET-based pagination can be slow for very large datasets
-- Cursor-based pagination is preferred in high-scale systems
-- (Covered later in performance section)