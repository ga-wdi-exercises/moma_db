
TRUNCATE TABLE artists CASCADE;
TRUNCATE TABLE paintings CASCADE;

ALTER SEQUENCE artists_id_seq RESTART WITH 1;
ALTER SEQUENCE paintings_id_seq RESTART WITH 1;

INSERT INTO artists (name, nationality) VALUES ('Vincent van Gogh', 'Dutch');
INSERT INTO paintings (title, artist_id) VALUES ('Starry Night');

INSERT INTO artists (name, nationality) VALUES ('Pablo Picasso', 'Spanish');
INSERT INTO paintings (title, artist_id) VALUES ('Guernica');

INSERT INTO artists (name, nationality) VALUES ('Claude Money', 'French');
INSERT INTO paintings (title, artist_id) VALUES ('Water Lilies');
