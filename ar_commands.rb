require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
vanGogh = Artist.create(name: "Vincent VanGogh", nationality: "Dutch")
# 2. Create a new Painting (Starry Night) and save it to your database
vanGogh.paintings.create(title: "Starry Night")
# 3. Return all Artists
Artist.all
# 4. Return all Paintings
Painting.all
# 5. Return the artist with an id of 2
Artist.find(2)
# 6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by(name: "Vincent VanGogh")

# 7. Return all the artists from Spain
Artist.find_by(nationality: "Spanish")
# 8. Return the painting with an id of 1
Painting.find(4)
# 9. Return the painting with a name of "Guernica"
Painting.find_by(name: "Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
Painting.where(artist_id: 5)
# (pssst... it's id #5 for me because I had to reload my seed file because I can't (appartenly) spell Van Gogh)
# 11. Return the artist of "Guernica"
guernica = Patining.find_by(title: "Guernica")
guernica.artist
# 12. Change Vincent Van Gogh's nationality to USA
vanGogh = Artist.find_by(nationality: "Dutch")
vanGogh.update( nationality: "USA")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
starry_night = Painting.find_by(artist_id: 4)
starry_night.update(artist_id: 5)
