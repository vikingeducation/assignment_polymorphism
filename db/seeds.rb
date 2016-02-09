# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying Old Data"

Employee.destroy_all
Manager.destroy_all
Review.destroy_all

puts  "Old Data Successfully Deleted"

MULTIPLIER = 10

def generate_employee
  u = Employee.new
  u.name = Faker::Name.name
  u.save
end

def generate_manager
  m = Manager.new
  m.name = Faker::Name.name
  m.save
end

def generate_review
  r = Review.new
  r.author_id = Manager.pluck(:id).sample
  r.body = Faker::Lorem.sentence
  if rand(0..1) == 0
    r.reviewable_id = Manager.pluck(:id).sample
    r.reviewable_type = Manager.to_s
  else
    r.reviewable_id = Employee.pluck(:id).sample
    r.reviewable_type = Employee.to_s
  end
  r.save
end

puts "generating Employees"
MULTIPLIER.times { generate_employee }
puts "generating Managers"
MULTIPLIER.times { generate_manager }
puts "generating Review"
MULTIPLIER.times { generate_review }
puts "DONE"
