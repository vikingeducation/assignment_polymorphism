class Train < ActiveRecord::Base

  has_many :passengers, as: :vessel

end
