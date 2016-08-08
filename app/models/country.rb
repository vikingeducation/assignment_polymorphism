class Country < ApplicationRecord
  has_many :athletes, as: :athletable
end
