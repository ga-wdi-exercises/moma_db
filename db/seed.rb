require "bundler/setup"

require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/painting"

require_relative "../db/connection.rb"

Artist.destroy_all
Painting.destroy_all

vvg = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
pp = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
cm = Artist.create(name: "Claude Money", nationality: "French")
vvg.paintings.create(title: "Starry Night")
pp.paintings.create(title: "Guernica")
cm.paintings.create(title: "Water Lilies")
