class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :price
      t.integer :dishable_id
      t.string :dishable_type
      t.timestamps
    end

    add_index :dishes, [:dishable_type, :dishable_id]
  end
end
