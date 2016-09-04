# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Reseting database'
Rake::Task['db:migrate:reset'].invoke

puts "starting cats"
cat = Cat.new(name: "red")
head = Head.new(diameter: 10, headable_id: cat.id, headable_type: cat.class.to_s)
cat.heads << head
cat.save!
head.save!
5.times do |i|
  cat.heads.create(diameter: rand(100))
end
puts "done with cats"

puts "starting humEn"
human = Human.new(name: "blue")
human.save!
3.times do |i|
  human.heads.create(diameter: rand(45))
end
puts "donezo with humEn"
