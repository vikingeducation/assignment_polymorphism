class Doctor < ApplicationRecord
  has_many :appointments, as: :appointmentable, dependent: :destroy
end
