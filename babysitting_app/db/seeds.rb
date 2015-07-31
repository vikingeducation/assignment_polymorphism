# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


needs_babysitting = []
10.times do

  needs_babysitting << Adult.create(name: Faker::Name.name)
  needs_babysitting << Baby.create(name: Faker::Name.name)
  needs_babysitting << Dog.create(name: Faker::Name.first_name)

end

20.times do
  babysat = needs_babysitting.sample
  Babysitter.create( name: Faker::Name.name,
                babysitterable_id: babysat.id,
                babysitterable_type: babysat.class)

end


