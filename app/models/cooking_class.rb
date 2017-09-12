class CookingClass < ApplicationRecord
  has_many :aspiring_cooks, as: :enrollable
end
