# Require all the gems we'll be using for this app from the Gemfile.
# Remove the need for `bundle exec`.
require "bundler/setup"

# Load dependencies.
require "pg"            # postgres db library
require "active_record" # the ORM
require "pry"           # for debugging

# Connect to database.
require_relative "../db/connection"

# Load models.
require_relative '../models/artist'
require_relative '../models/painting'

# Populate your database (using ActiveRecord)
# - 'Starry Night' by Vincent van Gogh (Dutch)
# - 'Guernica' by Pablo Picasso (Spanish)
# - 'Water Lilies' by Claude Money (French)

# Destroy all the items from the database.
Painting.destroy_all
Artist.destroy_all

# Create sample artists.
gogh    = Artist.create(name: "Vincent van Gogh", nationality: "Holland")
picasso = Artist.create(name: "Pablo Picasso", nationality: "Spain")
money   = Artist.create(name: "Claude Money", nationality: "France")

# Create paintings that are associated with artists.
gogh.paintings.create([
  { title: "Starry Night" },
  { title: "Donburi" }
])
picasso.paintings.create([
  { title: "Guernica" },
  { title: "Gyudon" }
])
money.paintings.create([
  { title: "Water Lilies" },
  { title: "Sushi" }
])
