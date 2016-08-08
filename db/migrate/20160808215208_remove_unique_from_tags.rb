class RemoveUniqueFromTags < ActiveRecord::Migration
  def change
    remove_index :tags, [:taggable_id, :taggable_type]
    add_index :tags, [:taggable_id, :taggable_type]
  end
end
