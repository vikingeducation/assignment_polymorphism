# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

25.times do
  Person.create(name: Faker::Name.name)
end

10.times do
  Gun.create(name: Faker::Commerce.product_name)
  Knife.create(name: Faker::Commerce.product_name)
  Candlestick.create(name: Faker::Commerce.product_name)
end
weapons = Gun.all + Knife.all + Candlestick.all

25.times do
  murd = Person.all.sample
  vic = Person.all.sample

  unless murd == vic
    vic.murderers << murd
    murd.committed_murders.sample.weapon = weapons.sample
    murd.save
  end
end
