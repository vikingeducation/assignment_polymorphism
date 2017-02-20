class Category < ApplicationRecord
	has_many :products, :as => :grouping, :dependent => :destroy
end
