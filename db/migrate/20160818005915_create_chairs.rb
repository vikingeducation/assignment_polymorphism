class CreateChairs < ActiveRecord::Migration[5.0]
  def change
    create_table :chairs do |t|
      t.string :name
      t.integer :material_id
      t.string :material_type

      t.timestamps
    end
    add_index :chairs, [:material_type, :material_id]
  end
end
