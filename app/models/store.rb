class Store < ActiveRecord::Base
  has_many :phones, :as => :callable,
                    :dependent => :nullify
end
