
Artist.destroy_all
Painting.destroy_all

Artist.create(name: "Vincent van Gogh", nationality: "Dutch")
Painting.create(name: "Starry Night", artist_id: 1)

Artist.create(name: "Pablo Picasso", nationality: "Spanish")
Painting.create(name: "Guernica", artist_id: 2)

Artist.create(name: "Claude Money", nationality: "French")
Painting.create(name: "Water Lillies", artist_id: 3)
