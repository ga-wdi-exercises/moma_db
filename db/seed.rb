require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"
require "active_record"
require "pry"

require_relative "connection"
require_relative "../models/painting"
require_relative "../models/artist"

require_relative "../db/connection.rb"


Artist.destroy_all
Painting.destroy_all

# 'Starry Night' by Vincent van Gogh (Dutch)
# 'Guernica' by Pablo Picasso (Spanish)
# 'Water Lilies' by Claude Money (French)

ear = Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
cube = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
money = Artist.create(name: "Claude Money", nationality: "French")

Painting.create([
  {title: "Starry Night", artist_id: ear.id}
  ])

Painting.create([
  {title: "Guernica", artist_id: cube.id}
  ])

Painting.create([
  {title: "Water Lilies", artist_id: money.id}
])

binding.pry
puts "end"
