class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :author_id
      t.string :body
      t.integer :reviewable_id
      t.string :reviewable_type

      t.index [:reviewable_id, :reviewable_type]
      t.timestamps null: false
    end
  end
end
