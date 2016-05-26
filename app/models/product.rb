class Product < ActiveRecord::Base
  has_many :photos, :as => :photoable,
                    :dependent => :nullify

end
