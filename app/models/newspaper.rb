class Newspaper < ActiveRecord::Base
  has_many    :articles,    as: :parent
end
