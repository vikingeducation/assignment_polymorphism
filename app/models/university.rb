class University < ApplicationRecord
  has_many :students, as: :enrollable, dependent: :nullify
end
