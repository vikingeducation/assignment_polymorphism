puts "Destroying everything..."
Book.destroy_all
Library.destroy_all
Bookstore.destroy_all
puts "DONE"

MULTIPLIER = 10

puts "Creating libraries..."
MULTIPLIER.times do 
  Library.create(name: Faker::Address.city + ' Library')
end
puts "DONE"

puts "Creating bookstores..."
MULTIPLIER.times do 
  Bookstore.create(name: Faker::Company.name)
end
puts "DONE"

puts "Creating books..."
Bookstore.all.each do |store|
  store.books << Book.create(title: Faker::Book.title)
end
Library.all.each do |library|
  library.books << Book.create(title: Faker::Book.title)
end
puts "DONE"