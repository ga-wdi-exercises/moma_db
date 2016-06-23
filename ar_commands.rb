require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
Artist.create(artist: "Vincent Van Gogh", nationality: "Dutch")
# 2. Create a new Painting (Starry Night) and save it to your database
Painting.create(title: "Starry Night")

# 3. Return all Artists
Artist.all
# 4. Return all Paintings
Painting.all
# 5. Return the artist with an id of 2
Artist.find(2)

# 6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by(name: "Vincent Van Gogh")
# 7. Return all the artists from Spain
Artist.where(nationality: "Spanish")
# 8. Return the painting with an id of 1
Painting.find(1)
# 9. Return the painting with a name of "Guernica"
Painting.find_by(title: "Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
Painting.where(name: "Pablo Picasso")
# 11. Return the artist of "Guernica"
Artist.where(title: "Guernica")

# 12. Change Vincent Van Gogh's nationality to USA
vincent = Artist.find_by(name: "Vincent Van Gogh")
vincent.update(nationality: "American")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
