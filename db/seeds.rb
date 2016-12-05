# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying everything..."
Cat.destroy_all
Dog.destroy_all
Collar.destroy_all

NUM_PET_TYPE = 5
NUM_COLLARS = 5

puts "Creating cats and dogs..."
NUM_PET_TYPE.times do 
  Cat.create(
    name: Faker::Pokemon.name
  )
  Dog.create(
    name: Faker::Pokemon.name
  )
end

puts "Creating collars..."
NUM_COLLARS.times do 
  animal = (rand.round == 0) ? Cat.all.sample : Dog.all.sample
  collar = Collar.create(
    name: Faker::Name.name, 
    phone: Faker::PhoneNumber.phone_number,
    collarable_id: animal.id, 
    collarable_type: animal.class
  )
  p collar
end

puts "Done!"


