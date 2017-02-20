class Order < ApplicationRecord
	has_many :products, :as => :grouping, :dependent => :nullify
end
