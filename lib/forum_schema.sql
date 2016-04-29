DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

CREATE TABLE topics (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  relation INTEGER,
  description VARCHAR
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  access INTEGER, # 0 - Regular user  1 - Moderator  2 - Admin
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  body VARCHAR,
  topic_id INTEGER,
  user_id INTEGER
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body VARCHAR,
  user_id INTEGER,
  post_id INTEGER,
  relation INTEGER
);
