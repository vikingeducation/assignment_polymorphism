class CreateSmarts < ActiveRecord::Migration
  def change
    create_table :smarts do |t|
      t.string :phrase, null: false

      t.timestamps null: false
    end
  end
end
