require "bundle/setup"

require "pg"
require "active_record"
require "pry"
require_relative "../moseld/artist"
require_relative "../models/painting"
require_relative "../db/connection.rb"

Artist.destroy_all
Painting.destroy_all

vincent = Artist.new(name: "Vincent von Gogh" nationality: "Dutch")

piasco = Artist.new(name: "Piasco" nationality: "Spanish")

vincent = Artist.new(name: "Claunde Money"  nationality: "French")
