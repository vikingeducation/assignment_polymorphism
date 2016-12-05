# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying database."

Teacher.destroy_all
HighSchool.destroy_all
MiddleSchool.destroy_all
College.destroy_all

MULTIPLIER = 10

def populate_schools(class_name)
  name = Faker::GameOfThrones.house + " School"
  class_name.create(name: name) unless class_name.pluck(:name).include? name
end

puts "Creating Institutions"

MULTIPLIER.times do
  populate_schools(MiddleSchool)

  populate_schools(HighSchool)

  populate_schools(College)
end

puts "Creating Teachers"
institutions = [MiddleSchool, HighSchool, College]

institutions.each do |institute|
  institute.all.each do |place|
    MULTIPLIER.times do
      place.teachers << Teacher.create( name: Faker::GameOfThrones.character )
    end
  end
end
