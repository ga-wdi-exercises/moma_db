require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
Artist.create(name:"Vincent van Goh", nationality:"Dutch")
# 2. Create a new Painting (Starry Night) and save it to your database
Painting.create(title:"Starry Night")
# 3. Return all Artists
Artist.all
# 4. Return all Paintings
Painting.all
# 5. Return the artist with an id of 2
Artist.find(1)
# 6. Return the artist with a name of "Vincent Van Gogh"
#note van is lowercase
Artist.where(name: "Vincent van Gogh")
# 7. Return all the artists from Spain
Artist.where(nationality: "Spainish")
# 8. Return the painting with an id of 1
#note used the examples to populate
Painting.find(2)
# 9. Return the painting with a name of "Guernica"
paint = Painting.find_by(title: 'Guernica')
paint.title
# 10. Return all the paintings that "Pablo Picasso" painted
Painting.find_by(artist_id: 3)
# 11. Return the artist of "Guernica"
paint = Painting.find_by(title: 'Guernica')
Artist.find(paint.artist_id)
# 12. Change Vincent Van Gogh's nationality to USA
change = Artist.find_by(name: "Vincent van Goh")
change.update(nationality: "USA")
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
change = Painting.find_by(title: "Starry Night")
change.update(artist_id: Artist.find(2).id)
