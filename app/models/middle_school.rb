class MiddleSchool < ApplicationRecord
  has_many :teachers, as: :institution, dependent: :nullify
end
