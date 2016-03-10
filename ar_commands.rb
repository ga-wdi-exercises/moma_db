require "active_record"

require_relative "db/connection"
require_relative "models/artist"
require_relative "models/painting"

# 1. Create a new Artist (Vincent Van Gogh) and save him to your database

  vvg = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")

# 2. Create a new Painting (Starry Night) and save it to your database

  vvg.paintings.create(title: "Starry Night")

# 3. Return all Artists

  Artist.all

# 4. Return all Paintings

  Painting.all

# 5. Return the artist with an id of 2

  Artist.find(2) # Note: When I reloaded my seed.rb file, the artist ids were 13, 14, 15

# 6. Return the artist with a name of "Vincent Van Gogh"

  Artist.find_by(name: "Vincent Van Gogh")

# 7. Return all the artists from Spain

  Artist.find_by(nationality: "Spanish")

# 8. Return the painting with an id of 1

  Painting.find(1) # Note: When I reloaded my seed.rb file, the painting ids were 4, 5, 6

# 9. Return the painting with a name of "Guernica"

  Painting.where(title: "Guernica")

# 10. Return all the paintings that "Pablo Picasso" painted

  pablo = Artist.find_by(name: "Pablo Picasso")
  pablo.paintings

# 11. Return the artist of "Guernica"

  guernica = Painting.find_by(title: "Guernica")
  guernica.artist

# 12. Change Vincent Van Gogh's nationality to USA

  vincent = Artist.where(name: "Vincent Van Gogh")
  vincent.update(nationality: "USA")
  # I pretty sure this is right but pry gave me: ArgumentError: wrong number of arguments (1 for 2)

# 13. Change "Starry Night" to be one of Pablo Picasso's paintings

  starrynight = Painting.where(title: "Starry Night")
  starrynight.artist = "Pablo Picasso"
  # NoMethodError: undefined method `artist=' for #<Painting::ActiveRecord_Relation:0x007fbb698d41f0>
