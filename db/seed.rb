TRUNCATE TABLE artists CASCADE;
TRUNCATE TABLE paintings CASCADE;

ALTER SEQUENCE artist_id_seq RESTART WITH 1;
ALTER SEQUENCE paintings_id_seq RESTART WITH 1;

INSERT INTO artists (first_name, last_name, nationality) VALUES ('Vincent', 'van Gogh', 'Dutch');
INSERT INTO paintings (title, artist_id) VALUES ('Starry Night', 1);

INSERT INTO artists (first_name, last_name, nationality) VALUES ('Pablo', 'Picasso', 'Spanish');
INSERT INTO paintings (title, artist_id) VALUES ('Guernica', 2);

INSERT INTO artists (first_name, last_name, nationality) VALUES ('Claude', 'Monet', 'French');
INSERT INTO paintings (title, artist_id) VALUES ('Water Lilies', 3);
