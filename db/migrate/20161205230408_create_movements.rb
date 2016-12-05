class CreateMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :movements do |t|
      t.string :name
      t.integer :moveable_id
      t.string :moveable_type

      t.timestamps
    end
    add_index :movements, [:moveable_id, :moveable_type]
  end
end
