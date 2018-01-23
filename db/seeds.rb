# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy All Data

Seller.destroy_all
Product.destroy_all
Review.destroy_all

puts "All Data Destroyed"

# Seeds New Data
# multiplier
MULTIPLIER = 50

# Create Products

def create_products
  MULTIPLIER.times do |x|
    name = Faker::Commerce.product_name
    description = Faker::Lorem.sentence
    Product.create(name: name, description: description)
  end
  puts "Products Created"
end

# Create Sellers
def create_sellers
  MULTIPLIER.times do |x|
    name = Faker::RickAndMorty.character
    email = Faker::Internet.email
    Seller.create(name: name, email: email)
  end
  puts "Sellers Created"
end

# Create Reviews
def create_review(object)
  author = Faker::Simpsons.character
  rating = rand(1..10)
  body = Faker::Simpsons.quote
  Review.create(author: author, rating: rating, body: body, reviewable_type: object.class, reviewable_id: object.id)
end

# Seed Data

create_products
create_sellers
10.times do |x|
  product = Product.offset(rand(Product.count)).first
  create_review(product)
  seller = Seller.offset(rand(Seller.count)).first
  create_review(seller)
end
puts "Reviews Created"

puts "Database Seeded"
