class CreateBridges < ActiveRecord::Migration
  def change
    create_table :bridges do |t|
      t.string :description, :null => false
      t.string :line_one
      t.string :line_two
      t.string :line_three

      t.timestamps null: false
    end
  end
end
