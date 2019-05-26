# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Character.destroy_all
URL = "https://terrigen-cdn-dev.marvel.com/content/prod/1x/003cap_ons_crd_03.jpg"
puts 'Creating characters...'
Character.create(name: "Captain Marvel")
Character.create(name: "Tanos")
Character.create(name: "Captain America")
Character.create(name: "Black Panther")


puts 'Finished!'
