DROP TABLE IF EXISTS topics;
-- DROP TABLE IF EXISTS subtopics;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
CREATE TABLE topics(id SERIAL PRIMARY KEY, name VARCHAR(30), description TEXT);
-- CREATE TABLE subtopics(id SERIAL PRIMARY KEY, name VARCHAR(30), topic_id INTEGER REFERENCES topics, description TEXT);


 -- 0 - Regular user  1 - Moderator  2 - Admin
CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(30), access INTEGER);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  body TEXT,
  topic_id INTEGER REFERENCES topics,
  user_id INTEGER REFERENCES users
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body TEXT,
  user_id INTEGER,
  post_id INTEGER,
  relation INTEGER
);
