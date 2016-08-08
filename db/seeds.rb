# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Photo.destroy_all
Location.destroy_all
Tag.destroy_all

SEEDS = 10

# seed Posts
SEEDS.times do 
  post = Post.create(:body => Faker::Lorem.paragraph(1))
  (SEEDS/2).times do 
    post.tags.create(:name => Faker::Name.name)
  end
end

# seed photos
SEEDS.times do 
  photo = Photo.create(:caption => Faker::Lorem.sentence(1), :source => Faker::Internet.url)
  (SEEDS/2).times do 
    photo.tags.create(:name => Faker::Name.name)
  end
end

# seed photos
SEEDS.times do 
  location = Location.create(:name => Faker::Address.city)
  tags = []
  (SEEDS/2).times do 
    location.tags.create(:name => Faker::Name.name)
  end
end





