class Verse < ActiveRecord::Base

  has_one :chorus, :as => :lead_in, :dependent => :destroy

end
