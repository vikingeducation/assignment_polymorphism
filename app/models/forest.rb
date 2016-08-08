class Forest < ApplicationRecord
  has_many :plants, :as => :plantable
end
