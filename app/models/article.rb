class Article < ApplicationRecord

  belongs_to :authors
  has_many :comments, :as => :commentable

end
