-- Active: 1747562696861@@localhost@5432@ph
-- Active: 1699467625194@@127.0.0.1@5432@ph2@public

SELECT * from  employees;


EXPLAIN ANALYSE
SELECT * from employees1 WHERE emp_no = '10004';

CREATE INDEX idx_employees_last_name
on employees (last_name);

SHOW data_directory;