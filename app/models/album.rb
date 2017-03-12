class Album < ApplicationRecord
  has_many :songings, as: :songable
  has_many :songs, through: :songings, dependent: :destroy
end
