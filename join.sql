-- Active: 1747562696861@@localhost@5432@ph


SELECT * FROM "user";
SELECT * FROM post

SELECT * from post
JOIN "user" on "user".id = post.id

INSERT INTO post(id, title, user_id)
VALUES
(5, 'this is a test post title', NULL)

SELECT * from post
LEFT OUTER JOIN "user" on post.user_id = "user".id;

SELECT * from post
RIGHT OUTER JOIN "user" on post.user_id = "user".id;

SELECT * from post
FULL OUTER JOIN "user" on post.user_id = "user".id;

