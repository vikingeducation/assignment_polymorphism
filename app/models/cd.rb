class Cd < ApplicationRecord

  has_many :songs, :as => :medium,
                   :dependent => :nullify

end
