
--//? INDEXIG ALGORITHM
-- B-TREE (DEFAULT)
--GIST
--GIN
--HASH


SELECT * from  employees;

EXPLAIN ANALYSE
SELECT * from employees WHERE employee_name='Diana'


CREATE INDEX idx_employees_last_name
on employees(employee_name);



-- using hash algorithm
CREATE INDEX idx_employees_last_name
on employees USING HASH (employee_name);

-- drop index if exists
DROP INDEX IF EXISTS idx_employees_last_name

SHOW data_directory;