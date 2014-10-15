# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movie_titles = ["Casablanca", "The Apartment", "All About Eve", "Rain Man", "2001: A Space Odyssey", "Ben Hur", "One Flew Over the Cuckoo's Nest", "The Deer Hunter", "Amadeus", "American Beauty"]

movie_titles.each do |title|
  Movie.new({title: title}).save
end

book_titles = ["The Cather in the Rye", "The Great Gatsby", "The Old Man and the Sea", "To Kill a Mockingbird", "Great Expectations", "In Cold Blood", "The Wealth of Nations", "Il Principe", "Das Kapital", "De Bello Gallico"]

book_titles.each do |title|
  Book.new({title: title}).save
end

100.times do
  type = ["Book", "Movie"].sample
  Review.new({reviewable_type: type, reviewable_id: type.constantize.pluck(:id).sample, rating: rand(6)}).save
end