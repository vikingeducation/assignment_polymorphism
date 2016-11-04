# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all


10.times do 
  p = Patient.new
  p.name = Faker::Name.name
  p.save!
  
  d = Doctor.new
  d.name = Faker::Name.name
  d.save!

  # a = Appointment.new
  # a.title = Faker::Lorem.word
  # a.save!
end

