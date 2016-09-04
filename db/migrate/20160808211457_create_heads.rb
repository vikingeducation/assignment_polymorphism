class CreateHeads < ActiveRecord::Migration[5.0]
  def change
    create_table :heads do |t|
      t.integer :diameter
      t.integer :headable_id
      t.string :headable_type
      t.timestamps
    end
    add_index :heads, [:headable_type, :headable_id]
  end
end
