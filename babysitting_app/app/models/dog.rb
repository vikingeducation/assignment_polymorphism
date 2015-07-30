class Dog < ActiveRecord::Base
  #has_many :babysitters, as: :babysitterable
  has_many :babysat_by, as: :babysitterable, class_name: "Babysitter", dependent: :destroy
end
