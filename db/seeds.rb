# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MULTIPLIER = 100

puts "Destroying old records..."

Item.destroy_all
Restaurant.destroy_all
VendingMachine.destroy_all

def generate_restaurants
  r = Restaurant.new
  r[:name] = Faker::Company.name
  r.save
end

def generate_vending_machines
  v = VendingMachine.new
  v[:latitude] = Faker::Address.latitude
  v[:longitude] = Faker::Address.longitude
  v.save
end

def generate_items
  type = ["Restaurant","VendingMachine"]
  i = Item.new
  i[:name] = Faker::SlackEmoji.food_and_drink
  i[:vendor_type] = type[rand(2)]
  i[:vendor_id] = i[:vendor_type].constantize.pluck(:id).sample
  i.save
end

MULTIPLIER.times {
  generate_restaurants
  generate_vending_machines
  generate_items
}

puts "Restaurants, vending machines and items generated."