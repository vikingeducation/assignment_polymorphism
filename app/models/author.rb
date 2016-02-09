class Author < ActiveRecord::Base

  has_many :articles
  has_many :comments
  has_many :tagged_articles, through: :articles,
            source: :tags

  has_many :tagged_comments, through: :comments,
            source: :tags
end
