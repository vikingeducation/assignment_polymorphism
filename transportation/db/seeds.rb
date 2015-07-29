# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Clear all
Passenger.delete_all
Train.delete_all
Airplane.delete_all


# Create a few train companies
OPERATORS = Array.new(5) { Faker::Company.name + " Transportation" }

# Create a few airlines
AIRLINES = Array.new(3) { Faker::Company.name + " Airlines" }

# Create some cities
CITIES = Array.new(15) { Faker::Address.city }


# Create a bunch of passengers
150.times do
  Passenger.create(:name => Faker::Name.name)
end


# Create a few trains and planes
8.times do
  new_train = Train.new
  new_train.operator = OPERATORS.sample

  cities = CITIES.sample(2)

  new_train.origin = cities[0]
  new_train.destination = cities[1]

  new_train.save
end

6.times do
  new_plane = Airplane.new
  new_plane.airline = AIRLINES.sample

  cities = CITIES.sample(2)

  new_plane.origin = cities[0]
  new_plane.destination = cities[1]

  new_plane.save
end


# Assign random passengers to vessels
Passenger.all.map do |p|

  p_rand = rand

  if p_rand < 0.3
    Train.all.sample.passengers << p
  elsif p_rand < 0.6
    Airplane.all.sample.passengers << p
  end

end