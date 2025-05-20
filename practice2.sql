-- Active: 1747562696861@@localhost@5432@ph
CREATE TABLE student1
(
    roll SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT check(age<18),
    district VARCHAR(50),
    score INT NOT NULL,
    gender VARCHAR(50),
    department VARCHAR(50)
)

INSERT INTO student1 (first_name, last_name, email, age, district, score, gender, department) VALUES
('Rahim', 'Uddin', 'rahim01@example.com', 16, 'Dhaka', 85, 'Male', 'Science'),
('Karim', 'Hasan', 'karim02@example.com', 17, 'Chittagong', 90, 'Male', 'Commerce'),
('Sumaiya', 'Akter', 'sumaiya03@example.com', 15, 'Sylhet', 88, 'Female', 'Arts'),
('Nusrat', 'Jahan', 'nusrat04@example.com', 17, 'Rajshahi', 92, 'Female', 'Science'),
('Sakib', 'Ali', 'sakib05@example.com', 16, 'Khulna', 80, 'Male', 'Science'),
('Amina', 'Begum', 'amina06@example.com', 14, 'Barisal', 78, 'Female', 'Commerce'),
('Farhan', 'Islam', 'farhan07@example.com', 17, 'Mymensingh', 91, 'Male', 'Science'),
('Taslima', 'Nasrin', 'taslima08@example.com', 16, 'Rangpur', 84, 'Female', 'Arts'),
('Mehedi', 'Hasan', 'mehedi09@example.com', 15, 'Dhaka', 76, 'Male', 'Commerce'),
('Sadia', 'Khan', 'sadia10@example.com', 16, 'Chittagong', 89, 'Female', 'Science'),
('Rifat', 'Hossain', 'rifat11@example.com', 17, 'Sylhet', 93, 'Male', 'Science'),
('Rumi', 'Akhter', 'rumi12@example.com', 14, 'Rajshahi', 70, 'Female', 'Arts'),
('Naim', 'Rahman', 'naim13@example.com', 16, 'Khulna', 87, 'Male', 'Commerce'),
('Mou', 'Sultana', 'mou14@example.com', 17, 'Barisal', 82, 'Female', 'Science'),
('Zahid', 'Hasan', 'zahid15@example.com', 15, 'Mymensingh', 79, 'Male', 'Commerce'),
('Shila', 'Khatun', 'shila16@example.com', 16, 'Rangpur', 95, 'Female', 'Science'),
('Raihan', 'Kabir', 'raihan17@example.com', 17, 'Dhaka', 88, 'Male', 'Arts'),
('Lima', 'Chowdhury', 'lima18@example.com', 15, 'Chittagong', 90, 'Female', 'Science'),
('Arif', 'Ahmed', 'arif19@example.com', 16, 'Sylhet', 83, 'Male', 'Commerce'),
('Fariha', 'Islam', 'fariha20@example.com', 14, 'Rajshahi', 86, 'Female', 'Science');

SELECT * FROM student1;

SELECT * FROM student1
    WHERE department = 'Science';

SELECT concat(first_name,' ', last_name), age FROM student1
      WHERE age = 15;

SELECT * FROM student1
    WHERE first_name ILIKE '%n'

SELECT * FROM student1
    WHERE score BETWEEN 70 AND 90

SELECT * FROM student1;

SELECT sum(score) FROM student1
    WHERE department = 'Commerce';

SELECT max(score) FROM student1;

SELECT * FROM student1
    WHERE score = (SELECT max(score) FROM student1);

    UPDATE student1
    SET score = 95 WHERE roll = 1;

    SELECT count(*) FROM student1;

    SELECT count(*) as total_student FROM student1
        GROUP BY department;


    SELECT avg(age) as average_age FROM student1    
        WHERE score > 80;

    SELECT * from student1;  

    SELECT * from student1
        WHERE email IS NULL

    
SELECT * FROM student1
    WHERE score = (SELECT max(score) FROM student1);    

    SELECT * FROM student1
        WHERE score = (SELECT max(score) FROM student1)

   SELECT max(score) from student1
    WHERE score < (SELECT max(score) FROM student1)

    SELECT department from student1
        WHERE department = count(*) FROM student1;

        SELECT department

SELECT count(*) FROM student1
    GROUP BY department
    ORDER BY department DESC
    LIMIT 1;

    SELECT * FROM student1;

    ALTER TABLE student1
    ADD status VARCHAR(49)

    
    UPDATE student1
        SET status = 'Excellent'
        WHERE score >= 90;

    DELETE from student1
     WHERE age = 15;    
        