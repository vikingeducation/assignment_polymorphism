class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :author_id
      t.string :tag_text
      t.integer :taggable_id
      t.string :taggable_type

      t.timestamps null: false
    end
    add_index :tags, [:taggable_type, :taggable_id]
  end
end
