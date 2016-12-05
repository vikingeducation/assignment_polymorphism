class Car < ApplicationRecord
  has_one :engine, as: :drivable, dependent: :destroy
end
