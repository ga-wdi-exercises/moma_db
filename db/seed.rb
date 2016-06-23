require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "..connection"
require_relative "../models/artist"
require_relative "../models/painting"

vince = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
claude = Artist.create(name: "Claude Money", nationality: "French")
pablo = Artist.create(name: "Pablo Picasso", nationality: "Spanish")

Painting.create(title: "Starry Night", artist_id: 1)
Painting.create(title: "Water Lilies", artist_id: 2)
Painting.create(title: "Guernica", artist_id: 3)
