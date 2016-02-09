class Murdering < ActiveRecord::Base
  belongs_to :murderer, class_name: "Person"
  belongs_to :victim, class_name: "Person"
end
