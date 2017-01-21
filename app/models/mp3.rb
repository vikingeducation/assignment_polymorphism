class Mp3 < ApplicationRecord

  has_many :songs, :as => :medium

end
