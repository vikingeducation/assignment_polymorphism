# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NAMES = ["John Smith", "Chris Evert", "Ricky Martin", "Yan Rickshaw", "Bob Roberts", "John Wayne"]

puts "creating countries"
Country.create!(:name => "USA")
Country.create!(:name => "China")
Country.create!(:name => "Russia")

puts "creating sports"
Sport.create!(:name => "Baseball")
Sport.create!(:name => "Basketball")
Sport.create!(:name => "Football")

puts "creating athletes"
Country.all.each_with_index do |country, index|
  country.athletes.create!(:name => NAMES[index])
end

puts "creating athletes"
Sport.all.each_with_index do |sport, index|
  sport.athletes.create!(:name => NAMES[index+3])
end