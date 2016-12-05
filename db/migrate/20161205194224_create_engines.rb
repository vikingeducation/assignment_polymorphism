class CreateEngines < ActiveRecord::Migration[5.0]
  def change
    create_table :engines do |t|
      t.string :name
      t.integer :drivable_id
      t.string :drivable_type

      t.timestamps
    end

    add_index :engines, [:drivable_id, :drivable_type]
  end
end
