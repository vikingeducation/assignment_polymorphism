class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :operator, :null => false
      t.string :origin, :null => false
      t.string :destination, :null  => false

      t.timestamps null: false
    end
  end
end
