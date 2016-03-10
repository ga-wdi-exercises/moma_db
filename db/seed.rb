require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/painting"
require_relative "../db/connection.rb"

vanGoh = Artist.create(name: "Vincent VanGoh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Monet", nationality: "Spanish")

vanGoh.paintings.create(title: "Starry Night")
picasso.paintings.create(title: "Guernica")
monet.paintings.create(title: "Water Lilies")
