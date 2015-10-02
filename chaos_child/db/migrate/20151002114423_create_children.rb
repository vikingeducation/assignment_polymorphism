class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      
      t.string :name
      
      t.integer :parents_id
      t.string :parents_type
      
      t.timestamps null: false
    end
    
    add_index :children, [:parents_type, :parents_id]
  end
end
