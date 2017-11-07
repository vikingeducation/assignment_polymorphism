class Lab < ApplicationRecord
  has_many :teaching_assistants, as: :teach_duty, dependent: :destroy
end
