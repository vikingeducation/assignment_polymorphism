class Apartment < ActiveRecord::Base

  has_many :residents, as: :residency, dependent: :destroy

end
