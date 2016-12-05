class Movement < ApplicationRecord
  belongs_to :moveable, :polymorphic => true, :optional => true
end
