class Employee < ApplicationRecord
  belongs_to :employable, :polymorphic => true
end
