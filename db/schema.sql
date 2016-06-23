DROP TABLE IF EXISTS paintings;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  nationality VARCHAR(100)
);

CREATE TABLE paintings (
  id serial PRIMARY KEY,
  title VARCHAR(100),
  artist_id INT
);
