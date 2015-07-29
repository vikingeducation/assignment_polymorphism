class CreateChoruses < ActiveRecord::Migration
  def change
    create_table :choruses do |t|
      t.string :line_one, :null => false
      t.string :line_two, :null => false
      t.string :line_three, :null => false
      t.string :line_four

      t.belongs_to :lead_in, :polymorphic => true

      t.timestamps null: false
    end

    add_index :choruses, [:lead_in_type, :lead_in_id]
  end
end
