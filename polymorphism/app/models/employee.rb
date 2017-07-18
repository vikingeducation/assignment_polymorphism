class Employee < ApplicationRecord

  has_many :addresses, as: :stored_address

end
