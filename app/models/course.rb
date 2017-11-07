class Course < ApplicationRecord
  has_many :teaching_assistants, as: :teach_duty, dependent: :nullify
end
