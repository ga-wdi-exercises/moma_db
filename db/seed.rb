# TRUNCATE TABLE paintings CASCADE;
# TRUNCATE TABLE artists CASCADE;
#
# ALTER SEQUENCE songs_id_seq RESTART WITH 1;
# ALTER SEQUENCE artists_id_seq RESTART WITH 1;
#
# INSERT INTO artists (name, nationality) VALUES ('Vincent van Gogh', 'Dutch');
# INSERT INTO paintings (title, artist_id) VALUES ('Starry Night', 1);
#
# INSERT INTO artists (name, nationality) VALUES ('Pablo Picasso', 'Dutch');
# INSERT INTO paintings (title, artist_id) VALUES ('Guernica', 2);
#
# INSERT INTO artists (name, nationality) VALUES ('Claude Money', 'French');
# INSERT INTO paintings (title, artist_id) VALUES ('Water Lilies', 3);
require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"
require "active_record"
require "pry"

require_relative "../models/painting"
require_relative "../models/artist"

require_relative "../db/connection.rb"


Artist.destroy_all
Painting.destroy_all
# destroys existing data in database

van_gogh = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Money", nationality: "French")

van_gogh.paintings.create([
    {title: "Starry Night"},
  ])

picasso.songs.create([
    {title: "Guernica"},
    ])

monet.songs.create([
    {title: "Water Lilies"},
    ])
