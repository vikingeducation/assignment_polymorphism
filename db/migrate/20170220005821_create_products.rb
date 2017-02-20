class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string :name
    	t.integer :price
		t.integer :grouping_id
      	t.string :grouping_type

      	t.timestamps
    end
    add_index :products, [:grouping_type, :grouping_id]
  end
end
