class Photo < ActiveRecord::Base
  has_many :likes, :as => :likeable
end
