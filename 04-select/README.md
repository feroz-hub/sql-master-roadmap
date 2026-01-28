# `04-select`

## Purpose

This folder contains comprehensive SQL examples focused on **SELECT statement mastery**. It covers fundamental and advanced SELECT techniques including column selection, filtering, sorting, limiting results, and removing duplicates.

## Folder Structure

### 01-basic
Introduction to SELECT fundamentals:
- **select-all.sql** — Selecting all columns from a table using `SELECT *`
- **select-columns.sql** — Selecting specific columns and controlling column order
- **select-alias.sql** — Creating aliases for columns and tables using `AS` keyword

**Key Topics:**
- Selecting specific columns vs. all columns
- Column naming and aliasing
- Improving query readability with aliases

### 02-Where
Filtering data with the WHERE clause:
- **where-basic.sql** — Basic filtering with equality and comparison operators
- **where-and-or.sql** — Combining multiple conditions with AND/OR logical operators
- **where-between.sql** — Range filtering using BETWEEN operator
- **where-in.sql** — Filtering with IN operator for multiple values
- **where-like.sql** — Pattern matching with LIKE and wildcards

**Key Topics:**
- Comparison operators (`=`, `!=`, `<`, `>`, `<=`, `>=`)
- Logical operators (AND, OR, NOT)
- BETWEEN, IN, and LIKE operators
- Pattern matching with `%` and `_` wildcards

### 03-order-by
Sorting query results:
- **order-asc.sql** — Sorting in ascending order (default behavior)
- **order-desc.sql** — Sorting in descending order
- **order-multiple-columns.sql** — Sorting by multiple columns with mixed ASC/DESC

**Key Topics:**
- ASC (ascending) and DESC (descending) sort directions
- Sorting by single and multiple columns
- Using column aliases in ORDER BY
- Ordinal positions in ORDER BY (supported but discouraged)

### 04-limit-offset
Limiting and paginating results:
- **top.sql** — TOP clause for limiting result set size
- **offset-fetch.sql** — OFFSET and FETCH for pagination
- **pagination.sql** — Practical pagination examples

**Key Topics:**
- Limiting number of rows returned
- OFFSET for skipping rows
- FETCH for pagination patterns
- Implementing result pagination

### 05-distinct
Removing duplicate rows:
- **distinct-examples.sql** — DISTINCT keyword for removing duplicates
  
**Key Topics:**
- Removing duplicate rows with DISTINCT
- DISTINCT with multiple columns
- Performance considerations

### 06-practice
Practice exercises to reinforce learning:
- **select-practice-01.sql** — Beginner-level exercises
- **select-practice-02.sql** — Intermediate-level exercises
- **select-practice-advanced.sql** — Advanced SELECT challenges

## What You Will Learn

1. **Basic SELECT** — Selecting all or specific columns
2. **Aliasing** — Creating meaningful names for columns and tables
3. **Filtering** — WHERE clause with various operators (=, !=, <, >, BETWEEN, IN, LIKE)
4. **Logical Operations** — AND, OR, NOT combinations
5. **Sorting** — ORDER BY with single and multiple columns, ASC/DESC
6. **Limiting Results** — TOP, OFFSET, FETCH for pagination
7. **Removing Duplicates** — DISTINCT keyword
8. **Complex Queries** — Combining multiple SELECT features

## How to Run

1. Open any `.sql` file from the `04-select` folder in DataGrip
2. Execute the statements one at a time or all together
3. Ensure the `Employees` table exists (or adapt queries to your schema)
4. Start with `01-basic` and progress through each subfolder sequentially
5. Complete practice exercises in `06-practice` to test your knowledge

## Database Setup

The examples assume a sample table with employee data:
```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    Age INT,
    City VARCHAR(50),
    HireDate DATE
);
```

Refer to `/02-setup/` folder for complete database setup scripts.

## Notes and Best Practices

1. **Column Selection**
   - Avoid `SELECT *` in production queries; explicitly specify needed columns
   - Use aliases to make output more readable

2. **Filtering**
   - Place most restrictive conditions first in WHERE clauses
   - Use BETWEEN for range queries instead of `>= AND <=`
   - Use IN instead of multiple OR conditions

3. **Sorting**
   - Prefer explicit column names in ORDER BY instead of ordinal positions
   - Use DESC when you need top values first (e.g., highest salaries)
   - Sort by non-indexed columns may impact performance on large datasets

4. **Limiting & Pagination**
   - Always use ORDER BY with OFFSET/FETCH to ensure consistent pagination
   - OFFSET can be expensive on large datasets; consider indexed filtering

5. **Performance**
   - Indexes on WHERE clause columns significantly improve performance
   - Avoid functions on columns in WHERE clause (prevents index usage)
   - Use DISTINCT sparingly; it requires sorting and can be expensive

## Common Patterns

**Get top N rows:**
```sql
SELECT TOP 10 * FROM Employees ORDER BY Salary DESC;
```

**Pagination:**
```sql
SELECT * FROM Employees 
ORDER BY EmployeeID 
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;
```

**Find distinct values:**
```sql
SELECT DISTINCT Department FROM Employees;
```

**Filter with multiple conditions:**
```sql
SELECT * FROM Employees 
WHERE Department = 'IT' AND Salary > 50000 AND City = 'New York';
```

## Learning Path

1. Start with `01-basic/` to understand SELECT fundamentals
2. Move to `02-Where/` to learn filtering techniques
3. Practice `03-order-by/` for sorting mastery
4. Explore `04-limit-offset/` for pagination patterns
5. Study `05-distinct/` for duplicate handling
6. Complete all exercises in `06-practice/`

## Related Sections

- **03-sql-commands/** — SQL command basics (DDL, DML, DQL)
- **05-set-operators/** — Combining results from multiple queries
- **06-string-functions/** — String manipulation in SELECT
- **07-aggregations/** — Grouping and aggregate functions
- **08-joins/** — Querying multiple tables

## License

Educational examples for learning SQL.
