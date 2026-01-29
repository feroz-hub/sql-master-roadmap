-- =====================================================
-- File: select-practice-01.sql
-- Level: Practice - Basic to Intermediate SELECT
-- Covers: SELECT, WHERE, AND/OR, BETWEEN, IN, LIKE,
--          ORDER BY, TOP, OFFSET, DISTINCT
-- =====================================================


-- 1. Get all employees
SELECT * 
FROM Employees;

-- -----------------------------------------------------


-- 2. Get Name and Salary of all employees
SELECT 
    Name,
    Salary
FROM Employees;

-- -----------------------------------------------------

-- 3. Get employees from IT department
SELECT * 
FROM Employees
WHERE Department = 'IT';

-- -----------------------------------------------------


-- 4. Get employees whose Salary is greater than 50000
SELECT * 
FROM Employees
WHERE Salary > 50000;

-- -----------------------------------------------------


-- 5. Get employees from Chennai or Bangalore
SELECT * 
FROM Employees
WHERE City IN ('Chennai', 'Bangalore');

-- -----------------------------------------------------


-- 6. Get employees from IT department AND Salary > 60000
SELECT * 
FROM Employees
WHERE Department = 'IT' 
    AND Salary > 60000;

-- -----------------------------------------------------


-- 7. Get employees whose Age is between 25 and 30
SELECT * 
FROM Employees
WHERE Age BETWEEN 25 AND 30;

-- -----------------------------------------------------


-- 8. Get employees whose Name starts with 'A'
SELECT * 
FROM Employees
WHERE Name LIKE 'A%';

-- -----------------------------------------------------


-- 9. Get employees whose Name contains 'a'
SELECT * 
FROM Employees
WHERE Name LIKE '%a%';

-- -----------------------------------------------------


-- 10. Get all employees ordered by Salary ascending
SELECT * 
FROM Employees
ORDER BY Salary ASC;

-- -----------------------------------------------------


-- 11. Get all employees ordered by Salary descending
SELECT * 
FROM Employees 
ORDER BY Salary DESC;
-- -----------------------------------------------------

-- 12. Get employees ordered by Department and Salary descending
SELECT * 
FROM Employees
ORDER BY Department, Salary DESC;

-- -----------------------------------------------------


-- 13. Get top 3 highest paid employees
SELECT TOP 3 * 
FROM Employees 
ORDER BY Salary DESC;

-- -----------------------------------------------------


-- 14. Get top 5 youngest employees
SELECT TOP 5 * 
FROM Employees
ORDER BY Age ASC;

-- -----------------------------------------------------

-- 15. Get distinct departments
SELECT DISTINCT Department
FROM Employees;

-- -----------------------------------------------------


-- 16. Get distinct cities
SELECT DISTINCT City
FROM Employees;

-- -----------------------------------------------------


-- 17. Get distinct Department and City combinations
SELECT DISTINCT Department, City
FROM Employees;

-- -----------------------------------------------------


-- 18. Get employees NOT from HR department
SELECT * 
FROM Employees
WHERe Department <> 'HR';

-- -----------------------------------------------------


-- 19. Get employees whose Salary is NOT between 45000 and 60000
SELECT * 
FROM Employees
WHERE Salary NOT BETWEEN 45000 AND 60000;

-- -----------------------------------------------------


-- 20. Pagination example: Page 1, PageSize = 3
DECLARE @Page INT = 1;
DECLARE @PageSize INT = 3;

SELECT * 
FROM Employees 
ORDER BY EmpId
OFFSET (@Page - 1) * @PageSize ROWS
FETCH NEXT @PageSize ROWS ONLY;

-- -----------------------------------------------------
