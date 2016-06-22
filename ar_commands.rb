require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
  Arist.create(name: "Vincent Van Gogh", nationality: "Dutch")
# 2. Create a new Painting (Starry Night) and save it to your database
  Painting.create(title: "Starry Night", artist_id: 4)
# 3. Return all Artists
  Artist.all
# 4. Return all Paintings
  Painting.all
# 5. Return the artist with an id of 2
  Artist.find(2)
# 6. Return the artist with a name of "Vincent Van Gogh"
  Artist.find_by(name: "Vincent van Gogh")
# 7. Return all the artists from Spain
  Artist.where(nationality: "Spanish")
# 8. Return the painting with an id of 1
  Painting.find(1)
# 9. Return the painting with a name of "Guernica"
  Painting.find_by(title: "Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
  picasso = Artist.find_by(name: "Pablo Picasso")
  Painting.where(artist_id: picasso.id)
# 11. Return the artist of "Guernica"
  guernica = Painting.find_by(title: "Guernica")
  Artist.find(2)
  or Artist.where(id: guernica.artist_id)
# 12. Change Vincent Van Gogh's nationality to USA
  vangogh = Artist.find_by(name: "Vincent van Gogh")
  vangogh.nationality = "USA"
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
  starry = Painting.find_by(title: "Starry Night")
  starry.artist_id = picasso.id
