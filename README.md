# PostgreSQL
I m learning PostgesSQL ZERO TO HERO from mPreshant TECH

    # 📌 1. What is a Database?

A **Database** is:

> An organized collection of data stored electronically, which can be easily accessed, managed, and updated.

### ✅ Example:

A **student database** stores data like:

| StudentID | Name   | Age | Grade |
| --------- | ------ | --- | ----- |
| 1         | Chirag | 16  | 11    |
| 2         | Aisha  | 15  | 10    |

This database helps you **store** and **organize** student information.

---

# 📌 2. What is DBMS (Database Management System)?

A **DBMS** is:

> Software that allows users to create, read, update, and delete data in a database (called CRUD operations).

### ✅ In simple words:

* A **database** is like a **bookshelf** (where data is stored).
* A **DBMS** is like the **librarian** who helps you add, remove, or search books (data).

---

### ✅ Features of DBMS:

| Feature             | Description                       |
| ------------------- | --------------------------------- |
| Data storage        | Stores data efficiently           |
| CRUD operations     | Create, Read, Update, Delete data |
| Query processing    | Run queries to search/filter data |
| Data security       | Controls access to data           |
| Backup and recovery | Helps recover data after crash    |

---

### 🔧 Examples of DBMS:

| Type        | Example                         |
| ----------- | ------------------------------- |
| Open Source | PostgreSQL, MySQL               |
| Enterprise  | Oracle DB, Microsoft SQL Server |
| Embedded    | SQLite                          |

---

### 🆚 Difference Between Database and DBMS:

| Database               | DBMS                                 |
| ---------------------- | ------------------------------------ |
| Collection of data     | Software to manage that data         |
| Just stores data       | Helps perform operations on the data |
| Can exist without DBMS | DBMS needs a database to work on     | 





---

### ✅ Features of DBMS:

* Store, retrieve, update, delete data
* Query support
* Security and backup

---

### 🔧 Examples of DBMS:

* PostgreSQL
* MySQL
* Oracle
* SQLite

---

### 🆚 Database vs DBMS:

* **Database**: Holds data
* **DBMS**: Manages that data

---

# ✅ Create Database (pgAdmin)

1. Open pgAdmin
2. Right-click `Databases` → `Create` → `Database...`
3. Enter name → Click `Save`

---

# ❌ Delete Database (pgAdmin)

1. Open pgAdmin
2. Right-click target DB → Click `Delete/Drop`
3. Confirm

---

### 💡 SQL Commands

```sql
-- Create Database
CREATE DATABASE my_database;

-- Delete Database (not the one you're connected to)
DROP DATABASE my_database;

-- Switch Database
\c another_database
```

---

### ✅ Use `pgAdmin` for GUI or `psql` for command-line practice.

```
#####  ✅ Create Table
CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  city VARCHAR(100)
);

```

#### ✅ Insert Values
```
INSERT INTO people (name, city) VALUES
('Chirag', 'Boisar'),
('Aisha', 'Mumbai'),
('Rahul', 'Delhi');

```
---
#### ✅ Read Table
SELECT * FROM people;

 📋 Output:
| id |  name   |  city|
|----|---------|--------|
| 1  | Chirag  | Boisar |
 |2  | Aisha   | Mumbai |
|3  | Rahul   | Delhi    |

---
#### update table 

```
update person
set name = 'yadnesh'
where name = 'pranjal';
```

```
update person
set name = 'chirag sankhe'
where id = 101;
```
---
#### delete table column 
```
delete from person 
where id = 103;


```

---
# PostgreSQL Data Types and Constraints

## ✅ Common Data Types

| Type            | Description                              | Example                     |
|-----------------|------------------------------------------|-----------------------------|
| `INTEGER`       | Whole number                             | `id INTEGER`                |
| `SERIAL`        | Auto-increment integer                   | `id SERIAL`                 |
| `VARCHAR(n)`    | Variable-length string                   | `name VARCHAR(100)`         |
| `TEXT`          | Unlimited-length string                  | `bio TEXT`                  |
| `BOOLEAN`       | True or false                            | `is_active BOOLEAN`         |
| `DATE`          | Calendar date                            | `birth_date DATE`           |
| `TIMESTAMP`     | Date & time                              | `created_at TIMESTAMP`      |
| `NUMERIC(p,s)`  | Decimal with precision                   | `salary NUMERIC(10,2)`      |
| `REAL` / `FLOAT`| Floating point numbers                   | `rating REAL`               |

---

## ✅ Common Constraints

| Constraint       | Description                                                             | Example                                        |
|------------------|-------------------------------------------------------------------------|------------------------------------------------|
| `PRIMARY KEY`     | Uniquely identifies each row                                            | `id SERIAL PRIMARY KEY`                        |
| `NOT NULL`        | Field must have a value                                                 | `name VARCHAR(100) NOT NULL`                   |
| `UNIQUE`          | No two rows can have the same value                                     | `email VARCHAR(255) UNIQUE`                    |
| `DEFAULT`         | Default value if not specified                                          | `city VARCHAR(100) DEFAULT 'Unknown'`          |
| `CHECK`           | Value must satisfy a condition                                          | `age INT CHECK (age >= 18)`                    |
| `FOREIGN KEY`     | Links to a primary key in another table                                 | `FOREIGN KEY (user_id) REFERENCES users(id)`   |



# PostgreSQL Data Types

PostgreSQL provides a rich set of data types to handle various kinds of data. Here’s a categorized overview:

---

## 🔹 1. Numeric Types

| Data Type         | Description                          |
|-------------------|--------------------------------------|
| `SMALLINT`        | 2-byte integer (-32,768 to 32,767)   |
| `INTEGER` / `INT` | 4-byte integer                       |
| `BIGINT`          | 8-byte integer                       |
| `DECIMAL(p,s)`    | Exact numeric with precision & scale |
| `NUMERIC(p,s)`    | Same as `DECIMAL`                    |
| `REAL`            | 4-byte floating point number         |
| `DOUBLE PRECISION`| 8-byte floating point number         |
| `SERIAL`          | Auto-incrementing 4-byte integer     |
| `BIGSERIAL`       | Auto-incrementing 8-byte integer     |

---

## 🔹 2. Character Types

| Data Type       | Description                                 |
|------------------|---------------------------------------------|
| `CHAR(n)`        | Fixed-length string, space-padded           |
| `VARCHAR(n)`     | Variable-length string (limit: n)           |
| `TEXT`           | Unlimited length text string                |

---

## 🔹 3. Date and Time Types

| Data Type           | Description                             |
|----------------------|-----------------------------------------|
| `DATE`              | Calendar date (YYYY-MM-DD)              |
| `TIME`              | Time of day (no timezone)               |
| `TIMESTAMP`         | Date and time (no timezone)             |
| `TIMESTAMPTZ`       | Timestamp with timezone                  |
| `INTERVAL`          | Time span (e.g., 2 days 3 hours)         |

---

## 🔹 4. Boolean Type

| Data Type | Description              |
|------------|--------------------------|
| `BOOLEAN`  | `TRUE`, `FALSE`, or `NULL` |

---

## 🔹 5. Enumerated Type

| Data Type   | Description                              |
|--------------|------------------------------------------|
| `ENUM`       | User-defined set of valid values         |

### Example:
```sql
CREATE TYPE mood AS ENUM ('happy', 'sad', 'neutral');
```
---
##   Types of Constraints in PostgreSQL

### 🔹 1. NOT NULL
Ensures a column **cannot have NULL values**.

```
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
```

### 🔹 2. UNIQUE
Ensures all values in a column or group of columns are unique.
```
CREATE TABLE employees (
    email VARCHAR(100) UNIQUE
);
```
#### Table-level UNIQUE constraint:

```
CREATE TABLE employees (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    CONSTRAINT unique_full_name UNIQUE (first_name, last_name)
);
```
### 🔹 3. PRIMARY KEY
+ Combines ` UNIQUE `  and `NOT NULL`

+ Only one per table

Can be single or composite
```
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);
```
#### Composite primary key:
```
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);
```
### 🔹 4. FOREIGN KEY
Enforces referential integrity between tables.
```
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(dept_id)
);
```
With actions:

```
ON DELETE CASCADE
ON UPDATE SET NULL
```
### 🔹 5. CHECK
Ensures values meet a specific condition.
```
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    price DECIMAL(10, 2) CHECK (price > 0),
    stock INT CHECK (stock >= 0)
);
```
### 🔹 6. DEFAULT
Sets a default value for a column if none is provided.
```
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    country VARCHAR(50) DEFAULT 'India'
);
```
### 🔹 7. EXCLUDE
Prevents certain combinations of values using USING clause.
```
CREATE TABLE bookings (
    room INT,
    during TSRANGE,
    EXCLUDE USING GIST (
        room WITH =,
        during WITH &&
    )
);
```
## 🧩 Add Constraints After Table Creation
#### Add NOT NULL:
```
ALTER TABLE employees ALTER COLUMN name SET NOT NULL;
```
#### Add UNIQUE:
```
ALTER TABLE employees ADD CONSTRAINT unique_email UNIQUE(email);
```
#### Add FOREIGN KEY:
```

ALTER TABLE employees
ADD CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(dept_id);
```


---


# 📘 Common PostgreSQL Clauses
### 🔹 SELECT
+ Used to retrieve data from a table.
```
SELECT * FROM employees;
SELECT name, salary FROM employees;
```
### 🔹 WHERE
Filters rows based on a condition.
```
SELECT * FROM employees WHERE salary > 50000;
```
### 🔹 ORDER BY
Sorts the result set by one or more columns.
```
SELECT * FROM employees ORDER BY hire_date DESC;
```
### 🔹 GROUP BY
Groups rows sharing a property (often used with aggregate functions).
```
SELECT dept, COUNT(*) FROM employees GROUP BY dept;
```
### 🔹 HAVING
+ Filters grouped records (used with GROUP BY).

```
SELECT dept, AVG(salary) 
FROM employees 
GROUP BY dept 
HAVING AVG(salary) > 60000;
```
### 🔹 LIMIT and OFFSET
Limits the number of rows returned and skips rows.
```
SELECT * FROM employees LIMIT 10 OFFSET 5;
```
### 🔹 DISTINCT
Removes duplicate values.
```
SELECT DISTINCT dept FROM employees;
```
### 🔹 INSERT INTO
Inserts new data into a table.
```
INSERT INTO employees (fname, lname, email, dept, salary)
VALUES ('John', 'Doe', 'john.doe@example.com', 'IT', 60000);
```
### 🔹 UPDATE
Modifies existing records.
```
UPDATE employees SET salary = salary + 5000 WHERE dept = 'IT';
```
### 🔹 DELETE
Removes records from a table.
```
DELETE FROM employees WHERE salary < 30000;
```
### 🔹 JOIN (INNER, LEFT, RIGHT, FULL)
Combines rows from two or more tables based on a related column.
```
SELECT e.fname, d.dept_name
FROM employees e
JOIN departments d ON e.dept = d.dept_id;
```
### 🔹 IN / BETWEEN
Match values in a list or a range.
```
SELECT * FROM employees WHERE dept IN ('HR', 'IT');
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 70000;
```
### 🔹 LIKE / ILIKE
Pattern matching (ILIKE is case-insensitive).

```
SELECT * FROM employees WHERE email LIKE '%@gmail.com';
SELECT * FROM employees WHERE fname ILIKE 'j%';
```
---

# 📊 PostgreSQL Aggregate Functions
+ Aggregate functions perform ` calculations `  on a set of rows and return a single value.
+ These are commonly used with GROUP BY and other clauses.

### 🔹 COUNT()
Returns the number of rows.
```
SELECT COUNT(*) FROM employees;
SELECT COUNT(DISTINCT dept) FROM employees;
```
### 🔹 SUM()
Returns the total sum of a numeric column.
```
SELECT SUM(salary) FROM employees;
```
### 🔹 AVG()
+ Returns the average value of a numeric column.
```
SELECT AVG(salary) FROM employees;
```
### 🔹 MIN()
Returns the minimum value in a column.
```
SELECT MIN(salary) FROM employees;
```
### 🔹 MAX()
Returns the maximum value in a column.
```
SELECT MAX(salary) FROM employees;
```
### 🔹 Example with GROUP BY:
```
SELECT dept, AVG(salary) 
FROM employees 
GROUP BY dept;
```
--- 
# GROUP BY 

### 🔶 What is GROUP BY?
+ The GROUP BY clause is used to group rows that have the same values in one or more columns.
+  It's commonly used with aggregate functions like `COUNT()`,` SUM()` ,` AVG()`,` MAX()` , and ` MIN()`.

🧠 Syntax:
```
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

+ Now use GROUP BY to find the average salary for each department:

```
SELECT dept, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept;
```
--- 
## 🔤 PostgreSQL String Functions
PostgreSQL provides a rich set of built-in string functions to manipulate and query string/text data.

### 🔹 LENGTH(str)
Returns the number of characters in a string.
```
SELECT LENGTH('PostgreSQL'); -- 10
```
### 🔹 UPPER(str) and LOWER(str)
Converts string to uppercase or lowercase.
```
SELECT UPPER('postgres'); -- POSTGRES
SELECT LOWER('POSTGRES'); -- postgres
```
#### 🔹 CONCAT(str1, str2, ...)
Joins multiple strings into one.
```
SELECT CONCAT('Hello', ' ', 'World'); -- Hello World
```
### 🔹 SUBSTRING(str FROM start FOR length)
Extracts part of a string.
```
SELECT SUBSTRING('PostgreSQL' FROM 1 FOR 4); -- Post
```
### 🔹 TRIM(str)
Removes leading and trailing spaces.
```
SELECT TRIM('   hello   '); -- hello
```
### 🔹 REPLACE(str, from, to)
Replaces all occurrences of a substring.

```
SELECT REPLACE('I like SQL', 'SQL', 'PostgreSQL');
```
-- I like PostgreSQL
### 🔹 POSITION(sub IN str)
Finds the position of the first occurrence of a substring.
```
SELECT POSITION('gre' IN 'PostgreSQL'); -- 5
```
### 🔹 INITCAP(str)
Capitalizes the first letter of each word.

```
SELECT INITCAP('hello world'); -- Hello World
```
### 🔹 REVERSE(str)
Reverses a string.
```
SELECT REVERSE('abc'); -- cba
```
---

## ALTER TABLE in PostgreSQL
+ The ALTER TABLE statement is used to modify the structure of an existing table — such as adding/removing columns, changing data types, renaming columns, or applying constraints.

### 🔹 1. Add a Column
```
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15);
```
### 🔹 2. Drop a Column
```
ALTER TABLE employees
DROP COLUMN phone_number;
```
### 🔹 3. Rename a Column
```
ALTER TABLE employees
RENAME COLUMN dept TO department;
```
### 🔹 4. Change Data Type
```
ALTER TABLE employees
ALTER COLUMN salary TYPE DECIMAL(10, 2);
```
### 🔹 5. Set Default Value
```
ALTER TABLE employees
ALTER COLUMN hire_date SET DEFAULT CURRENT_DATE;
```
### 🔹 6. Drop Default Value
```
ALTER TABLE employees
ALTER COLUMN hire_date DROP DEFAULT;
```
### 🔹 7. Rename a Table
```
ALTER TABLE employees
RENAME TO staff;
```
### 🔹 8. Add a Constraint (e.g. NOT NULL, UNIQUE, CHECK)
```
ALTER TABLE employees
ALTER COLUMN email SET NOT NULL;
```
```
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE(email);
```
### 🔹 9. Drop a Constraint
```
ALTER TABLE employees
DROP CONSTRAINT unique_email;
```


---


## CHECK Constraint in PostgreSQL
The CHECK constraint in PostgreSQL is used to limit the values that can be placed in a column by defining a condition that must be TRUE for each row.

### 🔹 Syntax:
```
CREATE TABLE table_name (
    column_name data_type CHECK (condition)
);
```
OR (with ALTER TABLE):

```
ALTER TABLE table_name
ADD CONSTRAINT constraint_name CHECK (condition);
```
### 🔹 Example 1: Inline Check While Creating Table
```
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    salary INT CHECK (salary >= 30000)
);
```
+ This ensures salary must be at least 30000.

### 🔹 Example 2: Add CHECK Constraint Later
```
ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary >= 30000);
```
### 🔹 Example 3: Multiple Conditions
```
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    age INT CHECK (age BETWEEN 18 AND 60),
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'F'))
);
```
### 🔹 Drop a CHECK Constraint
```
ALTER TABLE employees
DROP CONSTRAINT chk_salary;
```

---
## 🎯 PostgreSQL CASE Expression
The CASE expression is used to add conditional logic in SQL queries, similar to if-else statements in programming.

### 🔹 Syntax
```
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE resultN
END
```
### ✅ Example 1: Salary Grade Example
```
SELECT emp_id, name, salary,
  CASE 
    WHEN salary >= 100000 THEN 'High'
    WHEN salary >= 50000 THEN 'Medium'
    ELSE 'Low'
  END AS salary_grade
FROM employees;
```
+ This assigns a salary grade based on salary value.

### ✅ Example 2: Using CASE in UPDATE
```
UPDATE employees
SET dept = 
  CASE 
    WHEN emp_id = 1 THEN 'HR'
    WHEN emp_id = 2 THEN 'IT'
    ELSE dept
  END;
```
+ Conditionally update column values.

### ✅ Example 3: CASE with Aggregation
```
SELECT 
  dept,
  COUNT(CASE WHEN salary > 50000 THEN 1 END) AS high_earners
FROM employees
GROUP BY dept;
```
--- 

## 🔗 Types of Relationships in PostgreSQL
### 1. One-to-One (1:1)
+ One row in Table A is linked to exactly one row in Table B.

Use a unique foreign key.
```
-- Table: users
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);
```

-- Table: user_profiles
```
CREATE TABLE user_profiles (
  profile_id SERIAL PRIMARY KEY,
  user_id INT UNIQUE REFERENCES users(user_id),
  bio TEXT
);
```
### 2. One-to-Many (1:N)
One row in Table A is linked to many rows in Table B.

Use a foreign key in the "many" table.

-- Table: departments
```
CREATE TABLE departments (
  dept_id SERIAL PRIMARY KEY,
  dept_name VARCHAR(50)
);
```

-- Table: employees
```
CREATE TABLE employees (
  emp_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  dept_id INT REFERENCES departments(dept_id)
);
```
### 3. Many-to-Many (M:N)
Many rows in Table A are linked to many rows in Table B.

Requires a junction (bridge) table with two foreign keys.

-- Table: students
```
CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);
```

-- Table: courses
```
CREATE TABLE courses (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(50)
);
```

-- Table: enrollments (junction table)
```
CREATE TABLE enrollments (
  student_id INT REFERENCES students(student_id),
  course_id INT REFERENCES courses(course_id),
  PRIMARY KEY (student_id, course_id)
);
```
--- 

## 🔗 Types of JOINs in PostgreSQL
+ In PostgreSQL, JOIN is used to combine rows from two or more tables based on a related column, usually using foreign keys.

### 1. ✅ INNER JOIN
Returns rows only when there is a match in both tables.
```
SELECT employees.name, departments.dept_name
FROM employees
INNER JOIN departments ON employees.dept_id = departments.dept_id;
```
+ 📌 Only matching rows from both employees and departments.

### 2. ✅ LEFT JOIN (or LEFT OUTER JOIN)
+ Returns all rows from the left table and matched rows from the right table.

+ If no match, NULLs will appear from the right table.
```
SELECT employees.name, departments.dept_name
FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id;
```
+ 📌 Shows all employees, even if not assigned to a department.

### 3. ✅ RIGHT JOIN (or RIGHT OUTER JOIN)
Returns all rows from the right table and matched rows from the left table.
```
SELECT employees.name, departments.dept_name
FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;
```
+ 📌 Shows all departments, even if they have no employees.

### 4. ✅ FULL JOIN (or FULL OUTER JOIN)
+ Returns all rows when there is a match in either left or right table.

+ Non-matching parts are filled with NULL.
```
SELECT employees.name, departments.dept_name
FROM employees
FULL JOIN departments ON employees.dept_id = departments.dept_id;
```
+ 📌 Shows everything from both tables — even if unmatched.

### 5. ✅ CROSS JOIN
+ Returns the Cartesian product of both tables.

+ Every row from table A is combined with every row from table B.

```
SELECT a.name, b.course_name
FROM students a
CROSS JOIN courses b;
```
📌 Be careful! Can produce a large number of rows.

