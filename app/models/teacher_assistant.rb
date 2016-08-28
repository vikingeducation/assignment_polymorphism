class TeacherAssistant < ApplicationRecord
  belongs_to :assistable, :polymorphic => true

  validates :name, uniqueness: true, presence: true
end
