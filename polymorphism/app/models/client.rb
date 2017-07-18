class Client < ApplicationRecord

  has_many :addresses, as: :stored_address,
           dependent: :nullify

end
