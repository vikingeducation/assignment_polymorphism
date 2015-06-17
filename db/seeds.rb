Video.destroy_all
Image.destroy_all
Tag.destroy_all

20.times do
  v = Video.new
  v.title = Faker::Hacker.adjective + ' ' + Faker::Hacker.noun
  v.description = Faker::Hacker.say_something_smart
  v.save!
end

20.times do
  i = Image.new
  i.caption = Faker::Lorem.sentence
  i.save!
end

100.times do
  type = ['Image', 'Video'].sample

  t = Tag.new
  t.name = Faker::Lorem.word
  t.taggable_id = type.constantize.pluck(:id).sample
  t.taggable_type = type
  t.save!
end
