class Athlete < ApplicationRecord
  belongs_to :athletable, polymorphic: true
end
