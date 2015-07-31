class Babysitter < ActiveRecord::Base

  belongs_to :babysitterable, :polymorphic => true

  #in order to change babysitterable "name" need to change the column name/id in the data migration table
end
