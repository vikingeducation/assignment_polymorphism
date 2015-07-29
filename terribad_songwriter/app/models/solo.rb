class Solo < ActiveRecord::Base

  has_one :chorus, :as => :lead_in

end
