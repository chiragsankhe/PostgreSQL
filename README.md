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
--
#### ✅ Read Table
SELECT * FROM people;

 📋 Output:
| id |  name   |  city|
|----|---------|--------|
| 1  | Chirag  | Boisar |
 |2  | Aisha   | Mumbai |
|3  | Rahul   | Delhi    |

--
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
--
#### delete table column 
```
delete from person 
where id = 103;


```

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
