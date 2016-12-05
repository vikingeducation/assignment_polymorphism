class Dog < ApplicationRecord

  has_many :collars, as: :collarable, 
                     dependent: :nullify

end
