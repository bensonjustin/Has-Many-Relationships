
SELECT *
FROM users;

SELECT *
FROM posts
WHERE user_id = 100;

SELECT
    post.id, title, url, content, post.created_at, post.updated_at, first_name, last_name
FROM posts INNER JOIN users
    ON users.id = 200;

SELECT
    post.id, title, url, content, post.created_at, post.updated_at, username
FROM posts INNER JOIN users
    ON user_id = users.id
WHERE users.first_name = 'Norene' and users.last_name = 'Schmitt';

SELECT username
FROM users INNER JOIN posts
    ON user_id = users.id
WHERE posts.created_at > DATE
'2015-01-01';

SELECT
    title, content, username
FROM posts INNER JOIN users
    on user_id = users.id
WHERE users.created_at < DATE
'2015-01-01';

SELECT
    comments.id, body, comments.created_at, comments.updated_at, posts.title AS post_title
FROM comments INNER JOIN posts
    ON post_id = posts.id

SELECT comments.id, comments.created_at, comments.updated_at, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM comments INNER JOIN posts
    ON post_id = posts.id
WHERE posts.created_at < DATE
'2015-01-01';

SELECT comments.id, comments.created_at, comments.updated_at, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM comments INNER JOIN posts
    ON post_id = posts.id
WHERE posts.created_at > DATE
'2015-01-01';

SELECT comments.id, comments.created_at, comments.updated_at, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM comments INNER JOIN posts
    ON post_id = posts.id
WHERE comments.body LIKE '%USB%';

SELECT posts.title AS post_title, first_name, last_name, comments.body AS comment_body
FROM comments
    INNER JOIN posts ON post_id = posts.id
    INNER JOIN users ON posts.user_id = users.id
WHERE comments.body LIKE '%matrix%';

SELECT first_name, last_name, comments.body AS comment_body
FROM comments
    INNER JOIN posts ON post_id = posts.id
    INNER JOIN users ON posts.user_id = users.id
WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

SELECT users.first_name AS post_author_first_name, users.last_name AS post_author_last_name, posts.title AS post_title, users.username AS commment_author_username, comments.body AS comment_body
FROM comments
    INNER JOIN posts ON post_id = posts.id
    INNER JOIN users ON posts.user_id = users.id
WHERE comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%' AND posts.content LIKE '%nemo%'; 