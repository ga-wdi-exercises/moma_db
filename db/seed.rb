require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/painting"

require_relative "../db/connection.rb"


Artist.destroy_all
Painting.destroy_all

van_gogh = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Monet", nationality: "French")
van_gogh.paintings.create(title: "Starry Night")
picasso.paintings.create(title: "Guernica")
monet.paintings.create(title: "Water Lilies")
