class Job < ApplicationRecord

  has_many :tags, as: :taggable, dependent: :destroy

end
