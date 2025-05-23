-- Active: 1747562696861@@localhost@5432@ph
CREATE TABLE persons(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    age INT,
    salary INT
);

INSERT INTO persons(username, age)
VALUES
('Nazrul Islam', 30, 23000),
('Omor Faruk', 20, 13000),
('Fahad Bin Galib', 40, 40000),
('Nur Mohammad', 50, ),
('Rakib Hasan', 60),
('Aminul Islam', 70)

SELECT * from persons;

ALTER TABLE persons
ADD date_of_birth DATE

ALTER TABLE persons
RENAME age to user_age;

DROP TABLE persons






