class Driver < ActiveRecord::Base

  has_many :reviews, as: :reviewable, dependent: :destroy

end
