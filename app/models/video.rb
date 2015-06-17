class Video < ActiveRecord::Base
  has_many :tags, as: :taggable, dependent: :nullify
end
