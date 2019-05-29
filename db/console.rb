require('pry')
require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Metallica'
  })

artist2 = Artist.new({
  'name' => 'Notorius B.I.G'
  })

artist1.save()
artist2.save()

album1 = Album.new({
  'name' => 'Master of Puppets',
  'genre' => 'metal',
  'artist_id' => artist1.id
  })

album2 = Album.new({
  'name' => 'Ride the Lightning',
  'genre' => 'metal',
  'artist_id' => artist1.id
  })

album3 = Album.new({
  'name' => 'Ready to Die',
  'genre' => 'Hip Hop',
  'artist_id' => artist2.id
  })

album1.save()
album2.save()
album3.save()

binding.pry
nil
