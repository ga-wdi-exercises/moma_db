TRUNCATE TABLE paintings CASCADE;
TRUNCATE TABLE artists CASCADE;

ALTER SEQUENCE paintings_id_seq RESTART WITH 1;
ALTER SEQUENCE artists_id_seq RESTART WITH 1;

INSERT INTO artists (name, nationality) VALUES ('Vincent van Gogh', 'Dutch');
INSERT INTO paintings (title) VALUES ('Starry Night');

INSERT INTO artists (name, nationality) VALUES ('Pablo Picasso', 'Spanish');
INSERT INTO paintings (title) VALUES ('Guernica');

INSERT INTO artists (name, nationality) VALUES ('Claude Monet', 'French');
INSERT INTO paintings (title) VALUES ('Water Lilies');
