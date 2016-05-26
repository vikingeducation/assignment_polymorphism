class User < ActiveRecord::Base
  has_many :photos, :as => :photoable,
                    :dependent => :destroy
end
