-- Active: 1747562696861@@localhost@5432@ph


SELECT * FROM "user";
SELECT * FROM post

SELECT * from post as p
JOIN "user" as u on p.user_id = u.id