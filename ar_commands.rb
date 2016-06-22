require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
van_gogh = Artist.new(name: "Vincent van Gogh",nationality: "Dutch")
# 2. Create a new Painting (Starry Night) and save it to your database
starry_night = Painting.new(title: 'Stary Night')
# 3. Return all Artists
artists = Artist.all
# 4. Return all Paintings
paintings = Painting.all
# 5. Return the artist with an id of 2
Artist.find_by(id:2)
# 6. Return the artist with a name of "Vincent Van Gogh"
van_gogh = artists.find_by(name: 'Vincent van Gogh')
# 7. Return all the artists from Spain
Artist.where(nationality:"Spanish")
# 8. Return the painting with an id of 1
Painting.find_by(title:"Guernica")
# 9. Return the painting with a name of "Guernica"
Painting.find_by(title:"Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
picasso = Artist.find_by(name:"Pablo Picasso")
guernica = Painting.find_by(title:'Guernica')
guernica.update(artist_id:picasso.id)
picasso.paintings
# 11. Return the artist of "Guernica"
guernica.artist
# 12. Change Vincent Van Gogh's nationality to USA
van_gogh.nationality = "USA"
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
picasso.paintings += van_gogh.paintings
