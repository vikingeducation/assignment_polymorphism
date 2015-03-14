class CreateHunters < ActiveRecord::Migration
  def change
    create_table :hunters do |t|
      t.string :name
      t.string :town
      t.integer :hunting_id
      t.string :hunting_type

      t.timestamps null: false
    end
    add_index :hunters, [:hunting_type, :hunting_id]
  end
end
