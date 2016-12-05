class Cat < ApplicationRecord

  has_many :collars, as: :collarable, 
                     dependent: :destroy

end
