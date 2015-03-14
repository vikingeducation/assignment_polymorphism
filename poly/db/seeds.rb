# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Hunter.destroy_all
ElkLicense.destroy_all
MooseLicense.destroy_all

SCHWAD = 10

SCHWAD.times do 
  ElkLicense.create(
    :region => Faker::Address.city
    )
  MooseLicense.create(
    :region => Faker::Address.city
    )
end

(SCHWAD * 6).times do
  Hunter.create(
    :name => Faker::Name.name,
    :town => Faker::Address.city
    )
end

(SCHWAD * 20).times do
  ElkLicense.all.sample.hunters << Hunter.all.sample
  MooseLicense.all.sample.hunters << Hunter.all.sample
end