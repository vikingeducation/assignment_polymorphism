class Student < ApplicationRecord
  belongs_to :enrollable, polymorphic: true
end
