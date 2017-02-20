# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying old records"

# Blow away all the existing records every time.

Product.destroy_all
Order.destroy_all
Category.destroy_all

50.times do |index|
	a = Category.new
	a.name = Faker::Commerce.department
	a.save!
end

40.times do |index|
	a = Order.new
	a.value = Faker::Number.number(4)
	a.shipping_address = Faker::Address.street_address
	a.save!
end

100.times do |index|
	a = Product.new
	a.price = Faker::Number.number(2)
	a.name = Faker::Commerce.product_name
	b = Category.all.sample
	b.products << a
end

100.times do |index|
	a = Product.new
	a.price = Faker::Number.number(2)
	a.name = Faker::Commerce.product_name
	b = Order.all.sample
	b.products << a
end

puts "Done seeding the DB"