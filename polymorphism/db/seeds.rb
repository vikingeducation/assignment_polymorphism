# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@pizzas = ["Neopolitan", "Italiano", "Supreme", "Margherita", "Wood-fired",
"Stuffed Crust", "Hand tossed"]

@sandwiches = ["Italian", "Po' Boy", "Fish", "Big Mac", "Hoagie", "Submarine"]


@pizzas.each do |i|
  p=Pizza.new
  p.type = i
  p.save
end
@sandwiches.each do |i|
  s=Sandwich.new
  s.type = i
  s.save
end