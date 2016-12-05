class HighSchool < ApplicationRecord
  has_many :teachers, as: :institution
end
