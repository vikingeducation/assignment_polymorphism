class Product < ApplicationRecord

  has_many :reviews, as: :reviewable, dependent: :nullify

end
