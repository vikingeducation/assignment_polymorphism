class Babysitter < ActiveRecord::Base

  belongs_to :things_being_babysat, :polymorphic => true


end
