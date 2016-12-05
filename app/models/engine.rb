class Engine < ApplicationRecord
  belongs_to :drivable, polymorphic: true
end
