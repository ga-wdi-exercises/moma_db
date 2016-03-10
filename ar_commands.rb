require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
a1 = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
a1.save

# 2. Create a new Painting (Starry Night) and save it to your database
p1 = Painting.create(title: "Starry Night")
p1.save

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
Artist.where(id: 5)

# 9. Return the painting with a name of "Guernica"
Painting.find_by(title: "Guernica")

# 10. Return all the paintings that "Pablo Picasso" painted
Painting.where(artist_id: 2)
#^^^where Pablo Picasso's id equals 2

# 11. Return the artist of "Guernica"
Painting.find_by(title: "Guernica")
#the artist id is returned and the artist can be found from that

# 12. Change Vincent Van Gogh's nationality to USA
a1.update(nationality: "USA")

# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
p1.update(artist_id: 2)
