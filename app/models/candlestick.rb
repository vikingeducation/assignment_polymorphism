class Candlestick < ActiveRecord::Base
  has_many :murderings, as: :weaponable
end
