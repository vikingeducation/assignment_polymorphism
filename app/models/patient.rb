class Patient < ApplicationRecord
  has_many :appointments, as: :appointmentable, dependent: :nullify
end
