class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.belongs_to :likeable, :polymorphic => true

      t.timestamps null: false
    end
  end
end
