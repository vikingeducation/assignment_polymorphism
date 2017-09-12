class RenameColumnsInStudentsTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :commentable_id, :enrollable_id
    rename_column :students, :commentable_type, :enrollable_type
  end
end
