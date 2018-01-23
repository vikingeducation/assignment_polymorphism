class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :author,          null: false
      t.integer :rating,         null: false
      t.text :body,              null: false
      t.string :reviewable_type, null: false
      t.integer :reviewable_id

      t.timestamps
    end

    add_index :reviews, [:reviewable_type, :reviewable_id]
  end
end
