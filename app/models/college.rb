class College < ApplicationRecord
  has_many :teachers, as: :institution, dependent: :nullify
end
