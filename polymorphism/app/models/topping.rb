class Topping < ActiveRecord::Base
  belongs_to :toppable, :polymorphic => true
end
