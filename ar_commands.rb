require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
vincent_van_gogh = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
 +
# 2. Create a new Painting (Starry Night) and save it to your database
vincent_van_gogh.paintings.create(title: "Starry Night")
# 3. Return all Artists
 Artist.all
# 4. Return all Paintings
Painting.all
# 5. Return the artist with an id of 2
Artist.find_by(id: 2)
# 6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by(name: 'Vincent Van Gogh')
# 7. Return all the artists from Spain
Artist.find_by(nationality: 'spain')
# 8. Return the painting with an id of 1
Painting.find_by(id: 1)
# 9. Return the painting with a name of "Guernica"
Painiting.find_by(name: 'Guernica')
# 10. Return all the paintings that "Pablo Picasso" painted
g = Artist.find_by(name: "Pablo Picasso")
g.paintings
# 11. Return the artist of "Guernica"
g = Painting.find_by(title: 'Guernica')
# renders info about Guernica, can I pick the artist ID and use it to find artist name? or
g.artists
# 12. Change Vincent Van Gogh's nationality to USA
g = Artist.find_by(name: 'Vincent Van Gogh')
g.update(nationality: "Cuba")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
g = Painting.find_by(title: 'Starry Night')

h = Artist.find_by(name: 'Pablo Picasso')
# get artist ID and use to update the Starry Night info on Painitng table
g.update(artist_id: "Pablo's ID from H result")
