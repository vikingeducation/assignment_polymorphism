class Cup < ActiveRecord::Base

  has_many :ice_cream_scoops, :as => :container
end
