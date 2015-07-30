class Adult < ActiveRecord::Base

  has_many :babysat_by, as: :babysitterable, class_name: "Babysitter", dependent: :nullify
end
