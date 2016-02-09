class Gun < ActiveRecord::Base
  has_many :murderings, as: :weaponable
end
