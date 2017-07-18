class Address < ApplicationRecord

  belongs_to :stored_address, polymorphic: true

end


