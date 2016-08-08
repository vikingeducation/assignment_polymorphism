# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
multiplier = 5

Spaceship.destroy_all
Plane.destroy_all
Pilot.destroy_all

multiplier.times do  |n|
 Spaceship.create(name: Faker::Space.nebula)
end

multiplier.times do  |n|
 Plane.create(name: Faker::Beer.yeast)
end

multiplier.times do  |n|
 Pilot.create!(name: Faker::Name.name, vehicle_type: 'Spaceship', vehicle_id: Spaceship.all.sample.id)
 Pilot.create!(name: Faker::Name.name, vehicle_type: 'Plane', vehicle_id: Plane.all.sample.id)
end
