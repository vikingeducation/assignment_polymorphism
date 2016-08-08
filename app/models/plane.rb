class Plane < ApplicationRecord

  has_many :pilots, :as => :vehicle, dependent: :nullify
end
