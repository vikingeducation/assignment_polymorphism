class Human < ApplicationRecord
  has_many :heads, as: :headable
end
