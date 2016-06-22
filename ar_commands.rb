require "active_record"

# Connect to database.
require_relative "db/connection"

# Load models.
require_relative 'models/artist'
require_relative 'models/painting'

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
gogh = Artist.new(name: "Vincent Van Gogh", nationality: "Holland")
gogh.save

# 2. Create a new Painting (Starry Night) and save it to your database
starry_night = Painting.new(title: "Starry Night", artist: gogh)
starry_night.save

# 3. Return all Artists
Artist.all

# 4. Return all Paintings
Painting.all

# 5. Return the artist with an id of 2
Artist.find(2)

# 6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by name: "Vincent Van Gogh"

# 7. Return all the artists from Spain
Artist.find_by nationality: "Spain"

# 8. Return the painting with an id of 1
Painting.find(1)

# 9. Return the painting with a name of "Guernica"
Painting.find_by title: "Guernica"

# 10. Return all the paintings that "Pablo Picasso" painted
picasso = Artist.find_by name: "Pablo Picasso"
picasso.paintings

# 11. Return the artist of "Guernica"
Painting.find_by(title: "Guernica").artist

# 12. Change Vincent Van Gogh's nationality to USA
Artist.find_by(name: "Vincent Van Gogh").update(nationality: "USA")

# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
picasso = Artist.find_by name: "Pablo Picasso"
Painting.find_by(title: "Starry Night").update(artist: picasso)
