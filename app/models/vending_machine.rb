class VendingMachine < ActiveRecord::Base
  has_many :items, :as => :vendor,
                   :dependent => :destroy
end
