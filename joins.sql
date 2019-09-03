
SELECT *
FROM users;

SELECT *
FROM posts
WHERE user_id = 100;

SELECT
    post.id, title, url, content, post.created_at, post.updated_at, first_name, last_name
FROM posts INNER JOIN users
    ON users.id = 200;

