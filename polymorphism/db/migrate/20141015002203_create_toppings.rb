class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.integer :toppable_id
      t.string :toppable_type

      t.timestamps
    end
  end
end
