class LunchOrder < ApplicationRecord
  has_many :dishes, :as => :dishable
end
