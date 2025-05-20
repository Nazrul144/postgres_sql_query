-- Active: 1747562696861@@localhost@5432@ph
SELECT * FROM person1;

ALTER TABLE person1
ADD COLUMN email VARCHAR(20) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE person1
RENAME COLUMN age to user_age;

ALTER TABLE person1
ALTER COLUMN user_name TYPE VARCHAR(50)

ALTER TABLE person1
ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person1
ALTER COLUMN user_age DROP NOT NULL;

UPDATE person1
set user_age = 76 WHERE user_name = 'nazrul';

ALTER TABLE person1
ADD CONSTRAINT unique_person1_user_age UNIQUE(user_age);

ALTER TABLE person1
DROP CONSTRAINT unique_person1_user_age

INSERT INTO person1 VALUES(9, 'Soma', 23, 'soma@gmail.com');