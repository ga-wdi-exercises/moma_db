DROP TABLE IF EXISTS paintings;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  nationality VARCHAR
);

CREATE TABLE paintings(
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  artist_id INT
);
