class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_link
      t.string :description
      t.integer :photoable_id
      t.string :photoable_type

      t.timestamps null: false
    end
    add_index :photos, [:photoable_id, :photoable_type]
  end
end
