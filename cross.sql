-- Active: 1747562696861@@localhost@5432@ph
CREATE TABLE employee(
    employee_id INT,
    employee_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE department(
    department_id INT,
    department_name VARCHAR(50)
);

INSERT INTO employee(employee_id, employee_name, dept_id)
VALUES
(1, 'John Doe', 101),
(2, 'John Doe', 102);

INSERT INTO department(department_id, department_name)
VALUES
(1, 'Human Resource'),
(2, 'Marketing')

--Cross Joint:

SELECT * FROM employee
CROSS JOIN department;


--Natural Joint:

SELECT * FROM employee
NATURAL JOIN department