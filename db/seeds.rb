Post.destroy_all
Photo.destroy_all
Comment.destroy_all

10.times { Post.create(title: Faker::Lorem.word, body: Faker::Lorem.paragraph) }
10.times { Photo.create(url: Faker::Company.logo) }

comment_ids = Comment.pluck(:id).shuffle

puts "Adding comments to posts"
Post.all.each do |p|
  2.times do
    p.comments << Comment.create(body: Faker::Lorem.sentence, commentable_type: p.class.to_s, commentable_id: p.id)
  end
end

puts "Adding comments to photos"
Photo.all.each do |p|
  2.times do
    p.comments << Comment.create(body: Faker::Lorem.sentence, commentable_type: p.class.to_s, commentable_id: p.id)
  end
end