# Require all the gems we'll be using for this app from the Gemfile.
# Remove the need for `bundle exec`.
require "bundler/setup"

# Load dependencies.
require "pg"            # postgres db library
require "active_record" # the ORM
require "pry"           # for debugging

# Connect to database.
require_relative "db/connection"

# Load models.
require_relative 'models/artist'
require_relative 'models/painting'

# This will put us into a state of the pry REPL.
binding.pry
puts "end of application"
