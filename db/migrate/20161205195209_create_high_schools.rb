class CreateHighSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :high_schools do |t|
      t.string :name

      t.timestamps
    end
  end
end
