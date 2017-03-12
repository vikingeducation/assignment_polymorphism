class Song < ApplicationRecord
  has_many :songings
  has_many :singles, through: :songings, source: :songable, source_type: 'Single'
  has_many :albums, through: :songings, source: :songable, source_type: 'Album'
end
