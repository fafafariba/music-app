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
album1 = Album.create(band_id: band1.id, title: "Is This It?", year: 2001)
album2 = Album.create(band_id: band2.id, title: "Little Joy", year: 2008)
album3 = Album.create(band_id: band1.id, title: "Room On Fire", year: 2003)
