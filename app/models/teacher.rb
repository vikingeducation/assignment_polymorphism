class Teacher < ApplicationRecord
  belongs_to :institution, polymorphic: true
end
