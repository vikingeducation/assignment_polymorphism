class Person < ApplicationRecord
  has_many :addresses, :as => :addressable, :dependent => :nullify
end
