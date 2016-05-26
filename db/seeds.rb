# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do |n|
  u = User.new
  u.name = "#{['john', 'andy', 'Ary'].sample} #{n}"
  u.save

  ph = Photo.new
  ph.photo_link = "www.example.com"
  ph.description = "#{['amazing', 'awesome', 'wonderful', 'beautiful'].sample} #{u.name} !"
  ph.photoable_id = u.id
  ph.photoable_type = u.class.to_s
  ph.save
end

10.times do |n|
  p = Product.new
  p.title = "#{['computer', 'cup', 'table'].sample} #{n}"
  p.price = rand(20..100)
  p.description = "#{['amazing', 'awesome', 'wonderful', 'beautiful'].sample} #{p.title} !"
  p.save

  ph = Photo.new
  ph.photo_link = "www.example.com"
  ph.description = "#{['amazing', 'awesome', 'wonderful', 'beautiful'].sample} #{p.title} !"
  ph.photoable_id = p.id
  ph.photoable_type = p.class.to_s
  ph.save
end