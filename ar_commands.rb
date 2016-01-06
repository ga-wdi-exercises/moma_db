Artist.destroy_all
Painting.destroy_all

vince = Artist.create!(name: 'Vincent Van Gogh', nationality: 'Spanish')
p vince

pablo = Artist.create!(name: 'Pablo Picasso', nationality: "Spanish")
p pablo

francis = Artist.create!(name: "Francesco Tacconi", nationality: "Spanish")
p francis

p vince.paintings.create!(name: 'Starry Night', artist_id: 1)
p francis.paintings.create!(name: "The Virgin and Child", artist_id: 3)
p pablo.paintings.create!(name: "Guernica", artist_id: 2)

p Artist.all
p Painting.all

p Artist.find_by(name: 'Pablo Picasso') # Artist.find(2) fails after using Artist.destroy_all has run
p Artist.where(name: 'Vincent Van Gogh')
p Artist.find_by(nationality: 'Spanish')

p Painting.first
p Painting.where(name: 'Guernico')

gogh = Artist.find_by(name: 'Vincent Van Gogh')
p gogh

gogh.nationality = 'American'
gogh.save!

p gogh

star = Painting.find_by(name: 'Starry Night')
p star

star.artist_id = Artist.find_by(name: 'Pablo Picasso').id
star.save!

p star
