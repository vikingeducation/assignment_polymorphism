# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Customer.destroy_all
Store.destroy_all
Phone.destroy_all

10.times do |i|
  Customer.create(name: "Customer#{i+1}")
end

5.times do  |i|
  Store.create(company: "Store#{i+1}")
end

30.times do  |i|
  p = Phone.create(number: rand(1000000..9999999).to_s)
  if i < 20
    p.callable_type = "Customer"
    p.callable_id = i/2+1
  else
    p.callable_type = "Store"
    p.callable_id = (i-20)/2+1
  end
  p.save
end