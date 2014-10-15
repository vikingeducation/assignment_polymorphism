class Sandwich < ActiveRecord::Base
  has_many :toppings, :as => :toppable
end
