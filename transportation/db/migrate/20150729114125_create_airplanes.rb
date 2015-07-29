class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :airline, :null => false
      t.string :origin, :null => false
      t.string :destination, :null => false

      t.timestamps null: false
    end
  end
end
