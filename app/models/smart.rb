class Smart < ActiveRecord::Base
  has_many :votes, as: :votable, :dependent => :destroy
end
