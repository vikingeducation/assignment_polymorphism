class Magazine < ActiveRecord::Base
  has_many    :articles,    as: :parent
end
