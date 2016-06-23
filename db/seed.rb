monet = Artist.new(name: 'Claude Money', nationality: 'French')
monet.save
pablo = Artist.new(name: 'Pablo Picasso', nationality: 'Spanish')
pablo.save
jack = Artist.new(name: 'Jack Kirby', nationality: 'American')
jack.save

water_lilies = Painting.new(name: 'Water Lilies', artist_id: 1)
water_lilies.save
cathedral = Painting.new(name: 'Sunken Cathedral', artist_id: 1)
cathedral.save
guernica = Painting.new(name: 'Guernica', artist_id: 2)
guernica.save
starry = Painting.new(name: 'The Mona Lisa', artist_id: 2)
starry.save
ff = Painting.new(name: 'Fantastic Four', artist_id: 3)
ff.save
thor = Painting.new(name: 'Thor', artist_id: 3)
thor.save
