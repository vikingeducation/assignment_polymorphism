class House < ActiveRecord::Base

  has_many :residents, as: :residency, dependent: :nullify

end
