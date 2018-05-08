# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
user1 = User.create!(username: Faker::Zelda.character)
user2 = User.create!(username: Faker::Zelda.character)
user3 = User.create!(username: Faker::Zelda.character)


Artwork.destroy_all
artwork1 = Artwork.create!(title: Faker::Zelda.location, image_url: Faker::Internet.url, artist_id: user1.id)
artwork2 = Artwork.create!(title: Faker::Zelda.location, image_url: Faker::Internet.url, artist_id: user2.id)
artwork3 = Artwork.create!(title: Faker::Zelda.location, image_url: Faker::Internet.url, artist_id: user3.id)
artwork4 = Artwork.create!(title: Faker::Zelda.location, image_url: Faker::Internet.url, artist_id: user1.id)

ArtworkShare.destroy_all
artwork_share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id)
artwork_share2 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user3.id)
artwork_share3 = ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)
artwork_share4 = ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user3.id)