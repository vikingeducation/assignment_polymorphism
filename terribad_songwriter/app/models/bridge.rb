class Bridge < ActiveRecord::Base

  has_one :chorus, :as => :lead_in, :dependent => :nullify

end
