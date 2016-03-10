require "active_record"

require_relative "connection"
require_relative "moma_dbmodels/artist"
require_relative "moma_db/models/painting"

Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
Artist.create(name: "Pablo Picasso", nationality: "Spanish")
Artist.create(name: "Claude Monet", nationality: "French")

Artist.find_by(name:"Vincent Van Gogh").paintings.create(title: "Starry Starry Night")
Artist.find_by(name:"Pablo Picasso").paintings.create(title: "Guernica")
Artist.find_by(name:"Claude Monet").paintings.create(title: "Water Lilies")
