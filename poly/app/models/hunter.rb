class Hunter < ActiveRecord::Base
  belongs_to :hunting, :polymorphic => true
end
