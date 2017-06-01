class Status < ApplicationRecord
  belongs_to :user
  has_many :likes, :as => :likable, :dependent => :nullify
end
