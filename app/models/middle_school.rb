class MiddleSchool < ApplicationRecord
  has_many :teachers, as: :institution
end
