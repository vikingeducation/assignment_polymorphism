class DinnerOrder < ApplicationRecord
  has_many :dishes, :as => :dishable
end
