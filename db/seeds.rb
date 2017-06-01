# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# reset db
User.delete_all
Like.delete_all
Page.delete_all
Status.delete_all

# create users
10.times do
  User.create(:username => Faker::Internet.user_name)
end

# create pages
10.times do
  Page.create(
    :title => Faker::Lorem.sentence,
    :body => Faker::Lorem.paragraph,
    :user_id => User.pluck(:id).sample
  )
end

# create statuses
20.times do
  Status.create(
    :user_id => User.pluck(:id).sample,
    :body => Faker::Lorem.sentence
  )
end

# create likes
40.times do
  obj = [Page, Status].sample
  Like.create!(
    :user_id => User.pluck(:id).sample,
    :likable_id => obj.pluck(:id).sample,
    :likable_type => obj.to_s
  )
end
