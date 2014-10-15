class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :reviewable, :polymorphic => true
      t.integer :rating, :null => false

      t.timestamps
    end

    add_index :reviews, [:reviewable_type, :reviewable_id]
  end
end
