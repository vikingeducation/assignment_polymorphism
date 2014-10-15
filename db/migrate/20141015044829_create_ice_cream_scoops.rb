class CreateIceCreamScoops < ActiveRecord::Migration
  def change
    create_table :ice_cream_scoops do |t|
      t.string :flavor

      t.integer :container_id
      t.string :container_type

      t.timestamps
    end
    add_index :ice_cream_scoops, [:container_type, :container_id]

  end
end
