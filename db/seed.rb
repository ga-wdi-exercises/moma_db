
# require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

# require "pg"
require "active_record"
# require "pry"
#
require_relative "../db/connection.rb"
require_relative "../models/painting"
require_relative "../models/artist"
#



Artist.destroy_all
Painting.destroy_all
# destroys existing data in database

van_gogh = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Money", nationality: "French")

van_gogh.paintings.create(title: "Starry Night")


picasso.paintings.create(title: "Guernica")


monet.paintings.create(title: "Water Lilies")
