class Cone < ActiveRecord::Base

  has_many :ice_cream_scoops, :as => :container,
                              :dependent => :destroy
end
