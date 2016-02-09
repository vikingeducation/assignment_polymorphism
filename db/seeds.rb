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


25.times do
  murd = Person.all.sample
  vic = Person.all.sample

  unless murd == vic
    vic.murderers << murd
  end
end
