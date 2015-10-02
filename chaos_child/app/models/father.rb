class Father < ActiveRecord::Base
  
  has_many :children, :as => :parents
  
end
