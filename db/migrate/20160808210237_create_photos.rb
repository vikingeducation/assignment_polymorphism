class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.string :source

      t.timestamps null: false
    end
  end
end
