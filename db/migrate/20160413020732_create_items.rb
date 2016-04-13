class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.string :vendor_type, :null => false
      t.integer :vendor_id, :null => false

      t.timestamps null: false
    end

    add_index :items, [:vendor_type, :vendor_id]
  end
end
