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

✅ Use `pgAdmin` for GUI or `psql` for command-line practice.

