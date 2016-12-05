class Motorcycle < ApplicationRecord
  has_one :engine, as: :drivable, dependent: :nullify
end
