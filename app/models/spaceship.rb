class Spaceship < ApplicationRecord
  has_many :pilots, :as => :vehicle, dependent: :destroy
end
