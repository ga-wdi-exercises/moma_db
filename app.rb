require "bundler/setup"

require "pg"
require "active_record"
require "pry"

require_relative "models/artist.rb"
require_relative "models/painting.rb"

require_relative "db/connection.rb"

binding.pry
