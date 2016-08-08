class Garden < ApplicationRecord
  has_many :plants, :as => :plantable, dependent: :nullify
end
