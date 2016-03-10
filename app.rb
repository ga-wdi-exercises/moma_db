require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

#load a file from somewhere
require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"


binding.pry

puts "end of application"
