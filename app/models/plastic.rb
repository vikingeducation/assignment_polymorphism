class Plastic < ApplicationRecord
  has_many :chairs, :as => :material, :dependent => :nullify
end
