#require "bundler/setup"

require "pry"
require "active_record"
require "pg"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"
require_relative "db/seed"

binding.pry

puts "last line"
