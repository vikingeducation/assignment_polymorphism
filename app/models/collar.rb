class Collar < ApplicationRecord

  belongs_to :collarable, :polymorphic => true

end
