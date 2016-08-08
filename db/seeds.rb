# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Apartment.destroy_all
House.destroy_all
Resident.destroy_all



10.times do
  a = Apartment.create(name: Faker::Address.street_name)
  2.times do
  a.residents.create(name: Faker::Name.name)
  end
end

10.times do
  h = House.create(name: Faker::Address.street_name)
  3.times do
    h.residents.create(name: Faker::Name.name)
  end
end
