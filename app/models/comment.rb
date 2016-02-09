class Comment < ActiveRecord::Base

  belongs_to :author
  has_many :tags, as: :taggable, dependent: :nullify
  
end
