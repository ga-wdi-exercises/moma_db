require "active_record"
require "pry" # for debugging

require_relative "connection"
require_relative "../models/artist"
require_relative "../models/painting"

Artist.delete_all
Painting.delete_all

vin = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
Painting.create(title: "Starry Night", artist_id: vin.id)

blo = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
Painting.create(title: "Guernica", artist_id: blo.id)

mo = Artist.create(name: "Claude Monet", nationality: "French")
Painting.create(title: "Water Lilies", artist_id: mo.id)


binding.pry

puts "end of application"
