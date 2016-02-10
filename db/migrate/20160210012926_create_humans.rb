class CreateHumans < ActiveRecord::Migration
  def change
    create_table :humans do |t|
      t.string :name
      t.references :humanable, :polymorphic => true

      t.timestamps null: false
    end

    add_index :humans, [:humanable_type, :humanable_id]
  end
end
