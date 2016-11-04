class CoffeeShop < ApplicationRecord
  has_many :employees, :as => :employable, :dependent => :nullify
end
