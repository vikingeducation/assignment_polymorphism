class Song < ApplicationRecord

  belongs_to :medium, :polymorphic => true

end
