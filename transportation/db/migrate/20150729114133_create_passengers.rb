class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name, :null => false

      t.belongs_to :vessel, :polymorphic => true

      t.timestamps null: false
    end

    add_index :passengers, [:vessel_type, :vessel_id]
  end
end
