require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/song"

binding.pry

puts "end of application"
