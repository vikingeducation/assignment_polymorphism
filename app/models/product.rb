class Product < ApplicationRecord
	belongs_to :grouping, :polymorphic => true
end
