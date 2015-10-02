# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Father.destroy_all
Mother.destroy_all
Child.destroy_all


def father_create
  
  f = Father.new
  f.name = Faker::Name.first_name + " " + Faker::Name.last_name + " " + Faker::Name.suffix
  f.save
  
end


def mother_create
  
  m = Mother.new
  m.name = Faker::Name.first_name + " " + Faker::Name.last_name + " " + Faker::Name.suffix
  m.save
  
end


def child_create
  
  c = Child.new
  c.name = Faker::Name.first_name + " " + Faker::Name.last_name + " " + Faker::Name.suffix
  c.parents_id = rand(1..10)
  c.parents_type = "Mother"
  c.parents_type = "Father" if (c.parents_id <= 5)
  c.save
  
end


10.times do 
  father_create
  mother_create
end

30.times do
  child_create
end