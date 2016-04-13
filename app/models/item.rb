class Item < ActiveRecord::Base
  belongs_to :vendor, :polymorphic => true
end
