-- Active: 1747562696861@@localhost@5432@ph
CREATE TABLE student (

student_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
age INT,
grade CHAR(2),
course VARCHAR(50),
email VARCHAR(100),
dob DATE,
blood_group VARCHAR(5),
country VARCHAR(50)
)

INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Nazrul', 'Islam', 30, 'A', 'CSE', 'nazrulislam.cse28@gmail.com', '1994-04-03', 'A+', 'Bangladesh'),
('Rakib', 'Hasan', 20, 'A', 'EEE', 'rakib.eee20@gmail.com', '1996-04-07', 'B+', 'Bangladesh'),
('Jhon', 'Bike', 40, 'B', 'English', 'jhon.eng40@gmail.com', '1997-09-03', 'A+', 'America'),
('Jemy', 'bouk', 32, 'B', 'Chemistry', 'jem.che20@gmail.com', '1994-04-09', 'B+', 'England'),
('Shad', 'Islam', 24, 'A', 'Law', 'shad.@gmail.com', '2000-04-03', 'A+', 'Pakistan'),
('Max', 'Well', 29, 'C', 'Civil', 'maxwel.@gmail.com', '1995-04-03', 'A+', 'Australia'),
('Mousumi', 'Akter', 25, 'D', 'CSE', 'mousumi.cse28@gmail.com', '2000-04-03', 'O+', 'Oman'),
('Jara', 'Islam', 24, 'A', 'EEE', 'jara.eee00@gmail.com', '2001-04-03', 'AB+', 'Katar'),
('Tanha', 'Akter', 25, 'D', 'CSE', NULL, '2000-04-03', 'A+', 'Oman')

--Select student older than 20 years
SELECT length(first_name) FROM student

SELECT count(*) FROM student



SELECT max(length(first_name)) FROM student;

SELECT * from student
WHERE NOT country = 'Pakistan'

SELECT * FROM student
where email  IS NOT NULL

SELECT COALESCE(email, 'Not Provided') country, blood_group, age from student;

SELECT * FROM student;

SELECT * FROM student
WHERE country = 'Bangladesh' OR country = 'America' OR country = 'Katar'

SELECT * FROM student
WHERE country NOT IN('Pakistan', 'Oman')

SELECT * FROM student
 WHERE age BETWEEN 20 and 25;

 SELECT * FROM student
    WHERE dob BETWEEN '2000-05-02' AND '2002-02-02';

    SELECT * FROM student
    WHERE first_name ILIKE 'm%'

    SELECT * FROM student LIMIT 5 OFFSET 5 * 0;
    SELECT * FROM student LIMIT 5 OFFSET 5 * 1;

SELECT * FROM student;

    DELETE FROM student

    DELETE FROM student
    WHERE grade = 'D'

    DELETE from student
    WHERE grade = 'C' AND country = 'Australia'

    UPDATE student
     set email = 'tanha@gmail.com', age = 30 WHERE student_id = 28;
