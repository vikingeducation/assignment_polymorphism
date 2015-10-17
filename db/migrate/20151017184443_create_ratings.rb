class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.integer :ratable_id
      t.string :ratable_type

      t.index [:ratable_id, :ratable_type]

      t.timestamps null: false
    end
  end
end
