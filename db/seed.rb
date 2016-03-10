require "pry"
require "active_record"
require "pg"

require_relative "../models/painting"
require_relative "../models/artist"
require_relative "connection"

Artist.destroy_all
Painting.destroy_all

van_gogh = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spain")
monet = Artist.create(name: "Claude Monet", nationality: "France")

van_gogh.paintings.create(title: "Starry Night", artist: van_gogh)
picasso.paintings.create(title: "Guernica", artist: picasso)
monet.paintings.create(title: "Water Lillies", artist: monet)
