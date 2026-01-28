# SQL Basics – Complete Introduction

## What is SQL?

**SQL (Structured Query Language)** is a standard language used to communicate with relational databases.

Using SQL, we can:
- Retrieve data from databases  
- Insert new data  
- Update existing data  
- Delete data  
- Create and modify database structures  

### Simple Definition  
SQL is the language that allows us to talk to a database.

### Interview Definition  
> SQL is a standard programming language used to manage and manipulate data stored in relational database systems.

---

## Why Learn SQL?

SQL is one of the most important skills for anyone working with data or backend systems.

### Reasons to Learn SQL:
- Almost every application uses a database  
- SQL is used in web apps, mobile apps, banking, healthcare, e-commerce, etc.  
- SQL is required for:
  - Software Developers  
  - Backend Engineers  
  - Data Analysts  
  - Data Scientists  
  - Data Engineers  
- SQL is easy to learn but very powerful  
- SQL works efficiently with millions of records  

### Interview Tip  
> SQL is important because it is the backbone of data-driven applications and allows efficient data access and manipulation.

---

## What is a Database?

A **database** is an organized collection of data stored electronically and managed in a way that allows fast access, updates, and security.

### Why Databases Instead of Files?
Databases are:
- Faster  
- More secure  
- Scalable  
- Multi-user friendly  
- Reliable  

---

## Types of Databases

### Relational Databases (SQL)
Data is stored in tables.

Examples:
- SQL Server  
- MySQL  
- PostgreSQL  
- Oracle  

### Non-Relational Databases (NoSQL)
Examples:
- MongoDB  
- Redis  
- Cassandra  
- Neo4j  

### SQL vs NoSQL

| SQL | NoSQL |
|-----|--------|
Tables | Documents / Key-Value |
Fixed schema | Flexible schema |
ACID | BASE |
Structured data | Semi/unstructured |

---

## What is a Table?

A table stores data in rows and columns.

Example:

| EmpId | Name | Department | Salary |
|--------|--------|-------------|----------|
| 1 | Feroze | IT | 50000 |
| 2 | Ali | HR | 40000 |

---

## Primary Key

A column that uniquely identifies each row.

```sql
EmpId INT PRIMARY KEY
````

---

## Foreign Key

Creates a relationship between tables.

```sql
DepartmentId INT FOREIGN KEY REFERENCES Departments(Id)
```

---

## SQL Command Types

### DDL – Data Definition Language

* CREATE
* ALTER
* DROP
* TRUNCATE

### DML – Data Manipulation Language

* INSERT
* UPDATE
* DELETE

### DQL – Data Query Language

* SELECT

### DCL – Data Control Language

* GRANT
* REVOKE

### TCL – Transaction Control Language

* COMMIT
* ROLLBACK
* SAVEPOINT

---

## What is Schema?

A schema is a container for database objects.

Example:

```sql
dbo.Employees
```

---

## Declarative Nature of SQL

SQL tells what data you want, not how to get it.

```sql
SELECT * FROM Employees WHERE Salary > 50000;
```

---

## ACID Properties

| Property    | Meaning         |
| ----------- | --------------- |
| Atomicity   | All or nothing  |
| Consistency | Valid data      |
| Isolation   | No interference |
| Durability  | Permanent save  |

---

## Common SQL Data Types

| Type     | Description     |
| -------- | --------------- |
| INT      | Integer         |
| VARCHAR  | Text            |
| DATE     | Date            |
| DATETIME | Date & Time     |
| DECIMAL  | Precise numbers |
| BIT      | Boolean         |

---

## SQL vs MySQL vs SQL Server

* SQL → Language
* MySQL → DB Software
* SQL Server → Microsoft DB

---

## Common Beginner Mistakes

* Forgetting WHERE in DELETE
* No Primary Key
* SELECT * in production
* No indexes

---

## Interview Questions

### What is SQL?

A language to manage relational databases.

### What is a primary key?

Uniquely identifies a row.

### What is normalization?

Removing redundancy and improving data integrity.

---

## Conclusion

SQL is the foundation of modern data-driven applications. Mastering SQL opens many career paths.
