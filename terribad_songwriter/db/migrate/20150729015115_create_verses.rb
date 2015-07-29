class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :line_one, :null => false
      t.string :line_two, :null => false
      t.string :line_three
      t.string :line_four

      t.timestamps null: false
    end
  end
end
