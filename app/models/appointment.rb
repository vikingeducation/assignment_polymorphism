class Appointment < ApplicationRecord
  belongs_to :appointmentable, polymorphic: true
end
