class Plant < ApplicationRecord
  belongs_to :plantable, :polymorphic => true
end
