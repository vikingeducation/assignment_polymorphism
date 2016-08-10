class Dish < ApplicationRecord
  belongs_to :dishable, :polymorphic => true
end
