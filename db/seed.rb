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

van_gogh = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Monet", nationality: "French")

starry.painting.create(title: "Starry Night")
guernica.painting.create(title: "Guernica")
lilies.painting.create(title: "Water Lilies")
