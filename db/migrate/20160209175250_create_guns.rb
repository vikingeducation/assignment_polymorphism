class CreateGuns < ActiveRecord::Migration
  def change
    create_table :guns do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
