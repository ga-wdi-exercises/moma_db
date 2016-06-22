DROP TABLE IF EXISTS paintings;
DROP TABLE IF EXISTS artists;

-- The schema to model Artists.
CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name TEXT,
  nationality TEXT
);

-- The schema to model Paintings.
CREATE TABLE paintings(
  id SERIAL PRIMARY KEY,
  title TEXT,
  artist_id INT
);
