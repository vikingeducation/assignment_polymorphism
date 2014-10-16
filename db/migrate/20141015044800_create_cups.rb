class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|

      t.string :sizing, null: false

      t.timestamps
    end
  end
end
