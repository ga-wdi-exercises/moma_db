
require "active_record" # the ORM
require "pry" # for debugging
require_relative "db/connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/artist" # require the Artist class definition that we defined in the models/artist.rb file
require_relative "models/painting" # require the Painting class definition that we defined in the models/song.rb file


binding.pry

puts "end of application"
