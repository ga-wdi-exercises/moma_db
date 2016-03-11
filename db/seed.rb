# Add artist name, id and nationality to database

INSERT INTO artists (id, name, nationality) VALUES (1,'Vincent van Gogh','Dutch');
INSERT INTO artists (id, name, nationality) VALUES (2,'Pablo Picasso','Spanish');
INSERT INTO artists (id, name, nationality) VALUES (3,'Claude Money','French');

# Add paintings title and corresponding artist id as a foreign key
INSERT INTO paintings (title, artist_id) VALUES ('Starry Night', 1);
INSERT INTO paintings (title, artist_id) VALUES ('Guernica', 2);
INSERT INTO paintings (title, artist_id) VALUES ('Water Lilies', 3);
