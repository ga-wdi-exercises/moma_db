require "active_record"
require_relative "connection"
require_relative "../models/artist"
require_relative "../models/painting"

Artist.destroy_all
Painting.destroy_all

vangogh = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Monet", nationality: "French")

 vangogh.paintings.create(title: "Starry Night")
 picasso.paintings.create(title: "Guernica")
 monet.paintings.create(title: "Water Lilies")
