# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Driver.destroy_all
Customer.destroy_all
Review.destroy_all

20.times do
  driver_type = ["uber-x", "uber-black"]
  Driver.create(name: Faker::Name.name, vehicle_type: driver_type.sample)
  Customer.create(name: Faker::Name.name)
end

100.times do
  d = Driver.all.sample
  d.reviews.create(body: Faker::Lorem.sentence, rating: rand(1..5))
end

15.times do
  c = Customer.all.sample
  c.reviews.create(body: Faker::Lorem.sentence, rating: rand(1..5))
end