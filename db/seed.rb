create_table(:artist)
add_column(:artist, :name, :nationality)

create_table(:painting)
add_column(:painting, :title, :artist)

artist.create(name: 'Vincent Van Gogh',nationality: 'Dutch');
artist.create(name: 'Pablo Picasso',nationality: 'Spanish');
artist.create(name: 'Claude Money',nationality: 'French');


painting.create(title: 'Starry Night', artist: 'Vincent Van Gogh')
painting.create(title: 'Guernica', artist: 'Pablo Picasso')
painting.create(title: 'Water Lilies', artist: 'Claude Money')
