# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MULTIPLIER = 2
PLATFORMS = ['PC', 'Xbox One', 'WiiU', 'PS4']

puts 'Deleting old records'
Review.destroy_all
Movie.destroy_all
Game.destroy_all

def create_movie
  m = Movie.new
  m[:title] = Faker::Book.title
  m[:genre] = Faker::Book.genre
  m[:length] = (60..180).to_a.sample
  m.save!
end

def create_game
  g = Game.new
  g[:title] = Faker::Book.title
  g[:genre] = Faker::Book.genre
  g[:platform] = PLATFORMS.sample
  g.save!
end

def get_type(parent)
  return 'game' if parent.is_a?(Game)
  return 'movie' if parent.is_a?(Movie)
end

def create_review(parent)
  r = Review.new
  r[:title] = Faker::Hipster.sentence
  r[:body] = Faker::Hipster.paragraph
  r[:reviewable_id] = parent.id
  r[:reviewable_type] = get_type(parent)
  r.save!
  parent.reviews << r
  parent.save!
end

puts 'Creating games'

(10 * MULTIPLIER).times do
  create_game
end

puts 'Creating movies'

(10 * MULTIPLIER).times do
  create_movie
end

puts 'Adding game reviews'

Game.all.each do |game|
  (MULTIPLIER).times do
    create_review(game)
  end
end

puts 'Adding movie reviews'

Movie.all.each do |movie|
  (MULTIPLIER).times do
    create_review(movie)
  end
end

puts 'Done!'