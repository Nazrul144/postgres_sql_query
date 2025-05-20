-- Active: 1747562696861@@localhost@5432@ph
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

INSERT INTO "user"(username)
VALUES
('akash'),
('batash'),
('sagor'),
('nodi')

INSERT INTO post (title, user_id) VALUES
('enjoying a sunny day with akash', 2),
('Batash just shared an amazing recipe', 1),
('Exploring adventure with sagor!', 4),
('nodi''s wisdom always leaves me inspired!', 4)

SELECT * from "user";
SELECT * from post;

INSERT INTO post(title, user_id) VALUES('test', NULL)