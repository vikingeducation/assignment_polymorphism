class BreakfastOrder < ApplicationRecord
  has_many :dishes, :as => :dishable, dependent: :destroy
end
