
puts "Destroying old records"


Author.destroy_all
Article.destroy_all
Photo.destroy_all
Comment.destroy_all

puts "Old records destroyed"

n = 0
10.times do 
  Author.create(:name => "author_#{n}")
  n += 1
end

40.times do 
  Article.create(:name => "author_#{n}")
  n += 1
end

10.times do 
  n = 0
  Author.create(:name => "author_#{n}")
  n += 1
end

10.times do 
  n = 0
  Author.create(:name => "author_#{n}")
  n += 1
end









puts "DONE!"
