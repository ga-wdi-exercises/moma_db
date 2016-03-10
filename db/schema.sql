DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    nationality TEXT NOT NULL
);

CREATE TABLE paintings (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    artist_id INT
);
