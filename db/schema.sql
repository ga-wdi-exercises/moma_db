DROP TABLE IF EXISTS paintings;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
nationality TEXT NOT NULL
);

CREATE TABLE paintings (
id serial PRIMARY KEY,
title TEXT NOT NULL,
artist_id INT
);
