class University < ApplicationRecord
  has_many :undergraduates, as: :enrollable
end
