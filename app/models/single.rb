class Single < ApplicationRecord
  has_many :songings, as: :songable
  has_many :songs, through: :songings, dependent: :nullify
  accepts_nested_attributes_for :songs

end
