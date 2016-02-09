class Newspaper < ActiveRecord::Base
  has_many    :articles,    as: :articleable, dependent:   :destroy 
end
