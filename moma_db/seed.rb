require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

Artist.create(name:"Vincent Van Gogh", nationality:"Dutch")
Artist.create(name:"Pablo Picasso", nationality:"Spanish")
Artist.create(name:"Claudet Monet", nationality:"French)

Painting.create(name: "Guernica", artist_id:2)
Painting.create(name: "Water Lilies", artist_id:3)
Painting.create(name: "Starry Night", artist_id:1)


# ruby moma_db/seed.rb
