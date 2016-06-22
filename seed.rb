require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

require_relative "db/connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/artist" # require the Student class definition that we defined in the models/student.rb file
require_relative "models/painting" # require the Student class definition that we defined in the models/student.rb file

Artist.create(name: "Vincent van Gogh", nationality: "Dutch", id: 1)
Artist.create(name: "Pablo Picasso", nationality: "Spanish", id: 2)
Artist.create(name: "Claude Monet", nationality: "French", id: 3)

Painting.create(title: "Starry Night", id: 1, artist_id: 1)
Painting.create(title: "Guernica", id: 2, artist_id: 2)
Painting.create(title: "Water Lilies", id: 3, artist_id: 3)
Painting.create(title: "Irises", id: 4, artist_id: 1)


binding.pry








# 'Starry Night' by Vincent van Gogh (Dutch)
# 'Guernica' by Pablo Picasso (Spanish)
# 'Water Lilies' by Claude Money (French)
