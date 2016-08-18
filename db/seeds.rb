# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chair.destroy_all
Plastic.destroy_all
Wood.destroy_all
puts "kill all"
3.times do
  Wood.new(:name => Faker::GameOfThrones.house).save
  Plastic.new(:name => Faker::Color.color_name).save
end
puts "finish materials"
5.times do
  material = Wood.all.sample
  Chair.new(:name => Faker::Music.instrument, material_id: material.id, material_type: "Wood").save
end
puts "made wooden chairs"

5.times do
  material = Plastic.all.sample
  Chair.new(:name => Faker::Music.instrument, material_id: material.id, material_type: "Plastic").save
end
puts "made plastic chairs"
