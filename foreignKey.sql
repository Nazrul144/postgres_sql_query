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

SELECT * from "user";