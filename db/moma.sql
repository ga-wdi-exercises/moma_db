DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name TEXT,
  nationality TEXT
);

CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  artist_id INT,
  name TEXT
);
