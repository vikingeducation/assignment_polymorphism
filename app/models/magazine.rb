class Magazine < ActiveRecord::Base
  has_many    :articles,    as: :articleable, dependent:   :nullify 
end
