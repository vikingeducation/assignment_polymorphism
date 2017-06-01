class Page < ApplicationRecord
  belongs_to :user
  has_many :likes, :as => :likable, :dependent => :destroy
end
