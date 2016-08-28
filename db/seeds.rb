# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying old data..."

Course.destroy_all
Lab.destroy_all
TeacherAssistant.destroy_all

puts "old data destroyed."

puts "creating Courses..."

10.times do
  c = Course.new
  c[:name] = Faker::Company.name
  c.save
end

puts "courses created."

puts "creating labs..."
10.times do
  l = Lab.new
  l[:name] = Faker::Name.name
  l.save
end
puts "labs created."

puts "adding TAs..."

25.times do
  ta = TeacherAssistant.new
  ta[:name] = Faker::Name.name
  ta[:assistable_id] = Course.pluck(:id).sample
  ta[:assistable_type] = "Course"
  ta.save
end

25.times do
  ta = TeacherAssistant.new
  ta[:name] = Faker::Name.name
  ta[:assistable_id] = Lab.pluck(:id).sample
  ta[:assistable_type] = "Lab"
  ta.save
end

puts "TAs added."
puts "All done!"
