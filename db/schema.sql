DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  nationality VARCHAR(255)
);

CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  artist_id INTEGER
)
