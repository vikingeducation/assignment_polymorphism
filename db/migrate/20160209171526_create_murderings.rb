class CreateMurderings < ActiveRecord::Migration
  def change
    create_table :murderings do |t|

      t.integer :murderer_id, null: false
      t.integer :victim_id, null: false



      t.timestamps null: false
    end
      add_index :murderings, [:murderer_id, :victim_id], unique: true
  end
end
