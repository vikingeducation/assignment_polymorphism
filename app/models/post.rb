class Post < ActiveRecord::Base
  has_many :likes, :as => :likeable, :dependent => :destroy
end
