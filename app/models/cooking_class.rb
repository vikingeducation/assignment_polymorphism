class CookingClass < ApplicationRecord
  has_many :students, as: :enrollable
end
