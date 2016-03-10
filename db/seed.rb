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


#create artist with name and nationality
vincent = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
#create Painting and connect to artist_id
Painting.create(title: "Starry Night", artist: vincent )

pablo = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
Painting.create(title: "Guernica", artist: pablo )

claude = Artist.create(name: "Claude Money", nationality: "French")
Painting.create(title: "Water Lilies", artist: claude)
