require "bundler/setup"

require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/painting"
require_relative "../db/connection.rb"


Artist.destroy_all
Painting.destroy_all

vincent = Artist.create(name:'Vincent van Gogh', nationality:'Dutch')
picasso = Artist.create(name: "Pablo Picasso", nationality:'Spanish')
monet = Artist.create(name:'Claude Monet', nationality:'French')
vincent.painting.create(title:'Starry Night')
picasso.painting.create(title:'Guernica')
monet.painting.create(title:'Water Lilies')
