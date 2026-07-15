# Online Education Platform - Database Implementation (MySQL) 🐬

This repository contains the physical database implementation scripts for our **Online Education Platform** database project.

---

## 🛠️ Tech Stack & Environment
* **Database Management System (DBMS)**: MySQL 🐬
* **Language**: SQL (DDL, DML, DQL)

---

## 📂 Repository Structure & Scripts

The implementation is structured into three standard SQL scripts:

### 1. `create.sql` (Schema Creation)
Contains the **DDL (Data Definition Language)** queries to build the relational schema.
* **Core Tables**: `user`, `user_background`, `course`, `instructor`, `teach`, `enroll`, `module`, `lecture`, `quiz`, `assignment`, `attempt`, `submission`, `study_group`, `joins`, `post`, `announcement`, `feedback`, and `certificate`.
* **Data Integrity**: Defines primary keys, composite keys (e.g., in `joins`, `enroll`, and `user_background`), and strict foreign keys configured with cascading actions (`ON DELETE CASCADE ON UPDATE CASCADE`).

### 2. `insert.sql` (Database State & Population)
Contains the **DML (Data Manipulation Language)** queries to populate the database.
* Inserts **6 rows** of sample data into each of the tables to establish a consistent database state.
* Formatted sequentially to strictly respect the parent-child table foreign key dependencies.

### 3. `queries_views.sql` (Views & Analytical Queries)
Demonstrates data retrieval capabilities through custom views and diverse queries:
* **Two Database Views**:
  1. `bachelor_usersID`: Retrieves user IDs of students holding a bachelor's degree.
  2. `Users_courses_enrolledIn`: Lists users alongside their enrolled courses, ordered alphabetically by course description.
* **Eight Advanced Queries**: Developed to solve analytical requirements including:
  * Multi-table joins (e.g., retrieving instructor details for specific courses).
  * Left Outer Joins (e.g., listing all courses and their feedback comments, including those without feedback).
  * Aggregations & Grouping (e.g., calculating the average quiz mark, counting lectures per module, and counting submissions per assignment).
