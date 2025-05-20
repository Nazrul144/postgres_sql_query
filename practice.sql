-- Active: 1747562696861@@localhost@5432@ph
CREATE TABLE students
(
    id SERIAL PRIMARY KEY,
    roll INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT check(age>0),
    department VARCHAR(50),
    score FLOAT check(score>0),
    status VARCHAR(50) check(status in('passed', 'failed')),
    last_login DATE
)

INSERT INTO students(roll, name, age, department, score, status, last_login)
VALUES
(101, 'Nazrul Islam', 30, 'CSE',3.01, 'passed','2025-05-19'),
(102, 'Mirza Islam', 31, 'CSE',3.35, 'passed','2025-05-19'),
(103, 'Tarek Hassan', 39, 'LAW',3.69, 'passed','2025-05-19'),
(104, 'Mukta Moni', 37, 'CSE',2.91, 'passed','2025-05-19'),
(105, 'Rabeya Islam', 40, 'CSE',2.88, 'passed','2025-05-19'),
(106, 'Rakib Hossain', 45, 'ENG',1.00, 'failed','2025-05-19'),
(107, 'Zahid Hasan', 50, 'CSE',4.00, 'passed','2025-05-19'),
(108, 'Faruk Hossain', 57, 'CSE',4.00, 'passed','2025-05-19'),
(109, 'Tamal Mirza', 65, 'CSE',3.25, 'passed','2025-05-19'),
(110, 'Joy Baidya', 69, 'CSE',3.15, 'passed','2025-05-19'),
(111, 'Mitu Rani', 27, 'CSE',1.70, 'failed','2025-05-19'),
(112, 'Joy Baidya', 69, 'CSE',3.15, 'failed','2025-05-19'),
(113, 'Piyas Boruya', 29, 'EEE',3.65, 'passed','2025-05-19')



ALTER TABLE students
ADD COLUMN email VARCHAR(50)

ALTER TABLE students
RENAME COLUMN email to Student_Email;

ALTER TABLE students
ADD CONSTRAINT unique_student_email UNIQUE (student_email);

CREATE TABLE courses
(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credit_hours INT
)

ALTER TABLE students
DROP COLUMN student_email

SELECT * FROM students
    WHERE score >3 

SELECT * FROM students
    WHERE NOT department = 'CSE'

    SELECT * FROM students

SELECT * FROM students
   WHERE name LIKE 'N%';

SELECT * FROM students
    WHERE name ILIKE '__r%'

SELECT * FROM students
    WHERE age BETWEEN 30 AND 50;  

SELECT * FROM students
    WHERE roll = 102 OR roll = 103 OR roll = 104;  

    SELECT * FROM students
        WHERE roll in(102,105,108) ;

      SELECT count(*) FROM students 

      SELECT avg(score) FROM students;

      SELECT avg(score) as Average_Score FROM students           
      WHERE department = 'CSE'

      SELECT max(age) FROM students

      SELECT min(age) FROM students;


    SELECT * FROM students;

     UPDATE students
     SET status = 'passed'
     WHERE score > 3 ;

     DELETE FROM students
     WHERE last_login < '2025-05-19' OR last_login IS NULL;

     SELECT * FROM students 
     LIMIT 5 OFFSET 5*0;
     