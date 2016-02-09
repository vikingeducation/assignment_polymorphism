class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :reviewable_id
      t.string :reviewable_type

      t.timestamps null: false
    end

    add_index :reviews, 
              [:reviewable_type, :reviewable_id]
  end
end
