class Chorus < ActiveRecord::Base

  belongs_to :lead_in, :polymorphic => true

end
