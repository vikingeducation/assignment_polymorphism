# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


MULTIPLIER = 2

types = %w[Picture Link Post]

MULTIPLIER.times do 
  Post.create(:title => Faker::Lorem.sentence.titleize, :body => Faker::Lorem.paragraph(10), :author_id => rand(1..4))
  Picture.create(:alt_text => Faker::Lorem.word)
  Link.create(:url => Faker::Internet.domain_name)
end

30.times do
  Like.create(:user_id => rand(1..5), :likeable_id => rand(1..MULTIPLIER), :likeable_type => types.sample)
end