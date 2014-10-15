class ChangeColumn2 < ActiveRecord::Migration
  def change
    rename_column :sandwiches, :type, :name
  end
end
