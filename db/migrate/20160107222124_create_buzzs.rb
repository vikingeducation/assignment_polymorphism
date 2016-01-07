class CreateBuzzs < ActiveRecord::Migration
  def change
    create_table :buzzs do |t|
      t.string :phrase, null: false

      t.timestamps null: false
    end
  end
end
