DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  nationality VARCHAR
);

CREATE TABLE paintings(
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  artist_id INT
);
