DROP TABLE IF EXISTS topics
DROP TABLE IF EXISTS users
DROP TABLE IF EXISTS posts
DROP TABLE IF EXISTS comments

CREATE TABLE topics
CREATE TABLE users
CREATE TABLE posts
CREATE TABLE comments

INSERT INTO topics (id, name, relation, description) VALUES (1, 'Random', 0, 'Put anything you want in here!')
INSERT INTO users (id, name, access) VALUES (1, 'David', 2)
INSERT INTO posts (id, name, body, topic_id, user_id) VALUES (1, 'Welcome to the Random board!', 'Want to talk about something?  Just post it here, but please keep your posts PG or else your post will be taken down', 1, 1)
