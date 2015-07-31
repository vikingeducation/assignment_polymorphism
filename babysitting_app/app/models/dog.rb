class Dog < ActiveRecord::Base
  #has_many :babysitters, as: :babysitterable
  ##original above, renamed to something more semantic below
  has_many :babysat_by, as: :babysitterable, class_name: "Babysitter", dependent: :destroy
end
