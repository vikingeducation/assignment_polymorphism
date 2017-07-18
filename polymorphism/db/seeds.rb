# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Destory old records
puts "Destroying old records..."
Address.destroy_all
Client.destroy_all
Employee.destroy_all
Vendor.destroy_all
puts "Old records destroyed.\n\n"

def generate_address(stored_address_type, stored_address_id)
  Address.create(street_address: Faker::Address.street_address,
                 city: Faker::Address.city,
                 state_abbr: Faker::Address.state_abbr,
                 zip: Faker::Address.zip,
                 stored_address_type: stored_address_type,
                 stored_address_id: stored_address_id)
end

#Create Clients
puts "Creating 10 clients..."
10.times do |i|  
  client = Client.create(name: Faker::Company.name)
  generate_address("Client", client.id)
end
puts "10 clients created."

#Create Employees
puts "Creating 10 employees..."
10.times do |i|
  employee = Employee.create(name: Faker::Name.name)
  generate_address("Employee", employee.id)
end
puts "10 employees created."

#Create vendors
puts "Creating 10 vendors..."
10.times do |i|
  vendor = Vendor.create(name: Faker::Company.name)
  generate_address("Vendor", vendor.id)
end
puts "10 vendors created."

puts "Record creation complete."
