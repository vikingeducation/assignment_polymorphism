# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Songing.destroy_all
Album.destroy_all
Single.destroy_all
Song.destroy_all

50.times do
  Song.create!(title: Faker::Book.title, year: rand(1960..2016))
end

10.times do
  Album.create!(title: Faker::Book.title, year: rand(1960..2016))
  Single.create!(title: Faker::Book.title, year: rand(1970..2016))
end


70.times do
  model = [Album, Single].sample

  the_one = model.find(model.pluck(:id).sample)
  record = Songing.create(song_id: Song.all.sample.id, songable_id: the_one.id, songable_type: the_one.class.name )
end
