# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plant.destroy_all
Forest.destroy_all
Garden.destroy_all


25.times do
  Forest.create!(:name => Faker::GameOfThrones.character)
  Garden.create!(:name => Faker::App.name)
end

Forest.all.each do |forest|
  rand(5).times do
    forest.plants.create!(:name => Faker::Space.planet) 
  end
end

Garden.all.each do |garden|
  rand(5).times do
    garden.plants.create!(:name => Faker::Space.planet) 
  end
end


