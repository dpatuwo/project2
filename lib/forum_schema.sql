DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
CREATE TABLE topics(id SERIAL PRIMARY KEY, name VARCHAR(30), relation INTEGER, description TEXT);

 -- 0 - Regular user  1 - Moderator  2 - Admin
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(30), access INTEGER);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  body TEXT,
  topic_id INTEGER,
  user_id INTEGER
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body TEXT,
  user_id INTEGER,
  post_id INTEGER,
  relation INTEGER
);
