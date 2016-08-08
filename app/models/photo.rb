class Photo < ActiveRecord::Base
  has_many :tags, :as => :taggable
end
