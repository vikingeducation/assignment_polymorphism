class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
    	t.string :first_name
    	t.string :last_name

    	t.belongs_to :authored, :polymorphic => true

      t.timestamps null: false
    end

    add_index :authors, [:authored_type, :authored_id] 
  end
end
