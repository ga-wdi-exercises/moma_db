require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
v = Artist.new(name: "Vinny Vagh Goph", nationality: "dutch")
v.save

# 2. Create a new Painting (Starry Night) and save it to your database
p = Painting.new(title: "river", artist:'Vinny Vagh Goph')
p.save

# 3. Return all Artists
Artist.all

# 4. Return all Paintings
Painting.all

# 5. Return the artist with an id of 2
Artist.find(2)

# 6. Return the artist with a name of "Vincent van Gogh"
 Artist.find_by name: 'Vincent van Gogh'

# 7. Return all the artists from Spain
Artist.find_by nationality: "Spainish"

# 8. Return the painting with an id of 1
Painting.find(1)

# 9. Return the painting with a name of "Guernica"
Painting.find_by title: "Guernica"

# 10. Return all the paintings that "Pablo Picasso" painted
a = Artist.find_by name: 'Pablo Picasso'
a.paintings

# 11. Return the artist of "Guernica"
g = Painting.find_by title: "Guernica"
g.artist

# 12. Change Vincent Van Gogh's nationality to USA
a = Artist.find(4)
a.nationality = "USA"
a.save

# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
a = Painting.find(1)
a.artist_id = 5
a.save
