# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

dogsitters_array = []
dogs_array = []
cities_array = []

5.times do
  cities_array << City.create!(name: Faker::Address.city )
end

30.times do
  dogs_array << Dog.create!(race: Faker::Creature::Dog.breed , city: cities_array.sample)
end

5.times do
  dogsitters_array << Dogsitter.create!(name: Faker::Name.name, city: cities_array.sample)
end

20.times do
  Stroll.create!(dog: dogs_array.sample, dogsitter: dogsitters_array.sample)
end



