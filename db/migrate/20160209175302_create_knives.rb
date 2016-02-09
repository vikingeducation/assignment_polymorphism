class CreateKnives < ActiveRecord::Migration
  def change
    create_table :knives do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
