class Cat < ApplicationRecord
  has_one :heads, as: :headable
end
