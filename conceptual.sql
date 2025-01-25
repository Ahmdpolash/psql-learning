-- Active: 1736510814457@@127.0.0.1@5432@psql_conceptual

CREATE Table departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    manager_id INT
)

-- create employees table
CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    salary NUMERIC(10, 2) NOT NULL,
    department_id INT REFERENCES departments (department_id),
    is_active BOOLEAN
)

-- insert data into departments table
INSERT INTO
    departments (department_name, manager_id)
values ('Human Resources', 1),
    ('Finance', 2),
    ('Engineering', 4);


-- insert data into employees table

INSERT INTO employees (first_name,last_name,hire_date,salary,department_id,is_active)
VALUES
    ('John', 'Doe', '2010-01-01', 60000.00, 1, TRUE),
    ('Jane', 'Smith', '2015-05-15', 80000.00, 1, TRUE),
    ('Alice', 'Johnson', '2012-03-15', 75000.00, 2, TRUE),
    ('Bob', 'Brown', '2017-09-01', 90000.00, 3, TRUE),
    ('Charlie', 'Davis', '2018-12-01', 95000.00, 3, TRUE),
    ('David', 'Miller', '2019-01-01', 100000.00, 3, TRUE);





-- select all active employees
SELECT * FROM employees WHERE is_active = TRUE;


-- find all employees from finance department
SELECT * FROM employees 
JOIN  departments using(department_id)
WHERE department_name = 'Finance'



-- find the total salary of employees in the engineering department


SELECT sum(salary) as total_salary FROM employees 
JOIN departments USING(department_id)
WHERE department_name ='Engineering'


-- sort employees by their hire date  in descending order
SELECT * FROM employees
ORDER BY hire_date DESC


-- find those employees whose last name starts with 'J'
SELECT * FROM employees WHERE last_name LIKE 'J%';


-- find employees hired between 2015-01-01 and 2018-01-01
SELECT * FROM employees WHERE hire_date BETWEEN '2015-01-01' AND '2018-01-01';


-- use alter to add a new column on employees table 
ALTER Table employees 
ADD COLUMN phone_number VARCHAR(15);

SELECT * FROM departments;

SELECT * FROM employees;