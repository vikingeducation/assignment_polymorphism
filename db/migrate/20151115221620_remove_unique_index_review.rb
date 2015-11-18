class RemoveUniqueIndexReview < ActiveRecord::Migration
  def change
    remove_index :reviews, [:reviewable_type, :reviewable_id]
    add_index :reviews, [:reviewable_type, :reviewable_id]
  end
end
