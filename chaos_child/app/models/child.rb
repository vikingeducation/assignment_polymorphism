class Child < ActiveRecord::Base
  
  belongs_to :parents, :polymorphic => true
  
end
