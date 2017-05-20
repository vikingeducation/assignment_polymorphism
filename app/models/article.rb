class Article < ApplicationRecord

  belongs_to :author
  has_many :comments, :as => :commentable, :dependent => :nullify

end
