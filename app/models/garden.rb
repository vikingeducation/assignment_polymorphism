class Garden < ApplicationRecord
  has_many :plants, :as => :plantable
end
