class Book < ApplicationRecord
  belongs_to :source, polymorphic: true
end
