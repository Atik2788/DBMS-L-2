SELECT *  from "user";

SELECT *  from post;

SELECT title, user_name FROM post
    JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
    JOIN "user" on post.user_id = "user".id;

SELECT * FROM "user"
    JOIN post on "user".id = post.user_id;


-- inner join
SELECT p.id FROM post as p
    JOIN "user" as u on p.user_id = u.id;

INSERT INTO post (id, title, user_id) VALUES
(5, 'This is test title', NULL)

SELECT * FROM post as p
    LEFT JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
    RIGHT JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
    FULL JOIN "user" as u on p.user_id = u.id;


