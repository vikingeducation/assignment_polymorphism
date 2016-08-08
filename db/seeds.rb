# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  order = BreakfastOrder.create(customer_name: Faker::Name.name)
  order.dishes.create(dish_name: Faker::Beer.name, price: Faker::Commerce.price)
end

50.times do
  order = LunchOrder.create(customer_name: Faker::Name.name)
  order.dishes.create(dish_name: Faker::Beer.name, price: Faker::Commerce.price)
end

50.times do
  order = DinnerOrder.create(customer_name: Faker::Name.name)
  order.dishes.create(dish_name: Faker::Beer.name, price: Faker::Commerce.price)
end
