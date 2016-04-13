class CreateVendingMachines < ActiveRecord::Migration
  def change
    create_table :vending_machines do |t|
      t.string :latitude, :null => false
      t.string :longitude, :null => false

      t.timestamps null: false
    end
  end
end
