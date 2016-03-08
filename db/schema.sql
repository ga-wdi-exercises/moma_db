DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;

CREATE TABLE artist (
  id SERIAL PRIMARY KEY,
  name TEXT,
  nationality TEXT
);

CREATE TABLE painting (
  id SERIAL PRIMARY KEY,
  title TEXT
);
