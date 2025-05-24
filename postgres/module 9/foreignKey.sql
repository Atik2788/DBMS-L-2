CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NUll
)


CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NUll,
    user_id INTEGER REFERENCES "user"(id) on Delete set DEFAULT DEFAULT 2
)


INSERT INTO "user"(user_name) VALUES
('akash'),
('batas'),
('sagor'),
('nodi')

SELECT *  from "user"



INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT *  from post;

ALTER TABLE post
    alter COLUMN user_id set NOT NULL;

INSERT INTO post(title, user_id) VALUES('test', NULL)

DROP TABLE post;
DROP TABLE "user";



DELETE from "user"
    WHERE id = 4;
