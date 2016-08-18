class Chair < ApplicationRecord
  belongs_to :material, :polymorphic => true
end
