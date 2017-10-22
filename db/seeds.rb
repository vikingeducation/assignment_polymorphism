
puts "Destroying old records"


Author.destroy_all
Article.destroy_all
Photo.destroy_all
Comment.destroy_all

puts "Old records destroyed"

n = 0

puts "Creating authors"
10.times do 
  Author.create(:name => "author_#{n}",
                :age => 25 + n)
  n += 1
end

puts "Creating articles"
40.times do 
  Article.create(:author_id => Author.pluck(:id).sample,
                :title => "Here is my article no #{n}",
                :body => "Body no #{n*10} "*20)
  n += 1
end



puts "Creating photos"
25.times do 
  Photo.create(:author_id => Author.pluck(:id).sample,
                :title => "Our amazing photo from the beach no #{n}")
  n += 1
end


TYPES = ["Photo", "Comment", "Article"]

def take_rel_id(type)
  case type
  when "Photo"
    Photo.pluck(:id).sample
  when "Comment"
    rand(1..5)
  when "Article"
    Article.pluck(:id).sample
  end
end

puts "Creating comments"
70.times do 
  type = TYPES.sample
  Comment.create(:author_name => "heyjustin_#{n}",
                  :body => "I don't know what to think about this honestly. I can only say that my favorite number is #{n}",
                  :commentable_type => type,
                  :commentable_id => take_rel_id(type))
  n += 1
end









puts "DONE!"
