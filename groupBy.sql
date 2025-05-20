-- Active: 1747562696861@@localhost@5432@ph
SELECT department, count(*), avg(age) from student1 
    GROUP BY department
    HAVING avg(age) > 15.70;

    SELECT * from student1;