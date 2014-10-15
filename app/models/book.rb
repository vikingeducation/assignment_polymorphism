class Book < ActiveRecord::Base
  has_many :reviews, :as => :reviewable, :dependent => :nullify
end
