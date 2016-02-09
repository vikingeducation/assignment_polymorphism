# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Person.destroy_all
Gun.destroy_all
Knife.destroy_all
Candlestick.destroy_all

25.times do
  Person.create(name: Faker::Name.name)
end

def generate_weapon_name(type)
  name = Faker::Commerce.product_name
  words = name.split(" ")
  words[-1] = type
  words.join(" ")
end

10.times do
  Gun.create(name: generate_weapon_name("Gun"))
  Knife.create(name: generate_weapon_name("Knife"))
  Candlestick.create(name: generate_weapon_name("Candlestick"))
end

weapons = (Gun.all + Knife.all + Candlestick.all)

125.times do
  murd = Person.all.sample
  vic = Person.all.sample

  unless murd == vic
    vic.update(murderers: vic.murderers + [murd] )
  end
end

weapons.each do |weapon|
  1.times do
    Murdering.all.sample.update(weapon: weapon)
  end
end
