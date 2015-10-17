class Airline < ActiveRecord::Base
  has_many :ratings,  :as => :ratable,
                      :dependent => :destroy

  validates :name,
            :presence => true

  def rating
    Rating.avg_for(self)
  end
end
