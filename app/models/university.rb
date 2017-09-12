class University < ApplicationRecord
  has_many :students, as: :enrollable
end
