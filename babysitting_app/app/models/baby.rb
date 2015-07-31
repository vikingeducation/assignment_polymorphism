class Baby < ActiveRecord::Base

  has_many :babysat_by, as: :babysitterable, class_name: "Babysitter"

end
