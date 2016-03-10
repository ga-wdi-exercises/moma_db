require "bundler/setup"

require "pg"
require "active_record"
require "pry"

require_relative "connection"
require_relative "../models/artist"
require_relative "../models/painting"


Artist.create(name: 'Vincent van Gogh', nationality: 'Dutch')
Painting.create(title: 'Starry Nigths', artist_id: 1)
Artist.create(name: 'Pablo Picasso', nationality: 'Spanish')
Painting.create(title: 'Guernica', artist_id: 2)
Artist.create(name: 'Claude Money', nationality: 'French')
Painting.create(title: 'Water Lilies', artist_id: 3)
binding.pry
