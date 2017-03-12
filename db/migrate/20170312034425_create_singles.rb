class CreateSingles < ActiveRecord::Migration[5.0]
  def change
    create_table :singles do |t|
      t.string :title
      t.integer :year

      t.timestamps
    end
  end
end
