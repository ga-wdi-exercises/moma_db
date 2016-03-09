# 1. Create a new Artist (Vincent Van Gogh) and save him to your database
Artist.create(first_name: "Vincent", last_name: "Van Gogh")
# 2. Create a new Painting (Starry Night) and save it to your database
Painting.create(title: "Starry Night")
# 3. Return all Artists
Artist.all()
# 4. Return all Paintings
Painting.all()
# 5. Return the artist with an id of 2
Artist.find(2)
# 6. Return the artist with a name of "Vincent Van Gogh"
Artist.find_by(first_name: "Vincent",last_name: "Van Gogh")
# 7. Return all the artists from Spain
Artist.where(nationality: "Spanish")
# 8. Return the painting with an id of 1
Painting.find(1)
# 9. Return the painting with a name of "Guernica"
Panting.find_by(title: "Guernica")
# 10. Return all the paintings that "Pablo Picasso" painted
picasso = Artist.find_by(first_name: "Pablo", last_name: "Picasso")
Painting.where(artist_id: picasso.id)
# 11. Return the artist of "Guernica"
guernica = Painting.find_by(title: "Guernica")
Artist.find(guernica.artist_id)
# 12. Change Vincent Van Gogh's nationality to USA
gogh = Artist.find_by(first_name: "Vincent", last_name: "Van Gogh")
gogh.nationality = "USA"
gogh.save
# 13. Change "Starry Night" to be one of Pablo Picasso's paintings
starry_night = Painting.find_by(title: "Starry Night")
picasso = Artist.find_by(first_name: "Pablo", last_name: "Picasso")
starry_night.artist_id = picasso.id
starry_night.save
