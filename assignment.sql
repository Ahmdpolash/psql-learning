---//?--------- students table--------------

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100),
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(50)
)

-- insert values
INSERT INTO
    students (
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark,
        status
    )
VALUES (
        'Samaeer',
        21,
        'sameer@example.com',
        48,
        60,
        NULL
    ),
    (
        'Zoya',
        23,
        'zoya@example.com',
        52,
        58,
        NULL
    ),
    (
        'Nabil',
        22,
        'nabil@example.com',
        37,
        46,
        NULL
    ),
    (
        'Rafi',
        24,
        'rafi@example.com',
        41,
        40,
        NULL
    ),
    (
        'Sophia',
        22,
        'sophia@example.com',
        50,
        52,
        NULL
    ),
    (
        'Hasan',
        23,
        'hasan@gmail.com',
        43,
        39,
        NULL
    );

--//? ---------------------------------courses ------------------

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT
)

-- insert values
INSERT INTO
    courses (course_name, credits)
VALUES ('Next.Js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3)

--//?---------- enrollment table----------------
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT REFERENCES students (student_id),
    course_id INT REFERENCES courses (course_id)
)

INSERT INTO
    enrollments (
        enrollment_id,
        student_id,
        course_id
    )
VALUES (1, 1, 1),
    (2, 1, 2),
    (3, 2, 1),
    (4, 3, 2);

--- //! QUERY ONE ANSWER----------


INSERT INTO
    students (
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark,
        status
    )
VALUES (
        'Polash',
        20,
        'polash@gmail.com',
        45,
        50,
        NULL
    )




--- //! QUERY TWO ANSWER----------

select student_name from students
-- JOIN enrollments on students.student_id = enrollments.student_id
-- JOIN courses ON enrollments.course_id = courses.course_id
 join enrollments USING(student_id)
 join courses USING(course_id)
WHERE course_name = 'Next.Js'



--- //! QUERY 3 ANSWER----------

--Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.

UPDATE students 
set status = 'awarded'
WHERE student_id = (SELECT student_id FROM students ORDER BY (frontend_mark+backend_mark) DESC LIMIT 1)




--- //! QUERY 4 ANSWER----------
-- Delete all courses that have no students enrolled.

DELETE FROM 


select * from students;







select * from students;

SELECT * from courses

SELECT * from enrollments