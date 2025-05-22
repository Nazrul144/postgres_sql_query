-- Active: 1747562696861@@localhost@5432@ph
SELECT * from employees1;

CREATE or replace Function emp_count()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees1 WHERE employee_id = 30;
$$

SELECT emp_count()

SELECT count(*) FROM employees1;

CREATE or replace Function emp_delete()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees1 WHERE employee_id = 29;
$$

SELECT * FROM employees1;

SELECT emp_delete();

CREATE or replace Function delete_emp_by_id(p_emp_id int)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees1 WHERE employee_id = p_emp_id;
$$

SELECT delete_emp_by_id(28)

SELECT * from employees1;

CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS
$$
    BEGIN
        DELETE FROM employees1 WHERE employee_id = 28;
    END
$$

CREATE Procedure remove_emp_var1(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
       SELECT employee_id INTO test_var from employees1 WHERE employee_id = p_emp_id;
        DELETE FROM employees1 WHERE employee_id = test_var;
    END
$$

SELECT * from employees1;
 
call remove_emp_var1(25);