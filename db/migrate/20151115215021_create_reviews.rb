class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :rating, null: false

      t.string :reviewable_type, null: false
      t.integer :reviewable_id, null: false

      t.timestamps null: false
    end

    add_index :reviews, [:reviewable_type, :reviewable_id], unique: true
  end
end
