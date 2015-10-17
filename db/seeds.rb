# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Reseting database'
Rake::Task['db:migrate:reset'].invoke

puts 'Initializing seed data'
PREFIXES = [
  'International',
  'Global',
  'Luxury',
  'Comfort',
  'Delta',
  'East to West',
  'Sunshine',
  'Transport',
  'Aero',
  'Star',
  'Express',
  'Atlas'
]

puts 'Creating hotels'
hotel_suffixes = ['Inn', 'Hotel', 'Resort', 'Spa']
hotels = []
PREFIXES.each_with_index do |prefix, i|
  suffix = hotel_suffixes[i % hotel_suffixes.length]
  hotels << {:name => "#{prefix} #{suffix}"}
end
Hotel.create(hotels)

puts 'Creating airlines'
airline_suffixes = ['Air', 'Flights', 'Travels', 'Aviation']
airlines = []
PREFIXES.each_with_index do |prefix, i|
  suffix = airline_suffixes[i % airline_suffixes.length]
  airlines << {:name => "#{prefix} #{suffix}"}
end
Airline.create(airlines)

puts 'Creating ratings'
ratings = []
def to_rating(i)
  values = [1, 2, 3, 4, 5]
  values.shuffle![(i * rand(100)) % values.length]
end
Hotel.all.each do |hotel|
  rand(1..10).times do 
    ratings << {
      :value => to_rating(hotel.id),
      :ratable_id => hotel.id,
      :ratable_type => hotel.class.name
    }
  end
end
Airline.all.each do |airline|
  rand(1..10).times do
    ratings << {
      :value => to_rating(airline.id),
      :ratable_id => airline.id,
      :ratable_type => airline.class.name
    }
  end
end
Rating.create(ratings)

puts 'Done!'









