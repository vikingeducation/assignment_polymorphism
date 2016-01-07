class Buzz < ActiveRecord::Base
  has_many :votes, as: :votable, :dependent => :nullify
end
