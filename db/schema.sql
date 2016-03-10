DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paitings;


CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name TEXT,
  nationality TEXT
);

  CREATE TABLE paintings (
    id SERIAL PRIMARY KEY,
    title TEXT,
    artist_id INTEGER
  );
