class Resident < ActiveRecord::Base

  belongs_to :residency, polymorphic: true

end
