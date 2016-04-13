class Restaurant < ActiveRecord::Base
  has_many :items, :as => :vendor
end
