# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Creating all entries
100.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name)
  dog = Dog.create!(name: Faker::Name.first_name )
  city = City.create!(city_name: Faker::Address.city)
end

# Creating jointure entries for dogsitter and dogs
300.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  jointablestroll = JoinTableStroll.create!(dogsitter: the_dogsitter, dog: the_dog)
end

# Creating jointure entries for dogsitter and cities
300.times do
  the_dogsitter = Dogsitter.find(Dogsitter.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  jointablecitydogsitter = JoinTableCityDogsitter.create!(dogsitter: the_dogsitter, city: the_city)
end

# Creating jointure entries for dogs and cities
300.times do
  the_dog = Dog.find(Dog.pluck(:id).shuffle.first)
  the_city = City.find(City.pluck(:id).shuffle.first)
  jointablecitydog = JoinTableCityDog.create!(dog: the_dog, city: the_city)
end

# tp Dogsitter.find(9).dogs
# => Get all dogs from the Dogsitter with id 9

# tp Dog.find(32).dogsitters
# => Get all dogsitters from the Dog with id 32
