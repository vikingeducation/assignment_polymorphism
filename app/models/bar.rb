class Bar < ApplicationRecord
  has_many :employees, :as => :employable, :dependent => :destroy
end
