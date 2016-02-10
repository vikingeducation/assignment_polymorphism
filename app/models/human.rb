class Human < ActiveRecord::Base
  belongs_to :humanable, polymorphic: true
end
