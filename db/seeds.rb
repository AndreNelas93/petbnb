# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'
Booking.destroy_all
Listing.destroy_all
User.destroy_all

user = User.create!(name: "André", password: "123456", email: "andre@andre.com")
puts "user created"

file1 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677683873/patrick-perkins-3wylDrjxH-E-unsplash_xvypnp.jpg")
listing = Listing.new(
  title: "Cozy Apartment for Aligators",
  pet_types: "Aligators",
  description: "We are a family of 3 and we are used to take care of our friends' pets when they go on vacation. Our Parrot Jacob loves the company of other pets.",
  address: Faker::Address.full_address,
  max_occupancy: 2,
  price_per_night: 23,
  max_stay: 7,
  user_id: user.id
)
listing.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file2 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677685171/zac-gudakov--UHyhmRhzrU-unsplash_chvncd.jpg")
listing = Listing.new(
  title: "House With Great Backyard for Dogs",
  pet_types: "Dogs",
  description: "Our house is in a quiet suburbs area and has a great grass backyard for your dog to play with ours.",
  address: Faker::Address.full_address,
  max_occupancy: 3,
  price_per_night: 30,
  max_stay: 5,
  user: user
)
listing.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file3 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677685479/jamie-street-s9Tf1eBDFqw-unsplash_u2zz7b.jpg")
listing = Listing.new(
  title: "Santa's Little Helper's House",
  pet_types: "Dogs",
  description: "I am work from home developer, so I am always present to take care of your buddy.",
  address: Faker::Address.full_address,
  max_occupancy: 1,
  price_per_night: 18,
  max_stay: 5,
  user: user
)
listing.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file4 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677685768/kostiantyn-vierkieiev-46SVyiA_KKk-unsplash_ix4yiu.jpg")
listing = Listing.new(
  title: "Big Terrarium for up to 3 Turtles",
  pet_types: "Turtles",
  description: "I have an armadillo - Pierre - and he loves the company of turtles. We can have up to three at a time.",
  address: Faker::Address.full_address,
  max_occupancy: 3,
  price_per_night: 10,
  max_stay: 15,
  user: user
)
listing.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file5 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677685976/josh-rakower-zBsXaPEBSeI-unsplash_hcnnwd.jpg")
listing = Listing.new(
  title: "Ibiza for Dogs",
  pet_types: "Dogs",
  description: "This is a big house with a big patio and pool. Dogs use to love staying here and play. It is like Ibiza for them!",
  address: Faker::Address.full_address,
  max_occupancy: 5,
  price_per_night: 35,
  max_stay: 3,
  user: user
)
listing.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"


file6 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677687110/deb-dowd-kBz6VBnW5iU-unsplash_yhwppg.jpg")
listing = Listing.new(
  title: "Party House for Birds",
  pet_types: "Parrots",
  description: "We have created a great space in our anex, to host some friendly and chaty birds. It is like Brazil in the Carnaval!",
  address: Faker::Address.full_address,
  max_occupancy: 6,
  price_per_night: 10,
  max_stay: 10,
  user: user
)
listing.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file92 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677778555/bonnie-kittle-MUcxe_wDurE-unsplash_uqmrk9.jpg")
listing = Listing.new(
  title: "Guinea Pigs' Dream Spot",
  pet_types: "Guinea Pigs",
  description: "Perfect spot for the cutest pals.",
  address: Faker::Address.full_address,
  max_occupancy: 3,
  price_per_night: 12,
  max_stay: 6,
  user: user
)
listing.photo.attach(io: file92, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file8 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677778705/mia-anderson-2k6v10Y2dIg-unsplash_ptymuy.jpg")
listing = Listing.new(
  title: "Puppies Playground",
  pet_types: "Dogs",
  description: "Huge backyard and comfy home for your pups to stay and play.",
  address: Faker::Address.full_address,
  max_occupancy: 5,
  price_per_night: 23,
  max_stay: 6,
  user: user
)
listing.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"


file9 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677778875/krys-amon-3ZE-A-6lFdk-unsplash_ou3tjo.jpg")
listing = Listing.new(
  title: "Vet With Space for Fishes",
  pet_types: "Fishes",
  description: "I'm a vet that wants to take care of others' pets. Due to my short spare time, the best is to take care of fishes.",
  address: Faker::Address.full_address,
  max_occupancy: 3,
  price_per_night: 15,
  max_stay: 15,
  user: user
)
listing.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"

file91 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677779064/eric-han-WJ6fmN1D-h0-unsplash_ocswho.jpg")
listing = Listing.new(
  title: "Kat's Place for Cats",
  pet_types: "Cats",
  description: "Quiet and warm place with a lot of sunlight. Cats love it!",
  address: Faker::Address.full_address,
  max_occupancy: 1,
  price_per_night: 20,
  max_stay: 5,
  user: user
)
listing.photo.attach(io: file91, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"


file7 = URI.open("https://res.cloudinary.com/dklcbnwok/image/upload/v1677779636/ALLI80_gmphra.jpg")
listing = Listing.new(
  title: "Spacy Home",
  pet_types: "Aligators",
  description: "Spacy place for your gators to run and eat some chickens!",
  address: Faker::Address.full_address,
  max_occupancy: 2,
  price_per_night: 35,
  max_stay: 3,
  user: user
)
listing.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
listing.save!

puts "listing created"
