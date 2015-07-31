# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do
  Post.create({   title: Faker::Lorem.sentence,
                  body: Faker::Lorem.sentence })

  Image.create({  caption: Faker::Lorem.word,
                  url: Faker::Company.logo  })
  5.times do
    Comment.create({  comment_body: Faker::Lorem.sentence,
                      commentable_id: rand(1..30),
                      commentable_type: ["Post", "Image", "Comment"].sample })
  end
end

