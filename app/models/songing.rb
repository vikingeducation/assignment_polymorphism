class Songing < ApplicationRecord
  belongs_to :song
  belongs_to :songable, polymorphic: true
end
