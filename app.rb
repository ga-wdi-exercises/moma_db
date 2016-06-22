require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

Artist.destroy_all
Painting.destroy_all

Artist.create([
  {name: 'Vincent van Gogh', nationality: 'Dutch'},
  {name: 'Pablo Picasso', nationality: 'Spanish'},
  {name: 'Claude Monet', nationality: 'French'},
])


Painting.create([
  {title: 'Starry Night', artist: 'Vincent van Gogh'},
  {title: 'Portraits of Paris', artist: 'Vincent van Gogh'},
  {title: 'Guernica', artist: 'Pablo Picasso'},
  {title: 'Water Lilies', name: 'Claude Monet'},
])


binding.pry
puts "end of application"
