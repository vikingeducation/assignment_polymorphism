class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.integer :appointmentable_id
      t.string :appointmentable_type
      
      t.timestamps
    end
  end
end
