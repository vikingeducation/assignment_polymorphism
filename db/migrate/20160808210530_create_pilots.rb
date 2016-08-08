class CreatePilots < ActiveRecord::Migration[5.0]
  def change
    create_table :pilots do |t|
      t.string :name
      t.integer :vehicle_id
      t.string :vehicle_type
      t.timestamps


    end
    add_index :pilots, [:vehicle_type, :vehicle_id]
  end
end
