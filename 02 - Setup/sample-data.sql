-- =========================================
-- Insert Sample Data Script
-- =========================================

USE SQLPracticeDB;
GO

INSERT INTO Employees (Name, Department, Salary, Age, City)
VALUES
('Feroze', 'IT', 50000, 24, 'Chennai'),
('Ali', 'HR', 40000, 29, 'Bangalore'),
('Sara', 'IT', 60000, 26, 'Hyderabad'),
('John', 'Finance', 55000, 31, 'Chennai'),
('Ayesha', 'HR', 45000, 27, 'Mumbai'),
('David', 'IT', 70000, 34, 'Bangalore'),
('Mary', 'Finance', 48000, 28, 'Mumbai'),
('Omar', 'HR', 52000, 32, 'Hyderabad'),
('Lina', 'IT', 62000, 25, 'Chennai'),
('Ravi', 'Finance', 58000, 30, 'Bangalore');
GO
