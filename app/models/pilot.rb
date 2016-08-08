class Pilot < ApplicationRecord
  belongs_to :vehicle, :polymorphic => true
end
