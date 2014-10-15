class Pizza < ActiveRecord::Base
  has_many :toppings, :as => :toppable
end
