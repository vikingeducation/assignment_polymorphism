class CookingClass < ApplicationRecord
  has_many :students, as: :enrollable, dependent: :destroy
end
