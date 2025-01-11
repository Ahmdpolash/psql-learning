-- scalar function (upper,lower,length,concat)
-- aggregate function (count,sum,min,max,avg)


-- ----------------scalar function--------------

-- make capital/small letter

SELECT upper(first_name), * from students

SELECT lower(first_name), * from students

-- concat two column

SELECT concat(first_name, ' ', last_name) FROM students

SELECT length(first_name) FROM students




-- ----------------aggregate function--------------


SELECT COUNT(*)  from students

SELECT SUM(age)  from students

SELECT AVG(age) FROM students

SELECT MAX(age) FROM students 

SELECT MAX(length(first_name)) FROM students 

SELECT MIN(age) FROM students