# Assignment-7 (PostgreSQL)

**Assignment Description**  
In this assignment, you will work with PostgreSQL, a powerful open-source relational database management system. Your task involves creating 03 tables based on the provided sample data and then writing and executing queries to perform various database operations such as creating, reading, updating, and deleting data. Additionally, you will explore concepts like LIMIT and OFFSET, JOIN operations, GROUP BY, aggregation, and LIKE.

---

**Instructions:**

1. **Database Setup:**

   -  Install PostgreSQL on your system if not already installed.
   -  Create a fresh database titled "university_db" or any other appropriate name.

2. **Table Creation:**

   **Create a "students" table with the following fields:**

   -  `student_id (Primary Key)`: Integer, unique identifier for students.
   -  `student_name`: String, representing the student's name.
   -  `age`: Integer, indicating the student's age.
   -  `email`: String, storing the student's email address.
   -  `frontend_mark`: Integer, indicating the student's frontend assignment marks.
   -  `backend_mark`: Integer, indicating the student's backend assignment marks.
   -  `status`: String, storing the student's result status.

   **Create a "courses" table with the following fields:**

   -  `course_id (Primary Key)`: Integer, unique identifier for courses.
   -  `course_name`: String, indicating the course's name.
   -  `credits`: Integer, signifying the number of credits for the course.

   **Create an "enrollment" table with the following fields:**

   -  `enrollment_id (Primary Key)`: Integer, unique identifier for enrollments.
   -  `student_id (Foreign Key)`: Integer, referencing `student_id` in the "Students" table.
   -  `course_id (Foreign Key)`: Integer, referencing `course_id` in the "Courses" table.

---

### Sample Data

**Insert the following sample data into the "students" table:**

| student_id | student_name | age | email              | frontend_mark | backend_mark | status |
| ---------- | ------------ | --- | ------------------ | ------------- | ------------ | ------ |
| 1          | Sameer       | 21  | sameer@example.com | 48            | 60           | NULL   |
| 2          | Zoya         | 23  | zoya@example.com   | 52            | 58           | NULL   |
| 3          | Nabil        | 22  | nabil@example.com  | 37            | 46           | NULL   |
| 4          | Rafi         | 24  | rafi@example.com   | 41            | 40           | NULL   |
| 5          | Sophia       | 22  | sophia@example.com | 50            | 52           | NULL   |
| 6          | Hasan        | 23  | hasan@gmail.com    | 43            | 39           | NULL   |

**Insert the following sample data into the "courses" table:**

| course_id | course_name | credits |
| --------- | ----------- | ------- |
| 1         | Next.js     | 3       |
| 2         | React.js    | 4       |
| 3         | Databases   | 3       |
| 4         | Prisma      | 3       |

**Insert the following sample data into the "enrollment" table:**

| enrollment_id | student_id | course_id |
| ------------- | ---------- | --------- |
| 1             | 1          | 1         |
| 2             | 1          | 2         |
| 3             | 2          | 1         |
| 4             | 3          | 2         |

---

### Run SQL queries to complete the following tasks:

#### Query 1:

Insert a new student record with the following details:

-  Name: YourName
-  Age: YourAge
-  Email: YourEmail
-  Frontend-Mark: YourMark
-  Backend-Mark: YourMark
-  Status: NULL

**Note:** You can choose random values for the frontend_mark, backend_mark, and other fields (except NULL for the status).

#### Query 2:

Retrieve the names of all students who are enrolled in the course titled 'Next.js'.

**Sample Output:**

| student_name |
| ------------ |
| Sameer       |
| Zoya         |

#### Query 3:

Update the status of the student with the highest total (`frontend_mark + backend_mark`) to 'Awarded'.

#### Query 4:

Delete all courses that have no students enrolled.

#### Query 5:

Retrieve the names of students using a limit of 2, starting from the 3rd student.

**Sample Output:**

| student_name |
| ------------ |
| Nabil        |
| Rafi         |

#### Query 6:

Retrieve the course names and the number of students enrolled in each course.

**Sample Output:**

| course_name | students_enrolled |
| ----------- | ----------------- |
| Next.js     | 2                 |
| React.js    | 2                 |

#### Query 7:

Calculate and display the average age of all students.

**Sample Output:**

| average_age |
| ----------- |
| 22.33       |

#### Query 8:

Retrieve the names of students whose email addresses contain 'example.com'.

**Sample Output:**

| student_name |
| ------------ |
| Sameer       |
| Zoya         |
| Nabil        |
| Rafi         |
| Sophia       |

---

### Prepare the SQL code for table creation, sample data insertion, and the eight queries in a text document or your preferred format. Include comments explaining each query's purpose and functionality. Save your document as "PostgreSQL_Assignment.sql" or any other appropriate name.

---

### Questions (Answer 10 Questions):

1. [What is PostgreSQL?](#What_is_PostgreSQL)
2. What is the purpose of a database schema in PostgreSQL?
3. Explain the primary key and foreign key concepts in PostgreSQL.
4. What is the difference between the VARCHAR and CHAR data types?
5. Explain the purpose of the WHERE clause in a SELECT statement.
6. What are the LIMIT and OFFSET clauses used for?
7. How can you perform data modification using UPDATE statements?
8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
9. Explain the GROUP BY clause and its role in aggregation operations.
10.   How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
11.   What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
12.   Explain the concept of a PostgreSQL view and how it differs from a table.

---


### What_is_PostgreSQL?

PostgreSQL is an advanced open-source relational database management system known for its robustness, extensibility, and support for complex data types and SQL compliance.

### What is the purpose of a database schema in PostgreSQL?

A database schema in PostgreSQL is a way to organize and group database objects like tables, views, and functions. It helps keep the database structured and prevents name conflicts, making it easier to manage and navigate. also it helps us to avoid conflicts while importing external tables.

### Explain the primary key and foreign key concepts in PostgreSQL.

- **Primary Key**: A primary key is a unique identifier for each row in a table.it helps to maintain data integrity.
- **Foreign Key**: A foreign key is a field in one table that links to the primary key in another table. it makes referential integrity between tables

### What is the difference between the VARCHAR and CHAR data types?

- **VARCHAR**: This data type can store variable-length strings means dynamically it takes size of original content we insert. but

- **CHAR**: This data type stores fixed-length strings. If the string is shorter than the defined length, it will be filled with spaces.mainly it is used for fixed data length strings

### Explain the purpose of the WHERE clause in a SELECT statement.

The `WHERE` clause is used to filter records in a `SELECT` statement. we can target specific row to do something. it is used for conditional query

### What are the LIMIT and OFFSET clauses used for?

- **LIMIT**: `LIMIT` restricts the return query size. for example, if we use `LIMIT 5`, it will return only five rows.
- **OFFSET**: `OFFSET` is used to skip start to that particular position rows in a query results. for example, `OFFSET 10 LIMIT 5` will skip the first ten rows and return the next five.

### How can you perform data modification using UPDATE statements?

we have to use `UPDATE` keywords then table name. then we have to specify new column value and at last we have to give a conditon using `WHERE` clause. for exmple:

```sql
update students set status = 'graduated' where id = 1;
```

### What is the significance of the JOIN operation, and how does it work in PostgreSQL?

The `JOIN` operation combines rows from two or more tables based on a related column. it allows us to retrieve related data across different related tables what we need. it works based on same column attributes with same data typs.

### Explain the GROUP BY clause and its role in aggregation operations.

The `GROUP BY` clause is used to group rows that have the same values in specified columns. in aggregation operations like `COUNT`, `SUM`, and `AVG` are very essentials.

### How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

here are the sql command for the mentioned aggregation functions.

```sql
-- calculate all students
SELECT COUNT(*) FROM students;

-- calculate total price from a products collection
SELECT SUM(price) FROM products;

-- calculate average score from students collection
SELECT AVG(score) FROM students;
```

