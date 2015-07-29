class CreateSolos < ActiveRecord::Migration
  def change
    create_table :solos do |t|
      t.string :instrument, :null => false
      t.integer :length, :null => false

      t.timestamps null: false
    end
  end
end
