# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting prior entries."
Employee.delete_all
Bar.delete_all
CoffeeShop.delete_all
puts "Prior entries deleted."

MULTIPLIER = 10

puts "Bulding Bars..."
MULTIPLIER.times do
  Bar.create(name: Faker::Company.name)
end
puts "Bars built."

puts "Building CoffeeShops..."
MULTIPLIER.times do
  CoffeeShop.create(name: Faker::Company.name)
end
puts "CoffeeShops built."

puts "Hiring employees as bartenders..."
(MULTIPLIER * 3).times do
  Employee.create(name: Faker::Name.name, employable_id: Bar.pluck(:id).sample, employable_type: Bar.name)
end
puts "Bartenders hired."

puts "Hiring employees as barista..."
(MULTIPLIER + 5).times do
  Employee.create(name: Faker::Name.name, employable_id: CoffeeShop.pluck(:id).sample, employable_type: CoffeeShop.name)
end
puts "Barista hired."