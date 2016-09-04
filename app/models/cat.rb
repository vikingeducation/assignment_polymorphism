class Cat < ApplicationRecord
  has_many :heads, as: :headable
end
