# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# create authors
10.times do
  Author.create(name: Faker::Name.name)
end

AUTHORS = Author.all.sample(5)

# create articles
def create_articles
  AUTHORS.each do |author|
    Article.create(title: Faker::Book.title, body: Faker::Hipster.paragraph, author_id: author.id)
  end
end 

# create comments on the articles
def create_comments
  Author.all.each do |author|
    2.times do
      Comment.create(body: Faker::Hipster.sentence(2), author_id: author.id, article_id: Article.pluck(:id).sample)
    end
  end
end

# create tags on articles AND comments
def create_article_tags
  5.times do
    Tag.create(tag_text: Faker::Hipster.word, author_id: Author.pluck(:id).sample, taggable_type: "Article", taggable_id: Article.pluck(:id).sample)
  end
end

def create_comment_tags
  5.times do
    Tag.create(tag_text: Faker::Hipster.word, author_id: Author.pluck(:id).sample, taggable_type: "Comment", taggable_id: Comment.pluck(:id).sample)
  end
end

puts "creating articles..."
create_articles
puts "creating comments..."
create_comments
puts "creating article_tags..."
create_article_tags
puts "creating comment_tags..."
create_comment_tags