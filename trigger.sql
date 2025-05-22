-- Active: 1747562696861@@localhost@5432@ph
CREATE Table my_user(
    user_name VARCHAR(50),
    email VARCHAR(40)
)

INSERT INTO my_user(user_name, email)
VALUES
('Mizba', 'mizba@gmail.com'),
('Mir', 'mir@gmail.com')

SELECT * from my_user;
SELECT * from deleted_user_audit;

CREATE TABLE deleted_user_audit(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

--Trigger
CREATE or replace FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_user_audit VALUES(OLD.user_name, now());
        RAISE NOTICE 'Deleted user audit log created!';
        RETURN OLD;
    END
$$

CREATE or replace TRIGGER save_deleted_user_trigger
BEFORE DELETE
on my_user
for each row 
EXECUTE FUNCTION save_deleted_user();


DELETE from my_user WHERE user_name = 'Mir'