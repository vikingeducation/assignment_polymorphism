class Cat < ActiveRecord::Base
  has_many :humans, as: :humanable
end
