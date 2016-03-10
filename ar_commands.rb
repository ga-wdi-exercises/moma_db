require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
  # Artist.create(name: 'Vincent van Gogh', nationality: 'Dutch')
# 2. Create a new Painting (Starry Night) and save it to your database
  # Painting.create(title: 'Starry Nigths', artist_id:
# 3. Return all Artists
    # Arist.all
# 4. Return all Paintings
    # Painting.all
# 5. Return the artist with an id of 2
    # Artist.find(2)
# 6. Return the artist with a name of "Vincent Van Gogh"
    # Artist.find_by(name: "Vincent van Gogh")
# 7. Return all the artists from Spain
    # Artist.find_by(nationality: "Spain")
# 8. Return the painting with an id of 1
    # Painting(1)
# 9. Return the painting with a name of "Guernica"
    # Painting.find_by(title: "Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
  # vince = Artist.find(1)
  # Painting.find(vince.id)
# 11. Return the artist of "Guernica"
  # guernica =Painting.find_by(title: "Guernica")
  # Artist.find(guernica.artist_id
# 12. Change Vincent Van Gogh's nationality to USA
    # vince.update(nationality: "USA")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
    # Painting.find(1).update(artist_id: 2)
