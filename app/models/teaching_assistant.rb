class TeachingAssistant < ApplicationRecord
  belongs_to :teach_duty, polymorphic: true
end
