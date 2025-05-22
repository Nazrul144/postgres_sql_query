-- Active: 1747562696861@@localhost@5432@ph
SELECT * from employees1;

CREATE view dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees1
GROUP BY department_name;

SELECT department_name, avg(salary) FROM employees1
GROUP BY department_name;

SELECT * from dept_avg_salary