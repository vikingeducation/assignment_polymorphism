class Intro < ActiveRecord::Base

  has_one :chorus, :as => :lead_in

end
