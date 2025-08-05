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








