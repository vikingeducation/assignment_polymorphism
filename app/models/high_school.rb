class HighSchool < ApplicationRecord
  has_many :teachers, as: :institution, dependent: :nullify
end
