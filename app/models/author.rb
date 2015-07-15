class Author < ActiveRecord::Base
	belongs_to :authored, :polymorphic => true
end
