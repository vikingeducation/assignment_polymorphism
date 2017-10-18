# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "delete old data"

Person.destroy_all
Company.destroy_all
Address.destroy_all


def generate_address(model)
  addr = Address.new(:street_address => Faker::Address.street_address,
                  :address_line_2 => Faker::Address.community,
                  :postcode => Faker::Address.zip_code,
                  :addressable => model)
  addr.save!
end

puts "creating addresses"

puts "creating people and address for each person"
20.times do
  p = Person.new(:forename => Faker::Name.first_name,
                 :surname => Faker::Name.last_name,
                 :email => Faker::Internet.email
    )
  p.save!
  generate_address("Person", p.id)
end

puts "creating companies and address for each person"
20.times do |i|
  c = Company.new(:company_name => "Company #{i}",
                  :owner_name => "#{Faker::Name.first_name} #{Faker::Name.last_name}",
                  :industry => Faker::Job.field
    )

  c.save!
  generate_address("Company", c.id)
end

# addr_types = ["Person", "Company"]

# addr_types.each do |addr_type|
#   addr_id = addr_type.constantize.all.sample.id

#   20.times do |a|
#     addr = Address.new(:street_address => Faker::Address.street_address,
#                     :address_line_2 => Faker::Address.community,
#                     :postcode => Faker::Address.zip_code,
#                     :addressable_id => addr_id,
#                     :addressable_type => addr_type
#     addr.save!
#   end
# end

