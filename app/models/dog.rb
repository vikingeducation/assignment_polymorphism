class Dog < ActiveRecord::Base
  has_many :humans, as: :humanable
end
