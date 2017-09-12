# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# destroys all existing data
def destroy_all_data
  puts "Destroying all existing data.."
  CookingClass.destroy_all
  University.destroy_all
  Student.destroy_all
  puts "All existing data destroyed."
end

# creates CookingClass objects
def create_cooking_classes(num_classes = 10)
  puts "Creating #{num_classes} CookingClass records.."
  num_classes.times do
    cooking_class = CookingClass.new(location: Faker::Address.street_address, taught_by: Faker::Name.name)
    cooking_class.save!
  end
  puts "#{num_classes} CookingClass records created."
end

# creates University objects
def create_universities(num_unis = 10)
  puts "Creating #{num_unis} University records.."
  num_unis.times do
    university = University.new(name: Faker::University.name, country: Faker::Address.country)
    university.save!
  end
  puts "#{num_unis} University records created."
end

# creates Student objects
def create_students(num_students = 20)
  puts "Creating #{num_students} Student records.."
  num_students.times do
    student = Student.new(name: Faker::Name.name)

    # randomly enrol student in a University or CookingClass
    case rand(0..1)
    when 0
      CookingClass.all.sample.students << student
    when 1
      University.all.sample.students << student
    end

    student.save!
  end
  puts "#{num_students} Student records created."
end

puts "Starting DB seed.."
destroy_all_data
create_cooking_classes
create_universities
create_students
puts "DONE!"
