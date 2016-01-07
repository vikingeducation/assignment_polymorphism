# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vote.destroy_all
Buzz.destroy_all
Smart.destroy_all
User.destroy_all

20.times do
  User.create(name: Faker::Internet.user_name)
  Buzz.create(phrase: Faker::Company.catch_phrase)
  Smart.create(phrase: Faker::Hacker.say_something_smart)
end

100.times do
  user_id = User.pluck(:id).sample
  if rand(0..1) == 1
    object_id = Buzz.pluck(:id).sample
    object_type = 'Buzz'
  else
    object_id = Smart.pluck(:id).sample
    object_type = 'Smart'
  end

  Vote.create(user_id: user_id, votable_id: object_id, votable_type: object_type)
end

puts 'Done seeding!'
