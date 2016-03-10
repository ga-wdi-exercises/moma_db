require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "db/connection"
require_relative "models/painting.rb"
require_relative "models/artist.rb"

binding.pry

puts "end of application"
