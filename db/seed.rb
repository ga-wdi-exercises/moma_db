require "active_record"

require_relative "connection"
require_relative "../models/artist"
require_relative "../models/painting"

Painting.destroy_all
Artist.destroy_all

vangogh= Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
monet = Artist.create(name: "Claude Monet", nationality: "French")


Painting.create([
    {title: "Starry Night", artist: vangogh },
    {title: "Guernica", artist: picasso },
    {title: "Water Lilies", artist: monet },
  ])
