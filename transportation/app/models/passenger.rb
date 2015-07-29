class Passenger < ActiveRecord::Base

  belongs_to :vessel, :polymorphic => true

end
