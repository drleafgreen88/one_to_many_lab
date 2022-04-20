DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS author;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  user_id INT NOT NULL REFERENCES authors(id)
);