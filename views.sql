-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction

CREATE View dept_age_salary AS
SELECT department_name, avg(salary)
from employees
group by
    department_name;

SELECT * from dept_age_salary;