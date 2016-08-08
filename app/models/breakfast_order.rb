class BreakfastOrder < ApplicationRecord
  has_many :dishes, :as => :dishable
end
