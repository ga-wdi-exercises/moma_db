require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
    vincent = Artist.create(name:"Vincent Van Gogh", nationality:"Dutch")
    vincent.save
# 2. Create a new Painting (Starry Night) and save it to your database
    vincent_painting = Paintings.create(title:"Stary Night")
    vincent_painting.save
# 3. Return all Artists
    Artist.all
# 4. Return all Paintings
    Paintings.all
# 5. Return the artist with an id of 2
    Artist.find(2)
# 6. Return the artist with a name of "Vincent Van Gogh"
    Artist.find_by(name:"Vincent Van Gogh")
# 7. Return all the artists from Spain
    Artist.where(nationality:"Spanish")
# 8. Return the painting with an id of 1
    Paintings.find(1)
# 9. Return the painting with a name of "Guernica"
    Paintings.find_by(title:"Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
    Paintings.find_by(artist_id: Artist.find_by(name: "Pablo Picasso").id)
# 11. Return the artist of "Guernica"
    Paintings.find_by(title:"Guernica").artist
# 12. Change Vincent Van Gogh's nationality to USA
    vincent.update(nationality:"USA")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
    starry = Paintings.find_by(title: "Starry Night")
    picasso = Artist.find_by(name: "Pablo Picasso")
    starry.artist = picasso
