class Record < ApplicationRecord

  has_many :songs, :as => :medium,
                   :dependent => :destroy

end
