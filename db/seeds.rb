# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# You'll see little puts statements in the file to give you status updates as the file runs.
puts "Destroying old records"

# Blow away all the existing records every time.

Article.destroy_all
Magazine.destroy_all
Newspaper.destroy_all


puts "Old records destroyed"

puts "Creating Seed..."

Newspaper.create(name: "New York Times")
Newspaper.create(name: "tribune")
Newspaper.create(name: "world-heard")
Newspaper.create(name: "news")
Newspaper.create(name: "mercury")
Newspaper.create(name: "telegram")


Magazine.create(name: "new republic")
Magazine.create(name: "maxim")
Magazine.create(name: "ladies home journal")
Magazine.create(name: "readers digest")
Magazine.create(name: "national review")
Magazine.create(name: "new republic")

Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 4, articleable_type: "Newspaper" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 2, articleable_type: "Newspaper" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 2, articleable_type: "Newspaper" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 1, articleable_type: "Newspaper" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 5, articleable_type: "Newspaper" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 6, articleable_type: "Magazine" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 2, articleable_type: "Magazine" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 3, articleable_type: "Magazine" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 4, articleable_type: "Magazine" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 5, articleable_type: "Magazine" )
Article.create(title: Faker::Lorem.words(3), body: Faker::Lorem.paragraph(2), articleable_id: 6, articleable_type: "Magazine" )



puts "Created Seed..."