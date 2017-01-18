class Library < ApplicationRecord
  has_many :books, :as => :source, dependent: :nullify
end
