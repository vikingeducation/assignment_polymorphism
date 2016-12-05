class College < ApplicationRecord
  has_many :teachers, as: :institution
end
