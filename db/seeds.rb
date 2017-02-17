# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Band.destroy_all
band1 = Band.create(name: "The Strokes")
band2 = Band.create(name: "Little Joy")

Album.destroy_all
album1 = Album.create(band_id: band1.id, title: "Is This It", recording_type: "studio", year: 2001)
album2 = Album.create(band_id: band2.id, title: "Little Joy", recording_type: "studio", year: 2008)
album3 = Album.create(band_id: band1.id, title: "Room On Fire", recording_type: "studio", year: 2003)

Track.destroy_all
track1 = Track.create(album_id: album1.id, title: "Is This It", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "The Modern Age", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Soma", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Barely Legal", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Someday", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Alone, Together", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Last Nite", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Hard to Explain", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "New York City Cops", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Trying Your Luck", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Take It Or Leave It", track_type: "regular")
track1 = Track.create(album_id: album1.id, title: "Last Nite (Live)", track_type: "bonus")
