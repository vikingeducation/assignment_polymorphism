class Fish < ApplicationRecord
  has_one :movement, as: :moveable, dependent: :destroy  
end
