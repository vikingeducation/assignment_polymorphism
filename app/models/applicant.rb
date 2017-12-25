class Applicant < ApplicationRecord

  has_many :tags, as: :taggable, dependent: :nullify

end
