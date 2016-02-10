# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Human.delete_all
Cat.delete_all
Dog.delete_all

10.times do
  Cat.create( name: Faker::Hipster.word.capitalize )
  Dog.create( name: Faker::Hipster.word.capitalize )
end

100.times do
  animal_type = ["Cat","Dog"].sample
  animal_id = animal_type.classify.constantize.all.sample.id
  Human.create( name: Faker::Name.name, humanable_type: animal_type, humanable_id: animal_id )
end
