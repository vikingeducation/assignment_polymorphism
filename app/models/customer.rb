class Customer < ActiveRecord::Base
  has_many :phones, :as => :callable,
                    :dependent => :destroy
end
