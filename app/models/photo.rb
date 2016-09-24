class Photo < ApplicationRecord
  has_many :comments, :as => :commentable, :dependent => :nullify
end
