-- =====================================================
-- File: select-practice-02.sql
-- Level: Practice - Intermediate SELECT
-- Focus: Logical thinking & real interview patterns
-- =====================================================

-- 1. Get employees from IT or HR departments
SELECT * 
FROM Employees
WHERE Department IN ('IT', 'HR');

-- -----------------------------------------------------


-- 2. Get employees from IT department in Chennai
SELECT *
FROM Employees
WHERE Department = 'IT'
    AND City = 'Chennai';

-- -----------------------------------------------------


-- 3. Get employees whose Salary is greater than 50000
--    and Age is less than 30
SELECT *
FROM Employees
WHERE Salary > 50000
    AND Age < 30;

-- -----------------------------------------------------


-- 4. Get employees from Chennai, Mumbai, or Hyderabad
--    whose Salary is between 45000 and 65000
SELECT * 
FROM Employees
WHERE City IN ('Chennai', 'Mumbai', 'Hyderabad')
    AND Salary BETWEEN 45000 AND 65000;

-- -----------------------------------------------------


-- 5. Get employees whose Name ends with 'i'
SELECT * 
FROM Employees
WHERE Name LIKE 'i%';

-- -----------------------------------------------------


-- 6. Get employees whose Name has exactly 4 characters
SELECT * 
FROM Employees 
WHERE Name LIKE '____';

-- -----------------------------------------------------


-- 7. Get employees ordered by City and Salary descending
SELECT * 
FROM Employees
ORDER BY City ASC, Salary DESC;

-- -----------------------------------------------------


-- 8. Get top 3 highest paid employees from IT department
SELECT TOP 3 * 
FROM Employees
ORDER BY  Salary DESC;

-- -----------------------------------------------------


-- 9. Get distinct cities where HR employees work
SELECT DISTINCT City
FROM Employees
WHERE Department = 'HR';

-- -----------------------------------------------------

-- 10. Get employees NOT from Chennai or Bangalore
SELECT * 
FROM Employees
WHERE City NOT IN ('Chennai', 'Bangalore');

-- -----------------------------------------------------


-- 11. Pagination: Page 2, PageSize = 4
DECLARE @PageNumber INT = 2;
DECLARE @PageSize INT = 4;

SELECT * 
FROM Employees
ORDER BY EmpId
OFFSET (@PageNumber - 1) * @PageSize ROWS
FETCH NEXT @PageSize ROWS ONLY;

-- -----------------------------------------------------

-- 12. Get top 50 percent highest paid employees
SELECT TOP 50 PERCENT * 
FROM Employees
ORDER BY Salary DESC;

-- -----------------------------------------------------

-- 13. Get employees sorted by Department, Age ascending
SELECT * 
FROM Employees 
ORDER BY Department, Age ASC;

-- -----------------------------------------------------

-- 14. Get employees whose Salary is NOT equal to 50000
SELECT * 
FROM Employees
WHERE Salary <> 50000;

-- -----------------------------------------------------

-- 15. Get employees whose City is NOT NULL
SELECT * 
FROM Employees 
WHERE City IS NOT NULL;

-- -----------------------------------------------------
