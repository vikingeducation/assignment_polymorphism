class User < ApplicationRecord
  has_many :pages
  has_many :statuses
  has_many :likes
end
