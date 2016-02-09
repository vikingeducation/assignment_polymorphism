class Article < ActiveRecord::Base
  belongs_to    :articleable, polymorphic: true
end
