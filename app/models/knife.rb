class Knife < ActiveRecord::Base

  has_many :murderings, as: :weaponable
end
