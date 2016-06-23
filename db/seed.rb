require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/painting"

require_relative "../db/connection.rb"


Artist.destroy_all
Painting.destroy_all
# destroys existing data in database

vincent = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
pablo = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
claude = Artist.create(name: "Claude Monet", nationality: "French")

vincent.paintings.create(title: "Starry Night", artist_id: vincent)

pablo.paintings.create(title: "Guernica", artist_id: pablo)

claude.paintings.create(title: "Water Lilies", artist_id: claude)
