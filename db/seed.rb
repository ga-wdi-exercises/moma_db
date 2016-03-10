require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/painting"
require_relative "../db/connection"

Artist.destroy_all
Painting.destroy_all

vangogh = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Monet", nationality: "French")

vangogh.paintings.create(title: "Starry Starry Night")
picasso.paintings.create(title: "Guernica")
monet.paintings.create(title: "Water Lilies")
