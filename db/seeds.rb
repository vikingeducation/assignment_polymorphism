# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Photo.destroy_all
Post.destroy_all
Like.destroy_all

50.times do 
  Photo.create(name: Faker::Name.name)
end


50.times do 
  Post.create(body: Faker::Lorem.paragraph)
end


def get_parent
  resource = [Post, Photo].sample
  parent = resource.all.sample
  parent
end


150.times do 
  parent = get_parent
  Like.create(likeable_type: parent.class.name, likeable_id: parent.id)
end