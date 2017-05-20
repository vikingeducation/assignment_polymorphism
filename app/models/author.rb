class Author < ApplicationRecord

  has_many :articles
  has_many :photos

end
