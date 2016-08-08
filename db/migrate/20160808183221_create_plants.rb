class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plantable_type
      t.integer :plantable_id

      t.timestamps
    end
  end
end
