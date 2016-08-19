class Sport < ApplicationRecord
  has_many :athletes, as: :athletable
end
