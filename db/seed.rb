require "active_record"
require_relative "../models/artist"
require_relative "../models/painting"
require_relative "connection.rb"

Artist.destroy_all
Painting.destroy_all

van_gogh = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
money = Artist.create(name: "Claude Money", nationality: "French")
van_gogh.paintings.create(title: "Starry Night")
picasso.paintings.create(title: "Guernica")
money.paintings.create(title: "Water Lilies")
