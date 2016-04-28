DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;

CREATE TABLE topics (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  relation VARCHAR,
  description VARCHAR
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  access VARCHAR,
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  body VARCHAR,
  topic_id VARCHAR,
  user_id VARCHAR
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  gender VARCHAR,
  apartment_id INTEGER
);
