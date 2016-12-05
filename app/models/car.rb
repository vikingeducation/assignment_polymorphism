class Car < ApplicationRecord
  has_many :engines, as: :drivable, dependent: :destroy
end
