-------------- GROUP BY -------------------------

SELECT country, count(*) FROM students GROUP BY country

SELECT country, count(*), AVG(age) FROM students GROUP BY country

SELECT country, count(*), AVG(age)
FROM students
GROUP BY
    country
HAVING
    AVG(age) > 20

-- filter group using having to show only countries with average age above 20
SELECT country, AVG(age)
FROM students
GROUP BY
    country
HAVING
    AVG(age) > 20

-- count students borns each year

SELECT extract(
        year
        from dob
    ) as birth_year, count(*)
FROM students
GROUP BY
    birth_year