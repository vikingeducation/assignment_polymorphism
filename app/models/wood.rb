class Wood < ApplicationRecord
  has_many :chairs, :as => :material
end
